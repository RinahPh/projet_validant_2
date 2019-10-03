#2.4. Programme 3 : 6ème sans ascenseur

# genere un nombre aléatoire entre 1 et 6
def roll_dice
    return rand(1..6)
end

# petit menu qui va demander à l'utilisateur s'il veut quitter le jeu ou pas
def menu(command)
    if command != "d" && command != "D"
        puts "Voulez vous quitter le jeu? o/n"
        print "> "
        command = gets.chomp

        if command == "o"
            puts "Vous avez quitter le jeu, bye!"
            return
        else
           puts "Appuyez sur D pour continuer de jouer!"
           print "> "
           command = gets.chomp
           return command
        end
    else
        return command
    end
end

# le jeu
def game
    # les marches effectué par le joueur
    steps = 0
   
    puts 'Bienvenu dans "6ème sans ascenseur", appuyer sur "D" puis sur "Entrer" pour lancer le dé!'
    print "> "
    command = gets.chomp  
    
    # menu qui va s'afficher selon la commande entré par joueur
    command = menu(command)

    # execute le jeu tant que le joueur appuie sur D
    while command == "d" || command == "D"
        # lance le dé et retourne un nombre entre 1-6
        dice = roll_dice
        
        command = menu(command)
        
        # affiche un message et modifie la valeur de la marche du joueur
        if steps < 10
            if dice == 5 || dice == 6 
                steps += 1
                puts "Vous montez d'une (1) marche, vous êtes à #{steps}"
            elsif dice == 1 
                puts "Vous descendez d'une (1) marche, vous êtes à #{steps}"
                steps -= 1
            elsif dice == 2 || dice == 3 || dice == 4
                puts "Vous n'avez pas bouger, vous êtes à #{steps}"
            end
        elsif steps >= 10
            puts "HOURRA!!! 10è marche!!!!"
            break
        end
        
        print "> "
        command = gets.chomp

        command = menu(command)
    end

end

# execute le jeu
game
