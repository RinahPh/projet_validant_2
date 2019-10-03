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
