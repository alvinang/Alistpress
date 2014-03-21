window.Alistpress.Views.AtemplatesIndex = Backbone.View.extend({
  className: 'row',
  
  template: JST['atemplates/index'],
  
  initialize: function() {
    this.listenTo(Alistpress.themes, "sync", this.render);
  },

  render: function() {
    var renderedContent = this.template({
      atemplates: this.collection,
      themes: Alistpress.themes
    });
    
    this.$el.html(renderedContent);
    return this;
  }
  
});