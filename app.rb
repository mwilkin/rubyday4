require('sinatra')
require('sinatra/reloader')
require('./lib/makechange.rb')

also_reload('lib/**/*.rb')

get('/') do
  @page_title="home"
  erb(:index)
end

get('/makechange') do
  @page_title = "makechange"
  erb(:makechange)
end

post('/makechange') do
  @page_title = "makechange"
  @change = params.fetch('change').to_i.makechange()
  erb(:makechange)
end
