Node = Struct.new(:value, :next, :prev)

# @author Miriam Rodríguez Méndez
# Esta clase representa una lista doblemente enlazada
class Lista

	#Esto permite la lectura de la cola y la cabeza de la lista
	attr_reader :head, :tail
	attr_accessor :node

	include Enumerable
	include Comparable

	def initialize
		@head = nil
		@tail = nil
	end

	# Comprueba si la lista está vacía
	#
	# @return [bool] false si no está vacía, true si está vacía
	def empty?
		return (head == nil) && (tail == nil)
	end

	# Inserta un nodo por la cola
	#
	# @param value Cualquier objeto que se use como valor
	def insert_tail(value)
		if(empty?)
			@head = Node.new(value,nil,nil)
			@tail = @head
		else
			@tail[:next] = Node.new(value,nil,@tail)
			@tail = @tail[:next]
		end			
	end

	# Extrae un nodo por la cabeza de la lista
	#
	# @return Devuelve el primer nodo de la lista
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

	# Convierte a un string la lista
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
	
	# Método para que la clase sea Enumerable
	def each
		aux = @head
		while aux != nil do
			yield aux.value
			aux = aux.next
		end
	end

	def sz
		cont = 0
		aux = @head
		while(aux != nil) do
			cont = cont + 1
			aux=aux.next
		end
		return cont
	end
	
	def to_array_for
		arr = []
		aux = @head
		for i in self do
			arr.push(aux.value)
			aux = aux.next
		end
		arr.buclesfor
	end

	def to_array_each
                arr = []
                aux = @head
                for i in self do
			arr.push(aux.value)
                        aux = aux.next
                end
                arr.ordenar_each
        end

	
	#def ordenar_for
	 # swapped = true
	  #aux = []
	  #for i in self
	   # swapped = false
	    #for j in self
	      #if j > i
		#j = j+1 
		#j+1 = j
	#	swapped = true
	#	aux.push(i)
	      #end
	    #end
	 # break if swapped == false
	  #end
	  #return aux
        #end
end
