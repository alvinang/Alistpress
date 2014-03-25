window.Alistpress.Views.DashboardHome = Backbone.View.extend({
  
  template: JST['home/home'],
  
  render: function() {
    debugger
    var renderedContent = this.template({
      atemplates: this.collection,
      sentThemes: Alistpress.themes.countSent()
    });    
    
    this.$el.html(renderedContent);
    return this;
  }
  
});
