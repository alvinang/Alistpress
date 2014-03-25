window.Alistpress.Views.User = Backbone.View.extend({
  
  template: JST['home/user'],
  
  render: function() {
    var renderedContent = this.template({
      
    });    
    
    this.$el.html(renderedContent);
    return this;
  }
  
});
