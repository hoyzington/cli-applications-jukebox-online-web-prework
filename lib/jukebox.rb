
def songs
  ["Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"]
end


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def jukebox(src)
  new = []
  src.each_with_index{|item, index|
    new << [(index + 1).to_s, item]
  }
  new
end


def list(src)
  juke = jukebox(src)
  juke.each{|item|
    puts "#{item[0]}. #{item[1]}"
  }
end


def play(src)
  juke = jukebox(src)
  puts "Please enter a song name or number:"
  while true
    present = "no"
    input = gets.strip
    if input == "exit"
      return nil
    end  
    juke.each do |song|
      song.each do |item|
        if item == input
          present = "yes"
          puts "Playing #{song[1]}"
          return nil
        end
      end
    end
    if present == "no"
      puts "Invalid input, please try again"
      return nil
    end
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(src)
  while true
    puts "Please enter a command:"
    input = gets.strip
    if input == "exit"
      exit_jukebox
      return nil
    elsif input == help
      help
    elsif input == list
      list(src)
    elsif input == play
      play(src)
    end
  end
end


