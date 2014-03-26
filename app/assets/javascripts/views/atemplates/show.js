window.Alistpress.Views.AtemplateShow = Backbone.View.extend({
  className: 'row',
  
  template: JST['atemplates/show'],
  
  events: {
    "submit form": "saveTheme",
    "click button.send-theme": "sendTheme"
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
  
  addTextEditorContent: function() {
    this.$el.find('#wysihtml5').each(function(i, elem) {
      $(elem).wysihtml5({
      	"font-styles": true,
      	"emphasis": true,
      	"lists": true, 
      	"html": true, 
      	"link": true,
      	"image": true,
      	"color": false,
        "events": {
          "focus": function() {
            $('.wysihtml5-sandbox').contents().find('body').on("keydown", function(event) {          
              var numLoops = _.size($(this).children());                        
              var keyCode = event.keyCode;
            
              if (keyCode == 9){
                event.preventDefault(); 
                var foundText = false;

                for (var i = 0; i < numLoops; i++) {  
                  if (foundText) { break; }
                                               
                  var content = $(this).children()[i];           
                  var sentence = content.innerHTML;                
                  var _match;
                  var reg = new RegExp(/\{{(.*?)\}}/);
                                
                  var allNodes = content.childNodes.length;
                  var thisNode;
                
                  if (match = reg.exec(sentence)) { _match = match; }               
                
                  for (var j = 0; j < allNodes; j++) {
                    if (_match) {
                      thisNode = content.childNodes[j];
                      var range = document.createRange();
                      debugger
                      range.setStart(thisNode, _match.index);
                      range.setEnd(thisNode, _match.index + _match[0].length);
                
                      var selection = document.getSelection();
                      selection.removeAllRanges();
                      selection.addRange(range);  
                      foundText = true;  
                      break;              
                    }                 
                  }                                
                }                         
              }      
           });                               
          }
        } 
      }); 
    });
  },
  
  addButtonLoading: function() {
    this.$el.find('.send-theme').click(function () {
       var btn = $(this)
       btn.button('loading')
     });
  },
  
  render: function() {
    var renderedContent = this.template({
      atemplate: this.model
    });
    
    this.$el.html(renderedContent);
    this.addTextEditorTitle();
    this.addTextEditorContent();
    this.addButtonLoading();
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
    params.sent = new Boolean(true);
    this._newTheme(params);      
  },
  
  _newTheme: function(params) {    
    params.user_id = Alistpress.current_user_id;
    params.template_id = this.model.id;
    
    var template = new Alistpress.Models.Theme(params);  
    template.save({}, {
      success: function(){
        Alistpress.themes.add(template);             
        Backbone.history.navigate("#/atemplates", { trigger: true });        
      },
      error: function(){
        // need to set sent to false again..
        alert("didn't send or save.....");
      }
    });
  }
  
});