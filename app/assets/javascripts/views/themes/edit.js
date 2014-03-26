window.Alistpress.Views.ThemeEdit = Backbone.View.extend({
  
  template: JST['themes/edit'],
  
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
       var btn = $(this);
       btn.button('loading');
     });
  },
  
  render: function() {
    var renderedContent = this.template({
      theme: this.model
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
