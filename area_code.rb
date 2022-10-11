# frozen_string_literal: true

dial_book = {
  "newyork": '212',
  "newbrunswick": '732',
  "edision": '908',
  "plainsboro": '609',
  "sanfrancisco": '305',
  "miamipaloalto": '650',
  "evanson": '847',
  "orlando": '407',
  "lancaster": '717'
}

def get_all_area(dial_book)
  dial_book.keys
end

def get_area_code(dial_book, area)
  dial_book[area.to_sym]
end

loop do
  puts 'Do you want to look up an area code based on a city name? (y/n)'
  answer = gets.chomp.downcase
  break if answer != 'y'

  puts 'Which city do you want the area code for?'
  get_all_area(dial_book).each { |area| puts area }
  area = gets.chomp.downcase

  area_code = get_area_code(dial_book, area)
  if !area_code
    puts 'Please select an area from the list'
  else
    puts "Area code for #{area} is #{area_code}"
  end
end
