require 'rspec'
require_relative '../model/factoresprimos'

describe 'FactoresPrimosTest' do

	let(:factores) { FactoresPrimos.new }

	begin
		it 'factores de 9 son 3 y 3 ' do
			expect(factores.solucion("9")).to eq([3, 3])
		end

		it 'factores de 14 son 2 y 7 ' do
			expect(factores.solucion("14")).to eq([2, 7])
		end

		 it 'factores de 360 son 2, 2, 2, 3, 3 y 5' do
			expect(factores.solucion("360")).to eq([2, 2, 2, 3, 3, 5])
		end
		
		 it 'Letra no es valida y lanza una excepcion' do
			expect{calculadora.calcular("R")}.to raise_exception
		end

		 it 'factores de 2 es 2' do
			expect(factores.solucion("2")).to eq([2])
		end
	end
end
