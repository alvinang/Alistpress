window.Alistpress.Views.DashboardHome = Backbone.View.extend({
  
  template: JST['home/home'],
  
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
  }
  
});
