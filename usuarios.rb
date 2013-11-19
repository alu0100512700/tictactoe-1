require 'dm-core'
require 'dm-migrations'

class Usuario
	include DataMapper::Resource
		property :id, Serial
		property :username, String
		property :password, String
		property :win, Integer
		property :loose, Integer
		property :play, Integer
end

DataMapper.finalize

get '/usuarios' do
	@usuarios = Usuario.all
	haml :usuarios
end
