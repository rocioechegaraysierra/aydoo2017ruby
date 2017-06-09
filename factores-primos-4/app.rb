require 'sinatra' 
require_relative 'model/factoresprimos'
require_relative 'model/formatostring'

factores  = FactoresPrimos.new
formatostring = FormatoString.new

get  '/primos'  do
	begin
		factoresPrimos = factores.solucion(params['x']).reverse
		factoresPrimosConFormato = formatostring.formatear(factoresPrimos)
		"#{factoresPrimosConFormato}"
	rescue Exception
		status 400
	end
end

post  '/primos' do
	begin
		factoresPrimos = factores.solucion(params['x'])
		factoresPrimosConFormato = formatostring.formatear(factoresPrimos)
		"#{factoresPrimosConFormato}"		
	rescue Exception
		status 400
	end
end

