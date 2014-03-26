window.Alistpress.Views.DashboardHome = Backbone.View.extend({
  
  template: JST['home/home'],
  
  events: {
    "click #sendEmail": "sendEmail"
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
  
  render: function() {
    var renderedContent = this.template({
      atemplates: this.collection,
      sentThemes: Alistpress.themes.countSent()
    });    
    
    this.$el.html(renderedContent);
    this.addToolbar();
    this.sortableIndexEmail();
    this.sortableIndexTodo();
    
    return this;
  },
  
  sendEmail: function(event) {
    event.preventDefault();
    var params = $('form').serializeJSON().theme;
    
    this._sendEmail(params);      
  },
  
  _sendEmail: function(params) {   
    params.sent = new Boolean(true);
    params.sender_email = Alistpress.current_user_email; 
    params.user_id = Alistpress.current_user_id;
    
    var template = new Alistpress.Models.Theme(params);  
    template.save({}, {
      success: function(){
        Alistpress.themes.add(template);             
        Backbone.history.navigate("#/", { trigger: true });        
      },
      error: function(){
        // need to set sent to false again..
        alert("didn't send from home page");
      }
    });
  }
  
});
