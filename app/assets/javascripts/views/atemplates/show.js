window.Alistpress.Views.AtemplateShow = Backbone.View.extend({
  
  template: JST['atemplates/show'],
  
  render: function() {
    var renderedContent = this.template({
      atemplate: this.model
    });
    
    this.$el.html(renderedContent);
    return this;
  }
  
});