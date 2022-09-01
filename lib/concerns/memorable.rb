module Memorable     #A module is mean to be a container for methods that are to be shared by classes that aer not related
   module ClassMethods   
    def reset_all
        self.all.clear  #clears the array off its elements
    end

    def count  #These will be required in the various class files as class methods and thus the self keyword is omitted
        self.all.count
    end
  end
    
  module InstanceMethods
    def initialize
        self.class.all << self #Remember that self here refers to the instance of a class where initialize is called. #class is an instance method that returns the parent class of an instance. .all returns an array of the instances created from a class
        #This method has the same function as the initialize method that is included in every class and that adds every instance 
    end
  end

end