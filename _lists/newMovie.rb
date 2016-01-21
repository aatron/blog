require 'csv'
require 'json'
require 'terminal-table'
load 'movieTags.rb' 

def displayInputOptions (optionArray)
    puts '      *1. ' + optionArray[0]
    for i in 1..optionArray.length - 1
        puts '       ' + (i + 1).to_s + '. ' + optionArray[i]
    end
end

# Get movie list
docListJsonFilePath = File.join(File.dirname(__FILE__), 'docList.json')
movieListJson = JSON.parse(File.read(docListJsonFilePath))

# Get Tags
movieTagsCsvFilePath = File.join(File.dirname(__FILE__), 'movieTags.csv')
movieTags = getMovieTags('movieTags.csv')
movieTagList = getMovieTagList(movieTags)
movieTagDisplayTable = getMovieTagDisplayTable(movieTags, movieTagList)

# Build flat list of tags, probably not a good pure Ruby way of building the list
movieTagListFlat = []
movieTagList.each do |movieTagRow|
    movieTagListFlat += movieTagRow
end

# Get new movie from user input
puts "\e[H\e[2J"
puts 'Enter Title: '
title = gets.gsub(/\n/,'')

# Tags
selectedTags = getFormattedTags(movieTagDisplayTable, movieTagListFlat)

# Recommendation
puts 'Enter Recommendation: '
recommendationOptions = ['Yes','No','Maybe','Need to Finish', 'Haven''t Seen'] 
displayInputOptions(recommendationOptions)
recommendationNumber = gets.gsub(/\n/,'1') 

# Source
puts 'Enter Source: '
sourceOptions = ['Netflix','PBS','Hulu']
displayInputOptions(sourceOptions)
sourceNumber = gets.gsub(/\n/,'1')

newMovie = {
    :title => title,
    :tags => selectedTags,
    :dateAdded => Time.now,
    :recommendation => recommendationOptions[recommendationNumber.to_i - 1],
    :source => sourceOptions[sourceNumber.to_i - 1],
    :notes => ''
}

# Save to json file
puts JSON.pretty_generate(newMovie)
movieListJson.push(newMovie)

File.write(docListJsonFilePath, JSON.pretty_generate(movieListJson))

