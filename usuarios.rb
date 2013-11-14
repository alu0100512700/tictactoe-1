require 'dm-core'
require 'dm-migrations'

class Usuario
	include DataMapper::Resource
		property :id, Serial
		property :username, String
		property :win, Integer
		property :loose, Integer
end

DataMapper.finalize

get '/usurios' do
	@usuarios = Usuario.all
	haml :usurios
end
