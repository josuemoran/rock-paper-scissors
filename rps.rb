begin 

def comp_choose_rps
	rand_num = rand(3)
	comp = ""
	rand_num == 0 ? comp = "rock" : rand_num == 1 ? comp = "paper" : comp = "scissors"
	# Try commenting the above out, and uncommenting the bottom!
	# num = ["rock", "paper", "scissors"]
	# comp = num.sample
	
end

def user_choose_rps
	user=""
	until user=="rock" || user == "paper" || user == "scissors"
		puts "Rock"
		sleep(0.5)
		puts "Paper"
		sleep(0.5)
		puts "Scissors"
		sleep(0.5)
		puts "SAYS"
		sleep(0.5)
		puts "SHOOT!"
		user=gets.chomp.downcase
	end
user
end

def get_winner(comp,user)
	if user == comp
        puts "Its a Tie!"
    elsif user == "rock" && comp == "paper" || user == "paper" && comp == "scissors" || user == "scissors" && comp == "rock"
        puts "You Lost!"
    elsif user == "paper" && comp == "rock" || user == "scissors" && comp == "paper" || user == "rock" && comp == "scissors"
        puts "You win!"
    
    end
end


def play_game
	comp=comp_choose_rps
	user=user_choose_rps
	
	puts "The computer chose #{comp}"
	puts get_winner(comp, user)

end

play_game

u_choice = ""
puts "Play again?"
	u_choice =gets.chomp.downcase
end while u_choice != "no" 
#