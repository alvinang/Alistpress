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

