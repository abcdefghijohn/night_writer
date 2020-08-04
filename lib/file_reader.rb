class FileReader

  def read(input_file)
    File.read(input_file).chomp
  end

  def write(output_file, content)
    File.write(output_file, content)
  end

  def write(output_file, content)
    rows = content.transpose
    rows.each do |row|
      File.write(output_file, row.join("") + "\n", mode: "a")
  end
  end
end
