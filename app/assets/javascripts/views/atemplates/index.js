window.Alistpress.Views.Atemplates = Backbone.View.extend({
  
  template: JST['atemplates/index'],
  
  render: function() {
    var renderedContent = this.template({
      template: this.collection
    });
    
    this.$el.html(renderedContent);
    return this;
  }
  
});