window.Alistpress.Views.ThemesIndex = Backbone.View.extend({
  
  template: JST['themes/index'],
  
  initialize: function() {
    this.listenTo(Alistpress.themes, 'sync add remove change', this.render)
  },
  
  // Need to implement delete!
  events: {
    "click button.index-delete-theme": "deleteTheme"
  },
  
  render: function() {
    var renderedContent = this.template({
      themes: this.collection
    });
        
    this.$el.html(renderedContent);
    return this;
  },
  
  deleteTheme: function(event) {    
    event.preventDefault();    
    var theme_id = $(event.currentTarget).data('id');
    var model = Alistpress.themes.get(theme_id);
    
    model.destroy({
      success: function() {
        Backbone.history.navigate("#/themes/", { trigger: true });            
      },
      error: function() {
        alertify.error('Fail to delete, please contact admin');
      }
    });
  }
  
});