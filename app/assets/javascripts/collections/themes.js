window.Alistpress.Collections.Themes = Backbone.Collection.extend({
  model: Alistpress.Models.Theme,
  url: '/api/themes',
  
  countSent: function() {
    if (_.size(Alistpress.themes.models) > 0) {
      var sentThemes = _.filter(Alistpress.themes.models, function(t) { return t.get('sent') === true; });
      return _.size(sentThemes);      
    } else {
      return 0
    }
  }  
});