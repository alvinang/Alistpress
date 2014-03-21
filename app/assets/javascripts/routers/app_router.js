window.Alistpress.Routers.AppRouters = Backbone.Router.extend({
  
  initialize: function(options) {
    this.$rootEl = options.$rootEl;
  },
  
  routes: {
    "": "index",
    "atemplates/new"      : "newAtemplate",
    "atemplates/:id"      : "showAtemplate",
    "atemplates/:id/edit" : "editAtemplate",
    //show page for themes to see sent items
    "themes/:id/"         : "showTheme",
    "themes/:id/edit"     : "editTheme"   
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
  
  showTheme: function(id) {
    var showTheme = new Alistpress.Views.ThemeShow({
      model: Alistpress.themes.get(id)
    });
    
    this._swapView(showTheme);
  },
  
  editTheme: function(id) {
    var editTheme = new Alistpress.Views.ThemeEdit({
      model: Alistpress.themes.get(id)
    });
    
    this._swapView(editTheme);
  },
  
  _swapView: function(view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }
  
});