 #2.2. Programme 1 : vacances en Égypte
def half_pyramid 

 	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	#recupere la valeur entree par l'utilisateur 
	etage = gets.to_i
#verifie si l'etage est entre 5-25 
	if etage >= 5 && etage <= 25
	    puts "Voici la pyramide:"
	    #affiche les etages
	    for i in 1..etage
	    	puts "#" * i 
    	end
	else
		#affiche un message d'erreur si etage n'est pas entre 5-25
    	puts "Entrez nombre entre 5 et 25!"
	end
 
end

#execute la methode
half_pyramid
