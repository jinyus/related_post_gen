# extract benchmark results from github action log

class LangaugeScore
  setter name = ""
  setter processing_times = [] of Float64
  setter pt_unit = ""
  setter total_time = ""

  def avg_processing_time : Float64
    (@processing_times.sum / @processing_times.size * (@pt_unit == "s" ? 1000 : 1)).round(2)
  end

  def display_processing_times : String
    (@processing_times.sum / @processing_times.size).round(2).to_s + @pt_unit
  end

  def total_time : String
    @total_time
  end

  def processing_times
    @processing_times
  end

  def name
    @name
  end
end

filename = ARGV[0]

if !File.exists?(filename)
  puts "File '#{filename}' does not exist"
  exit
end

lines = File.read_lines(filename)

result_lines = lines
  .skip_while { |line| !line.includes? "Running Go" }
  .map { |line| line.split(" ", 2)[1] }
  .select { |line| line.starts_with?(/Running |Benchmark|Processing|  Time|  Range/) }
  .map { |line| line.starts_with?("Running") ? "\n#{line.lchop("Running ")}:\n" : "\t#{line}" }

File.write("raw_results.md", "Device: Github Actions\n" + result_lines.join "\n")

# parse benchmark results

scores = Hash(String, LangaugeScore).new

current_score = nil

result_lines.each do |line|
  if line.starts_with?(/^\n[a-zA-Z]/)
    # print "processing #{line}..."
    current_score = LangaugeScore.new
    name = line.gsub(/\n|:/, "").strip
    current_score.name = name
    scores[name] = current_score
    next
  end

  if !current_score
    print "skipping \"#{line}\"\n"
    next
  end

  pt_match = line.match(/Processing time[^0-9]*([\d.]+)(ms|s| milliseconds)/)

  if pt_match
    current_score.pt_unit = pt_match[2].strip.gsub("milliseconds", "ms")
    current_score.processing_times << pt_match[1].strip.to_f
    next
  end

  tt_match = line.match(/Time[^0-9]*([\d.]+ (ms|s))/)

  if tt_match
    current_score.total_time = tt_match[1].strip
    next
  end
end

# generate markdown table

scores.values.sort_by { |s| s.avg_processing_time }.each do |score|
  puts "| #{score.name} | #{score.display_processing_times} | #{score.total_time} |"
end
