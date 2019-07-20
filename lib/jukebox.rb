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
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number: "
  user_choice = gets.chomp

  song_selection = songs.each_with_index.find do |song, index| 
    song.downcase == user_choice.downcase || index == (user_choice.to_i)-1
  end

  if song_selection 
    puts "Playing #{song_selection}"
  else 
    puts "Invalid input, please try again"
  end 
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"  
end

def make_selection
  puts "Please enter a command:"
  response = gets.chomp
end

def run(songs)
  help
  selection = make_selection
  until selection == "exit"
    case selection
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
    end
    selection = make_selection  
  end
  exit_jukebox
end
