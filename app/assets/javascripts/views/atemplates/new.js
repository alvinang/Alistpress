window.Alistpress.Views.AtemplateNew = Backbone.View.extend({
  
  template: JST['atemplates/new'],
    
  events:{
    "submit form": "submit"
  },  
  
  addTextEditor: function() {
    this.$el.find('#wysihtml5').each(function(i, elem) {
      $(elem).wysihtml5({
      	"font-styles": true,
      	"emphasis": true,
      	"lists": true, 
      	"html": true, 
      	"link": true,
      	"image": true,
      	"color": false
      }); 
    });
  },
  
  render: function() {
    var renderedContent = this.template({
      atemplate: this.model
    });
    
    this.addtextEditor;
    this.$el.html(renderedContent);
    return this;
  },
  
  submit: function(event) {
    event.preventDefault();
    
    var params = $(event.currentTarget).serializeJSON().atemplate;
    params.user_id = Alistpress.current_user_id;
    var template = new Alistpress.Models.Atemplate(params);
    
    template.save({}, {
      success: function() {
        Alistpress.atemplates.add(template);
        Backbone.history.navigate("#/atemplates", { trigger: true });
      }
    });
  }
  
});