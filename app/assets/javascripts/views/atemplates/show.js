window.Alistpress.Views.AtemplateShow = Backbone.View.extend({
  
  template: JST['atemplates/show'],
  
  events: {
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
    var template = new Alistpress.Models.Atemplate(params);
    
    template.save({}, {
      success: function(){
        Alistpress.atemplates.add(template);        
        Backbone.history.navigate("", { trigger: true });        
      },
      error: function(){
        alert("didn't save.....");
      }
    });
  }
  
});