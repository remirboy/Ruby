puts "Your name is: "
name = gets
puts "Hello #{name}"
number = rand(100)+1
puts "I have a number! Can you guess it?"
condition_num=0
condition = false
while condition_num<10 && !condition
	puts "Give me a number "
	puts "You have #{10-condition_num} to try guess my number"
	user_num = gets.to_i
	if user_num<number
		puts"Number is more then #{user_num}"
		condition_num+=1
	elsif user_num>number
		puts"Number is less then #{user_num}"
		condition_num+=1
    elsif user_num==number
    	puts "Good job, #{name}! You guessed my number in #{condition_num+1} guesses!"
    	condition=true
    end
end
if !condition
	puts "Sorry. You didn’t get my number. My number was #{number} ."
end