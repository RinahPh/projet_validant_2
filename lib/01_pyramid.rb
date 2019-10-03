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

#2.2.2 Pyramide de Gizeh
def full_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	ht = gets.to_i
	#boucle pour cree la pyramide
	ht.times do |n|
		#affiche la pyramide complete
    	print ' ' * (ht - n)
    	puts '#' * (2 * n + 1)
  	end
 
end

#execute la fonction
 full_pyramid

# 2.2.3. Alexandrie, Alexandra

def wtf_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "

	# recupere la valeur entree par l'utilisateur
	ht = gets.to_i

#verifie si le nombre est impaire
 if ht % 2 == 1
 	#affiche la moitie superieur de la pyramide
	ht.times do |n|
		if (ht / 2) + 1 > n
			print ' ' * (ht - n - 1)
    		puts '#' * (2 * n + 1)
    	end
  	end

  	# affiche la moitie inferieur de la pyramide
	(ht/2).downto(1).each do |i|
		print " " * (ht - i)
		puts "#" * (i * 2 - 1)
 	end
 else
 	#affiche message d'erreur si le nombre est impaire
 	puts "Entrez nombre impair"		
 end
end

# execute la methode
 wtf_pyramid
