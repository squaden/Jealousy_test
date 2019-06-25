require_relative "lib/test"
require_relative "lib/input_output"

name = ARGV[0]

current_path = File.dirname(__FILE__)
file_name1 = current_path + "/data/questions.txt"
file_name2 = current_path + "/data/results.txt"

input_output = InputOutput.new(name)
test = Test.new(file_name1, file_name2)

test.next_questioins(input_output)

test.counting

input_output.print_result(test)