class Guitar
	def initialize(color, material, strings)
		puts "ROCK 'N ROLL!"
		@color = color
		@material = material
		@strings = strings
	end

	def specs
		"Guitar: Color => #{@color}, Material => #{@material}, Strings => #{@strings}"
	end
end

class Stratocaster < Guitar
	def initialize(color, material, strings, tuning, effect)
		puts "Grungy!"
		super(color, material, strings)
		@tuning = tuning
		@effect = effect
	end

	def specs
		"Stratocaster: Color => #{@color}, Material => #{@material}, Strings => #{@strings}, Tuning => #{@tuning}, Effect => #{@effect}"
	end
end

class Gibson_SG < Guitar
	def initialize(color, material, strings, tuning, effect)
		puts "Stairway to Heaven"
		super(color, material, strings)
		@tuning = tuning
		@effect = effect
	end

	def specs
		"Gibson SG: Color => #{@color}, Material => #{@material}, Strings => #{@strings}, Tuning => #{@tuning}, Effect => #{@effect}"
	end
end

guitar = Guitar.new("Red", "Rosewood", 6)
puts guitar.specs

strato = Stratocaster.new("Blue", "Pine", 6, "EBGDAD", "Gain")
puts strato.specs

sg = Gibson_SG.new("Black", "Mahogany", 12, "EEBBGGDDAAEE", "Clean")
puts sg.specs