window.Alistpress.Views.AtemplateNew = Backbone.View.extend({
  
  template: JST['atemplates/new'],
    
  events:{
    "submit form": "submit"
  },  
  
  addTextEditorTitle: function() {
    this.$el.find('#wysihtml5-title').each(function(i, elem) {
      $(elem).wysihtml5({
      	"font-styles": false,
      	"emphasis": false,
      	"lists": false, 
      	"html": false, 
      	"link": false,
      	"image": false,
      	"color": false
      }); 
    });
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
    
    this.$el.html(renderedContent);
    this.addTextEditorTitle();
    this.addTextEditor();
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