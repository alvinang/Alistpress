window.Alistpress.Views.AtemplateShow = Backbone.View.extend({
  className: 'row',
  
  template: JST['atemplates/show'],
  
  events: {
    "submit form": "saveTheme",
    "click button.send-theme": "sendTheme"
  },
  
  addTextEditorTitle: function() {
    var that = this;
    this.$el.find('#wysihtml5-title').each(function(i, elem) {
      $(elem).wysihtml5({
      	"font-styles": false,
      	"emphasis": false,
      	"lists": false, 
      	"html": false, 
      	"link": false,
      	"image": false,
      	"color": false, 
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

    // Iterate over elements looking for a match {{.*}}
    var reg = new RegExp(/(\{\{.*?\}\})/);
    var i;
    for (i = 0; i < numChildren; i++) {  
      var child = children[i];
      // ISSUE: innerHTML returns <br> tags but issue..
      // innerText does not work with nested tags (i.e. <ul>, <li>)
      var sentence = child.innerText;
      
      var match = reg.exec(sentence);
      if (!match) {
        continue;
      }
      
      // Find parent node that contains match      
      var nodeWithMatch = $(child).find(":contains(" + match[0] + ")")[0];
      
      if (!nodeWithMatch) {
        nodeWithMatch = child;
      }

      // Find text node that contains match
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
        //node.nodeValue is not a string
        //removing this would work until it reaches oen with subnodes
      });    

      var range = document.createRange();
      range.setStart(nodeToSelect, match.index);
      range.setEnd(nodeToSelect, match.index + match[0].length);

      var selection = document.getSelection();
      selection.removeAllRanges();
      selection.addRange(range);  
      break;
      // var numNodes = child.childNodes.length;
//       var j;
//       for (j = 0; j < numNodes; j++) {
//         var thisNode = child.childNodes[j];
//         var range = document.createRange();
//         range.setStart(thisNode, match.index);
//         range.setEnd(thisNode, match.index + match[0].length);
//   
//         var selection = document.getSelection();
//         selection.removeAllRanges();
//         selection.addRange(range);  
//         return;
//       }                                
    }                              
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
        debugger     
        Backbone.history.navigate("#/atemplates", { trigger: true });        
      },
      error: function(){
        // need to set sent to false again..
        alertify.error("didn't send or save.....");
      }
    });
  }
  
});