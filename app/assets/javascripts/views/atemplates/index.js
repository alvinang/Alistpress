window.Alistpress.Views.AtemplatesIndex = Backbone.View.extend({
  className: 'row',
  
  template: JST['atemplates/index'],

  render: function() {
    var renderedContent = this.template({
      atemplates: this.collection
    });
    
    this.$el.html(renderedContent);
    return this;
  }
  
});