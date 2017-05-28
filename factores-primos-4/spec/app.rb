require 'sinatra' 
require_relative '../model/factoresprimos'

factores  = FactoresPrimos.new

get  '/primos'  do
	begin
		factoresPrimos =	factores.solucion(params['x']).reverse
		"#{factoresPrimos}"
	rescue Exception
		status 400
	end
end

post  '/primos' do

end
