window.Alistpress.Views.ThemeNew = Backbone.View.extend({
  tagName: 'row',  
  template: JST['themes/new'],
    
  //use this as a blank page so users can drag & drop if they want to  
  render: function() {
    var renderedContent = this.template({
      // will be a new model later on, for dropping capability or might be a .get for atemplates
      theme: this.model
    });
    
    this.$el.html(renderedContent);
    return this;
  }
  
})
