require 'pry'

require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'

require_relative '../lib/artist.rb'
require_relative '../lib/song.rb'

#This is one file that requires all the files in one document that has an environment scope and which is then required in any file that extends another's functionality
#This file is read and loaded to memory in line order.
#This is the file that handles all the requirements in an app in the same place.
#Read #Green #Refactor