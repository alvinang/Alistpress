window.Alistpress.Views.UserProfile = Backbone.View.extend({
  
  template: JST['home/user_profile'],
  
  render: function() {
    var renderedContent = this.template({
      
    });    
    
    this.$el.html(renderedContent);
    return this;
  }
  
});
