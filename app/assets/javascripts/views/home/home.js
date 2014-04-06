window.Alistpress.Views.DashboardHome = Backbone.View.extend({
  
  intialize: function () {
    this.listenTo(Alistpress.todos, 'change add remove sync', this.render);
  },
  
  template: JST['home/home'],
  
  events: {
    "click #sendEmail"            : "sendEmail",
    "submit #todo-items"          : "addTodo" ,
    "click .premium-store"        : "modalComingSoon",
    "change .todo-task-checkbox"  : "removeTaskCheck",
    "click .todo-task-trash-icon" : "removeTaskTrash"   
  },
  
  addToolbar: function(){
    this.$el.find('#wysihtml5').each(function(i, elem) {
      $(elem).wysihtml5({
      	"font-styles": true,
      	"emphasis": true,
      	"lists": true, 
      	"html": true, 
      	"link": true,
      	"image": true,
      	"color": false
      }); 
    });
  },
  
  modalComingSoon: function(event) {
    event.preventDefault();
    alertify.alert("Premium templates coming soon...");
  },
  
  sortableIndexEmail: function() {
    this.$el.find(".connectedSortable").sortable({
        placeholder: "sort-highlight",
        connectWith: ".connectedSortable",
        handle: ".box-header, .nav-tabs",
        forcePlaceholderSize: true,
        zIndex: 999999
    }).disableSelection();        
  },
  
  sortableIndexTodo: function() {
    this.$el.find(".todo-list").sortable({
        placeholder: "sort-highlight",
        handle: ".handle",
        forcePlaceholderSize: true,
        zIndex: 999999
    }).disableSelection();
  },  
  
  addButtonLoading: function() {
    this.$el.find('#sendEmail').click(function () {
       var btn = $(this);
       btn.button('loading');
     });
  },
  
  addTodo: function(event) {
    event.preventDefault();
    var that = this;
    var params = $(event.currentTarget).serializeJSON().todo;
    params.user_id = Alistpress.current_user.id;
    params.position = Alistpress.todos.length;
    params.completed = new Boolean(false);
    var newTodo = new Alistpress.Models.Todo(params);
    
    newTodo.save({}, {
      success: function() {
        Alistpress.todos.add(newTodo);
        that.render();
      }
    });    
  },
  
  removeTaskCheck: function(event) {
    event.preventDefault();
    
    if ($(event.currentTarget).is(':checked')) {
      this._removeTask(event, this);
    }    
  },
  
  removeTaskTrash: function(event) {
    event.preventDefault();    
    this._removeTask(event, this);    
  },
  
  _removeTask: function(event, that) { 
    var taskId = $(event.currentTarget).data('todo-id');
    var todoModel = Alistpress.todos.get(taskId);
       
    todoModel.destroy({
      success: function() {
        that.render();
      },
      error: function() {
        alertify.error("Todo Error - please contact admin");  
      }
    })
  },
  
  render: function() {
    var renderedContent = this.template({
      atemplates: Alistpress.atemplates,
      sentThemes: Alistpress.themes.countSent(),
      todos: Alistpress.todos    
    });    
    
    this.$el.html(renderedContent);
    this.addToolbar();
    this.sortableIndexEmail();
    this.sortableIndexTodo();
    
    return this;
  },
  
  _modalPopup: function(text) {
    alertify.success(text);
  },
  
  sendEmail: function(event) {
    event.preventDefault();
    var params = $('form').serializeJSON().theme;
    
    this._sendEmail(params);      
  },
  
  _sendEmail: function(params) {   
    var that = this;
    params.sent = new Boolean(true);
    params.sender_email = Alistpress.current_user.email; 
    params.user_id = Alistpress.current_user.id;
    
    var template = new Alistpress.Models.Theme(params);  
    template.save({}, {
      success: function(){
        Alistpress.themes.add(template);             
        Backbone.history.navigate("", { trigger: true });  
        that._modalPopup("Email sent!");
      },
      error: function(){
        // need to set sent to false again..
        alertify.error("didn't send from home page");
      }
    });
  }
  
});
