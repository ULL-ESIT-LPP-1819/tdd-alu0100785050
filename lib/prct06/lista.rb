Node = Struct.new(:value, :next, :prev)

class Lista
	attr_reader :head, :tail

	def initialize
		@head = nil
		@tail = nil
	end

	def empty
		if (head == nil) && (tail == nil)
			true
		else
			false
		end
	end
end
