class FileWriter

  def write_braille
    if ARGV[1] == "braille.txt"
      new_message = File.read(ARGV[0])
      new_file = File.write("braille.txt", new_message)
    end
    new_file
  end

end
