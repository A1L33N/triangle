require('sinatra')
require('pry')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get ('/triangle') do
  length = params.fetch('length')
  width = params.fetch('width')
  height = params.fetch('height')
  @triangle = Triangle.new(length, width, height)
  erb(:triangle)
end
