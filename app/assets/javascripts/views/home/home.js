window.Alistpress.Views.DashboardHome = Backbone.View.extend({
  // initialize: function (opts) {
  //   this.toDoListView = new ToDoListView({
  //     collection: opts.toDos;
  //   })
  // },
  
  intialize: function () {
    this.listenTo(Alistpress.todos, 'change add remove sync', this.render);
  },
  
  template: JST['home/home'],
  
  events: {
    "click #sendEmail"    : "sendEmail",
    "submit #todo-items"  : "addTodo" ,
    "click .premium-store": "modalComingSoon"
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
    params.user_id = Alistpress.current_user_id;
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
    params.sender_email = Alistpress.current_user_email; 
    params.user_id = Alistpress.current_user_id;
    
    var template = new Alistpress.Models.Theme(params);  
    template.save({}, {
      success: function(){
        Alistpress.themes.add(template);             
        Backbone.history.navigate("#/", { trigger: true });  
        that._modalPopup("Email sent!");
      },
      error: function(){
        // need to set sent to false again..
        alert("didn't send from home page");
      }
    });
  }
  
});
