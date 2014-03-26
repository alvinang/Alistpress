window.Alistpress.Views.AtemplateEdit = Backbone.View.extend({
  className: 'row',
  
  template: JST['atemplates/edit'],
  
  events: {
    "submit form": "updateTemplate",
    "click button.delete-template": "deleteTemplate"
  },
  
  textEditor: function() {
    $('.home-email').each(function(i, elem) {
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
    
    this.$el.html(this.textEditor());
    this.$el.html(renderedContent);
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
        Backbone.history.navigate("#/atemplates", { trigger: true });        
      },
      error: function(){
        alert("didn't save.....");
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
        alert("Delete unsuccessful, please contact admin");
      }
    });    
  }  
});