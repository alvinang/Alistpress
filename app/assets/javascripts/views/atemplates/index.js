window.Alistpress.Views.AtemplatesIndex = Backbone.View.extend({
  
  template: JST['atemplates/index'],

  render: function() {
    var renderedContent = this.template({
      atemplates: this.collection
    });
    
    this.$el.html(renderedContent);
    return this;
  }
  
});