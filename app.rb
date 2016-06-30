require('sinatra')
require('sinatra/reloader')
require('./lib/makechange.rb')
require('./lib/anagram.rb')
require('./lib/allergies.rb')

also_reload('lib/**/*.rb')

get('/') do
  @page_title="home"
  erb(:index)
end
get('/anagram') do
  @page_title="anagram"
  erb(:anagram)
end
post('/anagram') do
  @page_title = "anagram"
  @result = params.fetch('word').anagram(params.fetch('word_list').split(" "))
  erb(:anagram)
end
get('/makechange') do
  @page_title = "makechange"
  erb(:makechange)
end

post('/makechange') do
  @page_title = "makechange"
  @till = [params.fetch('quarters').to_i, params.fetch('dimes').to_i, params.fetch('nickels').to_i, params.fetch('pennies').to_i]
  @change = params.fetch('change').to_i.makechange(@till)
  erb(:makechange)
end
get ('/allergies') do
  @page_title = "allergies"
  erb(:allergies)
end
post('/allergies') do
  @page_title = "allergies"
  @result = params.fetch('score').to_i.allergies()
  erb(:allergies)
end
