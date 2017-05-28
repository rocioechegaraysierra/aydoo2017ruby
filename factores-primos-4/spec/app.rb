require 'sinatra' 
require_relative '../model/factoresprimos'

get  '/primos'  do
	factores  = FactoresPrimos.new
	factoresPrimos =	factores.solucion(params['x'])
	"#{factoresPrimos}"
end

post  '/primos' do
	
end
