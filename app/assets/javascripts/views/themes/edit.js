window.Alistpress.Views.ThemeEdit = Backbone.View.extend({
  
  template: JST['themes/edit'],
  
  events: {
    "submit form": "saveTheme",
    "click button.send-theme": "sendTheme"
  },
  
  render: function() {
    var renderedContent = this.template({
      theme: this.model
    });
    
    this.$el.html(renderedContent);
    return this;
  },
  
  saveTheme: function(event) {
    event.preventDefault();
    var params = $(event.currentTarget).serializeJSON().theme;
    this._existingTheme(params);
  },
  
  sendTheme: function(event) {
    event.preventDefault();
    var params = $('form').serializeJSON().theme;
    params.sent = new Boolean(true)
    this._existingTheme(params);      
  },
  
  _existingTheme: function(params) {    
    var model = Alistpress.themes.get(this.model.id)
            
    model.save(params, {
      success: function(savedModel){
        Alistpress.themes.add(savedModel, { merge: true });          
        Backbone.history.navigate("/themes", { trigger: true });        
      },
      error: function(){
        alert("didn't save.....");
      }
    });
  }
});
