require('sinatra')
require('sinatra/reloader')
require('./lib/numbers_words')
also_reload('lib/**/*.rb')
require('pry')

get('/')  do
  erb(:index)
end

get('/num1') do
    @numbers = params.fetch('numbers').to_i.translate()
    erb(:numbers)
end
