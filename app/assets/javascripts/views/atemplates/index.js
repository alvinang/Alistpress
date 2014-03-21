window.Alistpress.Views.AtemplatesIndex = Backbone.View.extend({
  className: 'row',
  
  template: JST['atemplates/index'],
  
  events: {
    "click button.delete-template": "deleteTemplate"
  },

  render: function() {
    var renderedContent = this.template({
      atemplates: this.collection
    });
    
    this.$el.html(renderedContent);
    return this;
  },
  
  deleteTemplate: function(event) {
    event.preventDefault();
    
    var template_id = $(event.currentTarget).data('template-id');
    var model = Alistpress.atemplates.get(template_id);
    model.destroy();    
    this.render();
  }
  
});