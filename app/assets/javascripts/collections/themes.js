window.Alistpress.Collections.Themes = Backbone.Collection.extend({
  model: Alistpress.Models.Theme,
  url: '/api/themes',
  
  countSent: function() {
    if (_.size(Alistpress.themes.models) > 0) {
      var sentThemes = _.filter(Alistpress.themes.models, function(t) { return t.get('sent') === true; });
      return _.size(sentThemes);      
    } else {
      return 0;
    }
  },
  
  getOrFetch: function (id, callback) {
    var model;
    callback = callback || (function () {});
    
    if (this.get(id)) {
      model = this.get(id);
      model.fetch({success: callback});
    } else {
      model = new this.model({id: id});
      var that = this;
      model.fetch({success: function (model) {
        that.add(model);
        callback(model);
      }})
    }
    
    return model;
  }
    
});