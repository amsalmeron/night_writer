class FileWriter

  def write_braille(message)
    # if ARGV[1] == "braille.txt"
      new_message = File.read(message)
      new_file = File.write("braille.txt", new_message.chomp)
    # end
    # new_file
  end

end
