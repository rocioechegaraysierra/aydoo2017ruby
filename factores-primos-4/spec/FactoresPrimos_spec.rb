require 'rspec'
require_relative '../model/factoresprimos'

describe 'FactoresPrimosTest' do

	let(:factores) { FactoresPrimos.new }

	begin
		it 'primos de 9 son 3 y 3 ' do
			expect(factores.solucion("9")).to eq([3, 3])
		end
	end
end
