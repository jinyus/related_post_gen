# extract benchmark results from github action log
filename = ARGV[0]

if !File.exists?(filename)
  puts "File '#{filename}' does not exist"
  exit
end

lines = File.read_lines(filename)

results = lines
  .skip_while { |line| !line.includes? "Running Go" }
  .map { |line| line.split(" ", 2)[1] }
  .select { |line| line.starts_with?(/Running |Benchmark|Processing|  Time|  Range/) }
  .map { |line| line.starts_with?("Running") ? "\n#{line.lchop("Running ")}:\n" : "\t#{line}" }
  .join "\n"

File.write("raw_results.md", "Device: Github Actions\n" + results)
