class FactoresPrimos

	def solucion(numero)
		
		factor = numero.to_i 
		divisores = Array.new
		x = 2

		while factor!= 1
			if factor % x == 0
				divisores <<  x
				factor = factor / x
			else
				x = x + 1
			end
		end
		return divisores	
	end
end
