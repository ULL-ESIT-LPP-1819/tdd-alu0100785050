Node = Struct.new(:value, :next, :prev)

class Lista
	attr_reader :head, :tail

	def initialize
		@head = nil
		@tail = nil
	end

	def empty
		return (head == nil) && (tail == nil)
	end

	def insert_tail(value)
		if(empty)
			@head = Node.new(value,nil,nil)
			@tail = @head
		else
			@tail[:next] = Node.new(value,nil,@tail)
			@tail = @tail[:next]
		end			
	end

	def extract_head
		aux = @head[:value]
		@head = @head[:next]
	        @head[:prev] = nil			
		return aux
	end
end
