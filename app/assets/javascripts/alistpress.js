window.Alistpress = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $('content');    
    new Alistpress.Routers.Templates({
      $rootEl: $rootEl  
    });
    
    alert('yo');
  }
};

$(document).ready(function(){
  Alistpress.templates = new Alistpress.Collections.Templates();
  Alistpress.templates.fetch({
    success: function() {
      Alistpress.initialize();      
    }
  });
});
