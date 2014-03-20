window.Alistpress.Routers.AppRouters = Backbone.Router.extend({
  
  initialize: function(options) {
    this.$rootEl = options.$rootEl;
  },
  
  routes: {
    "": "index",
    "atemplates/new": "newAtemplate"
  },
  
  index: function() {
    var indexAtemplate = new Alistpress.Views.AtemplatesIndex({
      collection: Alistpress.atemplates
    });
    
    this._swapView(indexAtemplate);
  },
  
  newAtemplate: function() {
    var newAtemplate = new Alistpress.Views.AtemplateNew({
      model: new Alistpress.Models.Atemplate()
    });    
    
    this._swapView(newAtemplate);
  },
  
  _swapView: function(view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }
  
});