window.Alistpress.Views.AtemplateNew = Backbone.View.extend({
  
  template: JST['atemplates/new'],
    
  events:{
    "submit form": "submit"
  },  
  
  render: function() {
    var renderedContent = this.template({
      atemplate: this.model
    });
    
    this.$el.html(renderedContent);
    return this;
  },
  
  submit: function(event) {
    event.preventDefault();
    var params = $(event.currentTarget).serializeJSON();
    debugger
  }
  
});