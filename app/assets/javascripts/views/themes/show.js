window.Alistpress.Views.ThemeShow = Backbone.View.extend({
  
  template: JST['themes/show'],
  
  render: function() {
    debugger
    var renderedContent = this.template({
      theme: this.model
    });
    
    this.$el.html(renderedContent);
    return this;
  }
  
})
