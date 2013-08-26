require './cartesian_plane'
require './robot'

class ParseCommnads

	def initialize
		i = 0
		File.open("./entry.txt", "r").each_line do |line|
			puts line
			if i == 0
				data = line.split(" ")
				@plane = CartesianPlane.new data[0].to_i, data[1].to_i
			elsif i == 1 
				data = line.split(" ")
				@robot = Robot.new @plane, data[0].to_i, data[1].to_i, data[2]
			else
				run line
			end	
	  	i = i + 1
		end
		puts @robot.to_s
	end

	private 
	def run (command)
		data = command.split(" ")
		if data.first == 'T'
			@robot.tele data[1].to_i, data[2].to_i
		else
			command.each_char do |c|
				@robot.move if c == 'M'
				@robot.left if c == 'L'
				@robot.right if c == 'R'
			end	
		end
	end
end

ParseCommnads.new