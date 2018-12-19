class Array

	def buclesfor
	  swapped = true
	    for i in 0 ...(self.length-1)
	    swapped = false
	      for j in 0 ... (self.length-i-1)
	        if self[j] > self[j+1]
	          self[j] , self[j+1] = self[j+1], self[j]
		  swapped = true
		end
	      end
	    break if swapped == false
	    end
	    return self
	end

	def ordenar_each
	  swapped = true
	  self.each_index do |first|
	  swapped = false
	  self.each_index do |second|
	      if self[first] < self[second]
		self[first], self[second] = self[second], self[first]
		swapped = true
	      end
	    end
	  break if swapped == false
	  end
	  return self
	end
end
