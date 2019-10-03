#2.3. Programme 2 : Mon petit mot de passe

#la partie signUp
def signup
	puts "Creez un mot de passe"
	print "==>"
	#recupere le mot de passe créé
	my_password = gets.chomp
	return my_password
end

#la partie login
def login(ps)
	puts "Entrez votre mot de passe"
	print "==>"
	#demande le mot de passe de l'utilisateur 
	password = gets.chomp

	#demande a l'utilisateur de recommmencer si le mot de passe est incorrect
	while ps != password
		puts "Votre mot de passe est incorrect! RECOMMENCEZ!"
		print "==>"
		password = gets.chomp 
	end
end

def welcome_screen 
#affiche le message si le mot de passe est correcte
	puts "BIENVENUE à la NSA"

end 

def perform
	#recupere le mot de passe
	password = signup 
	#passe le mot de passe a la methode login
	login(password)
	welcome_screen
end

perform