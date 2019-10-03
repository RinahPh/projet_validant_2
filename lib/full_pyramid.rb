
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