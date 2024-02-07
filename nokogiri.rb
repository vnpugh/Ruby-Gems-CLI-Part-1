# use the Nokogiri gem to parse HTML and XML documents.

#require the Nokogiri gem to use it's provided objects.
require 'nokogiri'



html_content = <<-HTML
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Nokogiri Example</title> 
</head>
<body>
    <h1>Hello, Ruby World!</h1>
    <p>Ruby is fun to learn.</p>
</body>
</html>
HTML

# Parse the HTML content using the Nokogiri::HTML module
doc = Nokogiri::HTML(html_content)

# Print the title 
#  use the css method, a nokogiri method, to select the title element. 
# Afterwards we use the text method to get the text of the title element.
puts "Title of the page: #{doc.css('title').text}"

# Find and print the first h1 element
#  use the css method to select the h1 element.
# use the text method to get the text of the h1 element. 
puts "First h1 element: #{doc.css('h1').text}"

# Find and print all paragraph contents
doc.css('p').each do |paragraph|
  puts "Paragraph: #{paragraph.text}"
end


# Run -> $ ruby nokogiri.rb
# Output -> Title of the page: Nokogiri Example
# Output -> First h1 element: Hello, Ruby World!
# Output -> Paragraph: Ruby is fun to learn.
