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
puts "I accept the following commands:
 help : displays this help message
 list : displays a list of songs you can play
 play : lets you choose a song to play
 exit : exits this program"
end

def list(songs)
  songs.each_with_index do |x, i|
    puts "#{i+1}. #{x}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  answer = gets.chomp
  new_string = ""
  new_string << answer
  songs.each_with_index do |x, i|
    if (new_string == x || new_string == (i.to_i + 1).to_s )
      puts "Playing #{x}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  new_string = ""
  help
  puts "Please enter a command:"
  answer = gets.chomp
  new_string << answer
  if new_string == "help"
    help
  elsif new_string == "list"
    list(songs)
  elsif new_string == "play"
    play(songs)
  elsif new_string == "exit"
    exit_jukebox
  end
end
