class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    list = @line.split(":").last.strip
  end

  def log_level
    @line.downcase.split(":").first.delete("[]").strip
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
