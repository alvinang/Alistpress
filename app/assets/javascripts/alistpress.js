window.Alistpress = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $('#content');   
    var $sidebarEl = $('.sidebar');
     
    new Alistpress.Routers.AppRouters({
      $rootEl: $rootEl  
    });
    
    this.sidebarView = new Alistpress.Views.SidebarIndex({});    
    $sidebarEl.html(this.sidebarView.render().$el);    
    
    Backbone.history.start();        
  }
};

