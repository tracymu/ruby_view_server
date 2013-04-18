require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %> but I don't really care but x is <%= x %>"
puts template.result(binding)

tracy_hash = {:name => "Tracy", :age => 32}

about_tracy = ERB.new "<%=tracy_hash[:name]%> is <%= tracy_hash[:age]%> years old"
puts about_tracy.result(binding)

aidan_string = "This is the Aidan string"

about_aidan = ERB.new "What is this? <%=aidan_string%>"

puts about_aidan.result(binding)