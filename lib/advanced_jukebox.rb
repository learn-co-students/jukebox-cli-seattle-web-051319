require 'pry'

my_songs = {
"Go Go GO" => "~/Development/mod-1/week-1/jukebox-cli-seattle-web-051319/audio/Emerald-Park/01.mp3",
"LiberTeens" => "~/Development/mod-1/week-1/jukebox-cli-seattle-web-051319/audio/Emerald-Park/02.mp3",
"Hamburg" => "~/Development/mod-1/week-1/jukebox-cli-seattle-web-051319/audio/Emerald-Park/03.mp3",
"Guiding Light" => "~/Development/mod-1/week-1/jukebox-cli-seattle-web-051319/audio/Emerald-Park/04.mp3",
"Wolf" => "~/Development/mod-1/week-1/jukebox-cli-seattle-web-051319/audio/Emerald-Park/05.mp3",
"Blue" => "~/Development/mod-1/week-1/jukebox-cli-seattle-web-051319/audio/Emerald-Park/06.mp3",
"Graduation Failed" => "~/Development/mod-1/week-1/jukebox-cli-seattle-web-051319/audio/Emerald-Park/07.mp3"
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  songs_array = my_songs.collect {|song, path| song}
  songs_array.each_with_index {|song, index| puts "#{index+1}. #{song}"}
end


def play(my_songs)
  puts "Please enter a song name: "
  user_choice = gets.chomp.downcase
  
  song_selection = my_songs.find do |song, path|
    song.downcase == user_choice
  end
  song_title = song_selection[0]
  song_path = song_selection[1]
  if song_selection 
    system("open #{song_path}")
  else 
    puts "Invalid input, please try again"
  end 
end

def exit_jukebox
  puts "Goodbye"  

end

def make_selection
  puts "Please enter a command:"
  response = gets.chomp
end

def run(my_songs)
  help
  selection = make_selection
  until selection == "exit"
    case selection
      when "list"
        list(my_songs)
      when "play"
        play(my_songs)
      when "help"
        help
    end
    selection = make_selection  
  end
  exit_jukebox
end