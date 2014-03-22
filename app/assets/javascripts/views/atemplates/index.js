window.Alistpress.Views.AtemplatesIndex = Backbone.View.extend({
  className: 'row',
  
  template: JST['atemplates/index'],
  
  initialize: function() {
    this.listenTo(Alistpress.atemplates, "sync add remove change", this.render);
    this.listenTo(Alistpress.themes, "sync add remove change request", this.render);
  },
  
  events: {
    "click button.index-delete-theme": "deleteTheme"
  },

  render: function() {
    var renderedContent = this.template({
      atemplates: this.collection    
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
        Backbone.history.navigate("", { trigger: true });            
      },
      error: function() {
        alert('Fail to delete');
      }
    });
  }
  
});