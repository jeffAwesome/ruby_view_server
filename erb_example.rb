require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

content = "This is my obligatory content"
template = ERB.new "My content says: <%= content %>"
puts template.result(binding)


myInfo = { "age" => 23, "occupation" => "Full Stack Web Developer" }
template = ERB.new "I am <%= myInfo['age'] %> years old"
puts template.result(binding)


newTemplate = ERB.new "My occupation is <%= myInfo['occupation'] %> and I love it."
puts newTemplate.result(binding)