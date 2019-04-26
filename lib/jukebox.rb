songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
	puts "I accept the following commands:"
	puts "- help : displays this help message:"
	puts "- list : displays a list of songs you can play"
	puts "- play : lets you choose a song to play"
	puts "- exit : exits this program"
end	

def list(songs)
	songs.each_with_index {|song, index| puts "#{index + 1}. #{song}"}
end	

def play(songs)
	puts "Please enter a song name or number:"
	ans = gets.chomp
	if ans.to_i > 0 && ans.to_i < 10
		puts "Playing #{songs[ans.to_i - 1]}"
	elsif songs.include?(ans)
		puts "Playing #{ans}"
	else
		puts "Invalid input, please try again"	
	end	
end

def exit_jukebox
	puts "Goodbye"
end		

def run(songs)
	help()
	while true
		puts "Please enter a command:"
		command = gets.chomp
		case command
			when "help"
				help()
			when "list"
				list(songs)
			when "play"
				list(songs)
				play(songs)
			when "exit"
				exit_jukebox()
				break		
			else
				puts "Invalid input"
				help()
		end
	end
end