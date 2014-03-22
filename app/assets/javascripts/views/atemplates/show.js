window.Alistpress.Views.AtemplateShow = Backbone.View.extend({
  tagName: 'row',
  
  template: JST['atemplates/show'],
  
  events: {
    "submit form": "saveTheme",
    "click button.send-theme": "sendTheme"
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
    this._newTheme(params);
  },
  
  sendTheme: function(event) {
    event.preventDefault();
    var params = $('form').serializeJSON().theme;
    params.sent = new Boolean(true)
    this._newTheme(params);      
  },
  
  _newTheme: function(params) {    
    params.user_id = Alistpress.current_user_id;
    params.template_id = this.model.id;
    
    var template = new Alistpress.Models.Theme(params);  
          
    template.save({}, {
      success: function(){
        Alistpress.themes.add(template);             
        Backbone.history.navigate("", { trigger: true });        
      },
      error: function(){
        // need to set sent to false again..
        alert("didn't send or save.....");
      }
    });
  }
  
});