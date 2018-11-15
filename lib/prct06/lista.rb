Node = Struct.new(:value, :next, :prev)

class Lista
	attr_reader :head, :tail
	attr_accessor :node

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
		aux = @head.value
		if(@head == @tail) 
		  @head,@tail = nil
		else 
		  @head = @head[:next]
		  @head[:prev] = nil
		end		
		return aux
	end

	def to_s
		string = "("
		aux = @head
		while(aux != nil) do
			string += "#{aux.to_s}"
			@aux = @aux.next
		end	
		string += ")"
		return string
	end

end
