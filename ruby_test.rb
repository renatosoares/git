numeros = 5.times.map do gets.to_i end

par = []
impar = []

for n in numeros do
	if (n%2 == 0 ) then
		par << n
	else
		impar << n
	end

end

puts par 
puts impar