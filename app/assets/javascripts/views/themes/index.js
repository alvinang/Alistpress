window.Alistpress.Views.ThemesIndex = Backbone.View.extend({
  
  template: JST['themes/index'],
  
  render: function() {
    var renderedContent = this.template({
      themes: this.collection
    });
        
    this.$el.html(renderedContent);
    return this;
  }
});