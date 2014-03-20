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
    var params = $(event.currentTarget).serializeJSON().atemplate;
    params.user_id = Alistpress.current_user_id;
    var newAtemplate = new Alistpress.Models.Atemplate(params);
    
    newAtemplate.save({}, {
      success: function() {
        Alistpress.atemplates.add(newAtemplate);
        Backbone.history.navigate("", { trigger: true });
      }, 
      error: function() {
        alert("didn't save yo");
      }
    });
  }
  
});