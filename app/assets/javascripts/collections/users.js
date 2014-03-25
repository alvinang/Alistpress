window.Alistpress.Collections.Themes = Backbone.Collection.extend({
  model: Alistpress.Models.Theme,
  url: '/api/themes'
});