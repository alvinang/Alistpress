window.Alistpress.Views.AtemplateShow = Backbone.View.extend({
  tagName: 'row',
  
  template: JST['atemplates/show'],
  
  events: {
    "submit form": "saveTheme"
  },
  
  render: function() {
    var renderedContent = this.template({
      atemplate: this.model
    });
    
    this.$el.html(renderedContent);
    return this;
  },
  
  saveTheme: function(event) {
    event.preventDefault();
    var params = $(event.currentTarget).serializeJSON().theme;
    params.user_id = Alistpress.current_user_id;
    params.template_id = this.model.id;
    params.sent = new Boolean(true)
    
    var template = new Alistpress.Models.Theme(params);
    debugger
    
    template.save({}, {
      success: function(){
        Alistpress.themes.add(template);        
        Backbone.history.navigate("", { trigger: true });        
      },
      error: function(){
        alert("didn't save.....");
      }
    });
  }
  
});