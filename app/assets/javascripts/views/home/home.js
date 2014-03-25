window.Alistpress.Views.DashboardHome = Backbone.View.extend({
  
  template: JST['home/home'],
  
  render: function() {
    var renderedContent = this.template({
      atemplates: this.collection
      // sentThemes: Alistpress.Collections.Themes.countSent()
    });    
    
    this.$el.html(renderedContent);
    return this;
  }
  
});
