require 'rubygems'
require 'json'

def hasMovie(movieList, newMovieTitle)
    movieList.each do |movie|
        if movie["Title"] == newMovieTitle
            return true
        end
    end
    
    return false
end

# Read movies
movieListJson = JSON.parse(File.read('C:\projects\aatron\blog\_lists\docList3.json'))
puts "Raw List: " + movieListJson.length.to_s

movieList = []

movieListJson.each do |movieJson|
    if !hasMovie(movieList, movieJson["Title"]) 
        movieJson["Source"] = "Netflix"
        movieList.push(movieJson)
    end
end 

puts "Raw List: " + movieList.length.to_s

# Add source property
# movieList.each do |movie| movie["Source"]="Netflix" end

# Save File
File.write('C:\projects\aatron\blog\_lists\docList.json', JSON.dump(movieList))

