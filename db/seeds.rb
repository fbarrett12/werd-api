# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri';
require 'Nokogiri';
require 'httparty';

choices = ["Indirectly telling on someone", "When you're in a relationship with someone and you refuse to introduce them to your friends and family; mostly because you view the person as temporary, replaceable, and/or you're an asshole", "Fall Down Go Boom", "The pursuit of casual sexual relations", "Cancer", "A remarkably attractive young lady", "A blatant racist", "Someone who smokes marijuana", "A second phone", "The act of a large, homosexual male 'slinging' his testicles into the face of an unconscious male for his own sexual pleasure", "Scared, paranoid or apprehensive", "God is good", "A sexy mexican", "Talking about or doing something with little knowledge of it","A Danish word meaning social coziness. I.e. the feeling of a good social atmosphere", "People who cannot read or write", "People who have become famous off the internet", "Dealing or slinging coke and other drugs", "A frequent user of the drug psychedellic drug acid also known as lsd", "A deaf/hard-of-hearing person", "Lines of cocaine", "To consume food", "A person that ditches you for brunch", "Nature's candy", "Someone who wears clothing depicting their favorite sports organization at non-sporting functions", "To swim naked", "Synonymn for breakfast", "Working excessivley hard", "When you are fired from a job", "When somebody is doing something productive", "To have a lot of cash", "Someone who can stay up and party all night long and then wake up and take care of business in the morning"]

choices.each do |choice|
    x = {"definition" => choice}
    Choice.create(x)
end

def scrape_odyssey_for_words
    slang = Nokogiri::HTML(HTTParty.get("https://www.theodysseyonline.com/nyc-urban-slang-dictionary")).css("h2").children.map {|slang| slang.text}.compact

    words_and_defs_from_scraper = []
    words_and_defs = []
    words = []
    definitions = []

    for x in slang do
        y = x.index("=")

        if y != nil && x[y] == "="
            words_and_defs_from_scraper.push(x.split("="))
        end
        
    end

    words_and_defs_from_scraper.each do |term|
        start = term[0].index(".") + 1
        finish = term[0].length
        word = term[0].slice(start,finish - start)
        definition = term[1]
        words_and_defs << [word, definition]
    end

    words_and_defs.each do |entry|
        slang = {
            "term" => entry[0],
            "definition" => entry[1]
        }

        Slang.create(slang)
    end

end

scrape_odyssey_for_words

puts "seeded"
0