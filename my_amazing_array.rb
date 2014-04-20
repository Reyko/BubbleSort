require 'pry'

class Array
  # Calculate the total sum of all the elements in this array (assuming they are
  # numeric)
  #
  def sum
    # puts self.join(",")
    sum = 0
    self.each do |x|
      sum += x
    end
    sum
  end
#binding.pry
  # Returns the prime numbers in this array
  def primes
    # puts self.join(",")
    primes = []
    self.each do |x|
      
      if x==2
        primes.push(x)
      
      elsif x%2!=0 && x!=1
          bool = false
          test_prime = (2...x).to_a

          test_prime.each do |y|

              if x%y==0
                bool = true 
                break
              else
                bool = false
              end
          end
          if bool == false
              primes.push(x)
          end
      end
    end
      primes
  end

  # Examine each pair in myself and swap them until all my
  # elements are in order
  #
  def bubble_sort
  	# puts self.join(",")
     i = 0
     temp = nil
     bool = true

  #binding.pry  
    while bool #start of bool while
      counter = 0
      while i < self.length - 1
        if self[i] > self[i+1]
           temp = self[i]
           self[i] = self[i+1]
           self[i+1] = temp
           counter += 1
        end
        i+=1
      end

      if counter == 0
          bool = false 
      else
        i=0
      end
    end#end of while bool

     self.each do |x|
          print x
     end 
  end

end

#binding.pry