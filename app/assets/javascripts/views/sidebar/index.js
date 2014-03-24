window.Alistpress.Views.SidebarIndex = Backbone.View.extend({
  
  template: JST['sidebar/index'],
  
  render: function() {
    var renderedContent = this.template({});
    this.$el.html(renderedContent);
    return this;
  }
  
});