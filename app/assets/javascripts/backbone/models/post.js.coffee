class Bblog.Models.Post extends Backbone.Model
  paramRoot: 'post'

  # defaults:

class Bblog.Collections.PostsCollection extends Backbone.Collection
  model: Bblog.Models.Post
  url: '/posts'
