window.Alistpress.Views.DashboardHome = Backbone.View.extend({
  
  template: JST['home/home'],
  
  textEditor: function() {
    $('.home-email').each(function(i, elem) {
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
    $(".connectedSortable").sortable({
        placeholder: "sort-highlight",
        connectWith: ".connectedSortable",
        handle: ".box-header, .nav-tabs",
        forcePlaceholderSize: true,
        zIndex: 999999
    }).disableSelection();        
  },
  
  sortableIndexTodo: function() {
    $(".todo-list").sortable({
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
    
    this.$el.html(this.textEditor());
    this.$el.html(this.sortableIndexEmail());
    this.$el.html(this.sortableIndexTodo());
    this.$el.html(renderedContent);
    
    return this;
  }
  
});
