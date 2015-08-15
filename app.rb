require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')

get('/') do
  @words = Word.all()
  erb(:index)
end

get('/words/') do
  @words = Word.all()
  erb(:words)
end

get('/words/new/') do
  @words = Word.all()
  erb(:word_form)
end

post('/words/new/') do
  word = params.fetch('word')
  @word = Word.new(:word => word)
  @word.save
  @words = Word.all
  erb(:words)
end

get('/words/:id/') do
  @word = Word.find(params.fetch('id').to_i)
  erb(:word)
end

get('/words/:id/new/') do
  @word = Word.find(params.fetch('id').to_i)
  erb(:definition_form)
end

# get('/words/clear/') do
#   @word = Word.clear
#   redirect("/words/")
# end

post('/words/') do
  definition  = params.fetch('definition')
  id_number   = params.fetch('id')
  @definition = Definition.new(:definition => definition)
  @definition.save()
  @word       = Word.find(id_number.to_i)
  @word.add_definition(@definition)
  erb(:word)
end
