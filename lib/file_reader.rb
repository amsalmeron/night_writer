class FileReader

  def read_english
    if ARGV[0] == "message.txt"
      english_text = "message.txt"
      english_output = File.read(english_text)
    end
  end
end
