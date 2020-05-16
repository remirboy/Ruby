class Number_guesser

def initialize
  @number = rand(100)+1
  @started = true
  @condition_num=0
  @condition = false
end

def is_started?
  @started
end 

def to_str
   @number
  end

def number_predictiction(user_num)
  if @condition_num<10 && !@condition
  if user_num<@number
    @condition_num+=1
    return "Number is more then #{user_num}."
  elsif user_num>@number
    @condition_num+=1
    return "Number is less then #{user_num}."       
  elsif user_num==@number
    @started=false  
    return "Good job! You guessed my number in #{@condition_num+1} guesses!"
  end
  end
  if !@condition
    return "Sorry. You didn’t get my number. My number was #{@number} ." 
end
end
end