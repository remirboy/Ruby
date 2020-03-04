def sum(numbers)
	i = 0 
	sum = 0
	while i<numbers.length
		sum=sum+numbers[i]
		i+=1
	end
	sum	
end

def buy(prices,balance)
	i = 0 
	while i<prices.length
		balance=balance-prices[i]
		i+=1
	end
	balance	
end

def sale(prices)
	i = 0 
	while i<prices.length
		prices[i]=format("%.2f",prices[i]/3)
		i+=1
	end	
end

numbers = [3.99, 25.00, 8.99, 32.0, 1234.09]
puts format("%.2f", sum(numbers))

prices = [40.99, 59.99, 100.00, 199.99]
balance = 10000
puts format("%.2f", buy(prices,balance))

sale(prices)
puts prices

