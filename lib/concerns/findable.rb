module Findable  #note that the names of the meodules are in caps.
    def find_by_name(name)
       self.all.find{|object_instance| object_instance.name == name} # find is the alternative to detect
       #all is an inbuilt method that takes a class and returns  all the instances of the class
    end
end 