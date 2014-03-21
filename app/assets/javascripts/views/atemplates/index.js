window.Alistpress.Views.AtemplatesIndex = Backbone.View.extend({
  className: 'row',
  
  template: JST['atemplates/index'],
  
  initialize: function() {
    this.listenTo(Alistpress.themes, "sync add remove change", this.render);
  },
  
  event: {
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
    var model = Alistpress.themes.get(id);
    Alistpress.themes.remove(this.model);
    this.model.destroy();
    Backbone.history.navigate("", { trigger: true });
    debugger
  }
  
});