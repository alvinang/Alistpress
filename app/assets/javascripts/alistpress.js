window.Alistpress = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $('#content');   
     
    new Alistpress.Routers.AppRouters({
      $rootEl: $rootEl  
    });
    
    Backbone.history.start();        
  }
};

$(document).ready(function(){
  Alistpress.atemplates = new Alistpress.Collections.Atemplates();
  
  Alistpress.atemplates.fetch({
    success: function() {
      Alistpress.initialize();    
    }
  });
});
