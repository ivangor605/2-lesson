cart = {}
sum = 0
loop do
  print 'Введите название товара (или \"стоп\"): '
  name = gets.chomp
  break if name == 'стоп'
  print 'Введите цену товара: '
  price = gets.chomp.to_f
  print 'Введите количество товара: '
  count = gets.chomp.to_f
  
  cart[name] = {"price" => price, "count" => count}  
end 

cart.each {|name, hash| sum += hash["price"] * hash["count"]}

puts cart
puts "Итого: #{sum}"
