class CarObject
 	attr_accessor :speed,:transmison,:horsepower

 	def initialize(speed,transmison,horsepower)
 		@speed=speed
 		@transmison=transmison
 		@horsepower=horsepower 		
  	end
 	
 	def isSpeed
 		if @speed>200
 			return true
 		else
 			return false
 		end
 	end

 	def isPower
 		if @horsepower>160
 			return true
 		else
 			return false
 		end
 	end

end

class LADA<CarObject
	
	def Patiot
		puts("I Love Russia")
	end

end

class Porshe<CarObject
	
	def Sport
		puts("I Love Sport")
	end

	attr_accessor :sport

end

GLK = Porshe.new(320,"fr",600)
GLK.Sport()
GLK.isSpeed()
#GLK.isMT()
GLK.isPower

Granta = LADA.new(180,"ff",80)
Granta.Patiot()
Granta.isSpeed()
#Granta.isMT()
Granta.isPower

