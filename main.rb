require_relative "lib/test"

current_path = File.dirname(__FILE__)
file_name1 = current_path + "/data/questions.txt"
file_name2 = current_path + "/data/results.txt"

name = ARGV[0]

greeting = "Тест поможет определить ваш уровень коммуникабельности.\n" + \
            "Для этого необходимо правдиво ответить на следующие вопросы.\n"
instruction = "Инструкция:" + \
              "\n" + \
              "За каждый ответ «да» начисляется 2 балла, за ответ «нет» — 0 " \
              "баллов, за ответ «иногда» — 1 балл."

if name == nil
  puts "Приветствуем вас Инкогнито!"
else
  puts "Приветствуем вас, #{name}!"
end

puts
puts greeting
puts

test = Test.new(file_name1, file_name2)

test.questions.each do |question|
  puts question
  choice = nil
  until choice == 1 || choice == 2 || choice == 3
    puts
    puts "Введите с помощью цифр один из вариантов ответа:"
    puts
    puts "1 - да"
    puts
    puts "2 - нет"
    puts
    puts "3 - иногда"
    puts
    choice = STDIN.gets.to_i
    puts
    test.iteration(choice)
  end
end

test.counting

puts
puts instruction
puts
puts "Результат теста. Количество баллов: #{test.score}"
puts

puts test.result