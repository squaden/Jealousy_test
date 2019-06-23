require_relative "test"
require_relative "input_output"

name = ARGV[0]

current_path = File.dirname(__FILE__)
file_name1 = current_path + "/data/questions.txt"
file_name2 = current_path + "/data/results.txt"

test = Test.new(file_name1, file_name2)
input_output = InputOutput.new

if test.name == nil
  puts "Приветствуем вас Инкогнито!"
else
  puts "Приветствуем вас, #{name}!"
end

puts
puts "Тест поможет определить ваш уровень коммуникабельности."
puts
puts "Для этого необходимо правдиво ответить на следующие вопросы."
puts

test.next_questioins(input_output)

test.counting

input_output.print_result(test)
