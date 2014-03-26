window.Alistpress.Views.ThemesSent = Backbone.View.extend({
  
  template: JST['themes/sent'],
  
  initialize: function() {
    this.listenTo(Alistpress.themes, 'sync add remove change', this.render)
  },
  
  render: function() {
    var renderedContent = this.template({
      themes: this.collection
    });
        
    this.$el.html(renderedContent);
    return this;
  }
});