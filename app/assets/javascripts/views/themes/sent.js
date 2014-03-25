window.Alistpress.Views.ThemesSent = Backbone.View.extend({
  
  template: JST['themes/sent'],
  
  render: function() {
    var renderedContent = this.template({
      themes: this.collection
    });
        
    this.$el.html(renderedContent);
    return this;
  }
});