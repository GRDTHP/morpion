class User
        attr_accessor :name, :symbol
        
        
        def initialize(name, symbol)
            @name = name 
            @symbol = symbol
        end
    
        def name_and_symbol #ne sert qu'a afficher sur la même ligne le nom et symbole associé
            puts "le joueur #{name} a le symbole #{symbol} "    
        end
                
end

class BoardCase #la classe qui vas gérer le tableau et son remplissage
        attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3, :victory, :new_game
    
        def initialize
            @a1 = "     "
            @a2 = "     "
            @a3 = "     "       
            @b1 = "     "        
            @b2 = "     "        
            @b3 = "     "   
            @c1 = "     "
            @c2 = "     "
            @c3 = "     "
            @victory = "non"
            @new_game = "non"
        end
    
        def platter
            puts "   1       2       3     "
            puts " #{a1} | #{a2} | #{a3}   A"
            puts "-----------------------   "
            puts " #{b1} | #{b2} | #{b3}   B"
            puts "-----------------------   "
            puts " #{c1} | #{c2} | #{c3}   C"
        end    
    
        def play(name_player, symbol_player)
            puts "#{name_player}, votre symbol est #{symbol_player}, que voulez voulez vous jouer ?"
            
            play_move = gets.chomp
            while play_move != "A1"  and play_move != "A2" and play_move != "A3" and play_move != "B1" and play_move != "B2" and play_move != "B3" and play_move != "C1" and play_move != "C2" and play_move != "C3"
                puts "#{name_player}, votre symbol est #{symbol_player}, que voulez voulez vous jouer ? ex: A1"
                play_move = gets.chomp
            end
            
            if play_move == "A1"
                if @a1 != "     "
                    puts "  "
                    puts "la case est déja occupé"
                    play(name_player, symbol_player)
                end
                
                if @a1 == "     "
                    @a1 = symbol_player
                end
                
            end
            
            if play_move == "A2"
                if @a2 != "     "
                    puts "  "
                    puts "la case est déja occupé"
                    play(name_player, symbol_player)
                end
                
                if @a2 == "     "
                    @a2 = symbol_player
                end 
            end
            
            if play_move == "A3"
                if @a3 != "     "
                    puts "  "
                    puts "la case est déja occupé"
                    play(name_player, symbol_player)
                end
                if @a3 == "     "
                    @a3 = symbol_player
                end
            end
            
            if play_move == "B1"
                if @b1 != "     "
                    puts "  "
                    puts "la case est déja occupé"
                    play(name_player, symbol_player)
                end
                if @b1 == "     "
                    @b1 = symbol_player
                end
            end
            
            if play_move == "B2"
                if @b2 != "     "
                    puts "  "
                    puts "la case est déja occupé"
                    play(name_player, symbol_player)
                end
                if @b2 == "     "
                    @b2 = symbol_player
                end
                
            end
            
            if play_move == "B3"
                if @b3 != "     "
                    puts "  "
                    puts "la case est déja occupé"
                    play(name_player, symbol_player)
                end
                if @b3 == "     "
                    @b3 = symbol_player
                end
            end
            
            if play_move == "C1"
                if @c1 != "     "
                    puts "  "
                    puts "la case est déja occupé"
                    play(name_player, symbol_player)
                end
                if @c1 == "     "
                    @c1 = symbol_player
                end
            end
            
            if play_move == "C2"
                if @c2 != "     "
                    puts "  "
                    puts "la case est déja occupé"
                    play(name_player, symbol_player)
                end
                if @c2 == "     "
                    @c2 = symbol_player
                end
            end
            
            if play_move == "C3"
                if @c3 != "     "
                    puts "  "
                    puts "la case est déja occupé"
                    play(name_player, symbol_player)
                end
                if @c3 == "     "
                    @c3 = symbol_player
                end
            end
        end
    
        def win(name_last_player, symbol_last_player)
            if (@a1 == symbol_last_player and @a2 == symbol_last_player and @a3 == symbol_last_player) || (@b1 == symbol_last_player and @b2 == symbol_last_player and @b3 == symbol_last_player) || (@c1 == symbol_last_player and @c2 == symbol_last_player and @c3 == symbol_last_player) || (@a1 == symbol_last_player and @b1 == symbol_last_player and @c1 == symbol_last_player) || (@a2 == symbol_last_player and @b2 == symbol_last_player and @c2 == symbol_last_player) || (@a3 == symbol_last_player and @b3 == symbol_last_player and @c3 == symbol_last_player) || (@a1 == symbol_last_player and @b2 == symbol_last_player and @c3 == symbol_last_player) || (@a3 == symbol_last_player and @b2 == symbol_last_player and @c1 == symbol_last_player)
                puts "Félicitation #{name_last_player} vous avez gagné !"
                @victory = "oui" #cela nous permet d'arréter la boucle 
            end
            
            if @a1 != "     " and @a2 != "     " and @a3 != "     " and @b1 != "     " and @b2 != "     " and @b3 != "     " and @c1 != "     " and @c2 != "     " and @c3 != "     "
                puts "matche nul, il n'y a pas de gagnant"
                @victory = "oui" #cela nous permet d'arréter la boucle
            end
        end
    
        def play_again
            puts "voulez vous faire une nouvelle partie ? :)"
            answer = gets.chomp
            while answer != "oui" and answer != "non"
                puts "voulez vous faire une nouvelle partie ? oui ou non"
                answer = gets.chomp
            end
            
            if answer == "oui"
                @a1 = "     "
                @a2 = "     "
                @a3 = "     "       
                @b1 = "     "        
                @b2 = "     "        
                @b3 = "     "   
                @c1 = "     "
                @c2 = "     "
                @c3 = "     "
                @victory = "non"
            else
                @new_game = "oui"
            end
                 
        end
            
end 


        
        
# 1,2) initaliser les deux premiers joueurs et leurs attribuer un nom et symbole 

for count_player in (1..2)
    puts "Bonjour, vous êtes le joueur N°=#{count_player}, quel est votre nom ? :)"
    name_player = gets.chomp
    
    if count_player == 1
        player1 = User.new(name_player, "  O  ")
        puts "              "
    else
        player2 = User.new(name_player, "  X  ")
        puts "              "
    end
end

player1.name_and_symbol #on donne à l'utilisateur le symbol qui sera utilisé par chacun
player2.name_and_symbol

#initialisation du plateau
plateau = BoardCase.new


#on lance la partie
while plateau.new_game == "non" #cette boucle permet de recommancer une partie à la demande des joueurs
plateau.victory = "non"

plateau.platter
puts "   "

    while plateau.victory == "non"
        plateau.play(player1.name, player1.symbol)
        plateau.platter
        plateau.win(player1.name, player1.symbol)
        puts "  "
        if plateau.victory == "non"
            plateau.play(player2.name, player2.symbol)
            plateau.platter
            plateau.win(player2.name, player2.symbol)
        end
    end
    
    plateau.play_again
end

