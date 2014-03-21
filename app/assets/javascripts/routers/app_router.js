window.Alistpress.Routers.AppRouters = Backbone.Router.extend({
  
  initialize: function(options) {
    this.$rootEl = options.$rootEl;
  },
  
  routes: {
    "": "index",
    "atemplates/new"      : "newAtemplate",
    "atemplates/:id"      : "showAtemplate",
    "atemplates/:id/edit" : "editAtemplate"  
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
  
  showAtemplate: function(id) {
    var showAtemplate = new Alistpress.Views.AtemplateShow({
      model: Alistpress.atemplates.get(id)
    });
    
    this._swapView(showAtemplate);
  },
  
  editAtemplate: function(id) {
    var editAtemplate = new Alistpress.Views.AtemplateEdit({
      model: Alistpress.atemplates.get(id)
    });
    
    this._swapView(editAtemplate);
  },
  
  _swapView: function(view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }
  
});