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

def say_hello(name)
  "Hi #{name}!"
end

def help()
  puts "help - lists options\n
  list - lists song names\n
  play - plays song\n
  exit - exits program"
end

def list(song_list)
  count = 1
  song_list.each do |song|
    puts "#{count}. #{song}"
  end
end

def play(songs)
  song = gets.chomp
  if song.is_a?(String) && songs.include?(song)
    puts "Playing #{song}"
  elsif song.to_i > 0 && song.to_i <= songs.length
    song_num = song.to_i-1
    song_name = songs[song_num]
    puts "Playing #{song_name}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  program = true
  while program = true
    puts "Enter your name:"
    users_name = gets.chomp
    puts say_hello(users_name)
    puts "Please enter a command:"
    command = gets.chomp
    case command
    when "help"
      help()
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      program == false
    end
  end
end