def say_hello(first_name)
puts "Bonjour, " + first_name
end


def ask_first_name (prenom)
	puts "quel est ton prénom?"
	print " ===>"
	prenom = gets.chomp
	return say_hello(prenom)  
end
  puts ask_first_name("")

  