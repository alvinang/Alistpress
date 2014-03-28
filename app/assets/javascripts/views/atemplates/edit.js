window.Alistpress.Views.AtemplateEdit = Backbone.View.extend({
  className: 'row',
  
  template: JST['atemplates/edit'],
  
  events: {
    "submit form": "updateTemplate",
    "click button.delete-template": "deleteTemplate"
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
    this.addTextEditor();
    return this;
  },
  
  updateTemplate: function(event) {
    event.preventDefault();
    
    var params = $(event.currentTarget).serializeJSON().atemplate;
    params.user_id = Alistpress.current_user_id;
    params.id = this.model.id;
    
    var template = new Alistpress.Models.Atemplate(params);  
    template.save({}, {
      success: function(){
        Alistpress.atemplates.add(template, {merge: true});        
        Backbone.history.navigate("#/atemplates/", { trigger: true });        
      },
      error: function(){
        alert("Save unsuccessful, please contact admin");
      }
    });
  },
    
  deleteTemplate: function(event) {
    event.preventDefault();
    
    this.model.destroy({
      success: function() {
        Backbone.history.navigate("#/atemplates", { trigger: true });        
      }, 
      error: function() {
        alertify.error("Delete unsuccessful, please contact admin");
      }
    });    
  }  
});