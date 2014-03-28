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
    var that = this;
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
          "focus": function () {            
            $('.wysihtml5-sandbox').contents().find('body').off("keydown");
            $('.wysihtml5-sandbox').contents().find('body').on("keydown", that.handleTab);
          }
        } 
      }); 
    });
  },
  
  handleTab: function(event) {
    // Tab key
    var keyCode = event.keyCode;
    if (keyCode != 9) {
      return;
    }
    event.preventDefault();
    
    var children = $(this).children();
    var numChildren = _.size(children);
    var foundText = false;
    var reg = new RegExp(/(\{\{.*?\}\})/);
    var i;
    
    for (i = 0; i < numChildren; i++) {  
      var child = children[i];
      var sentence = child.innerText;
      
      var match = reg.exec(sentence);
      if (!match) {
        continue;
      }
      
      var nodeWithMatch = $(child).find(":contains(" + match[0] + ")")[0];
      
      if (!nodeWithMatch) { nodeWithMatch = child; }
      var nodeChildren = nodeWithMatch.childNodes;
      var nodeToSelect;
      
      _(nodeChildren).forEach(function (node) {          
        if (node.nodeType === 3 && (node.nodeValue.search("{{") !== -1)) {
          return nodeToSelect = node;
        } else {
          
          _(node.childNodes).forEach(function (innerNode) {            
            if (innerNode.nodeType === 3 && (innerNode.nodeValue.search("{{") !== -1)) {
              return nodeToSelect = innerNode;
            }
          });
        }
      });    

      var range = document.createRange();
      range.setStart(nodeToSelect, match.index);
      range.setEnd(nodeToSelect, match.index + match[0].length);

      var selection = document.getSelection();
      selection.removeAllRanges();
      selection.addRange(range);  
      break;          
    }                              
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
        Backbone.history.navigate("#/themes", { trigger: true });        
      },
      error: function(){
        alertify.error("Email was not save, please contact admin");
      }
    });
  }
});
