window.Alistpress = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $('container');   
     
    new Alistpress.Routers.Atemplates({
      $rootEl: $rootEl  
    });
    
    alert('yo');    
    Backbone.history.start();
        
  }
};

$(document).ready(function(){
  Alistpress.atemplates = new Alistpress.Collections.Atemplates();
  
  Alistpress.atemplates.fetch({
    success: function() {
      alert('works?');
      Alistpress.initialize();      
    },
    error: function() {
      alert("did not initialize!");
    }
  });
});
