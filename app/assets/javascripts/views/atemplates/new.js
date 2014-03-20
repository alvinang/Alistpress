window.Alistpress.Views.AtemplateNew = Backbone.View.extend({
  tagName: 'form',
  className: 'form-horizontal create-atemplate',
  
  events:{
    "submit .create-atemplate": "createAtemplate"
  },
  
  template: JST['atemplates/new'],
  
  createAtemplate: function(event) {
    event.preventDefault();
    var content = $('.create-atemplate').serializeJSON()
    debugger
  },
  
  render: function() {
    var renderedContent = this.template({
      atemplate: this.model
    });
    
    this.$el.html(renderedContent);
    return this;
  }
});