require 'csv'
require 'terminal-table'

# Get movie tags from CSV
def getMovieTagList(movieTags)
    # Get lists of movie tags under each category
    movieTagCsvRows = []
    movieTags.map{|item| item["Category"]}.uniq.each do |category|
        # Skip empty lines
        if category.nil? then
            next
        end

        # Makes sure that the index is unique for each item
        startIndex = movieTagCsvRows.length <= 0 ? 1 : movieTagCsvRows.last.last.split('.')[0].to_i + 1

        # Get array of tags with a unique number    
        movieTagMap = movieTags
                            .find_all{|item| item["Category"] == category && item["Name"] != ''}
                            .map{|item| item["Name"]}
                            .sort
                            .each_with_index
                            .map{|name,i| (i + startIndex).to_s + '.' + name}

        movieTagCsvRows.push(movieTagMap)
    end

    movieTagCsvRows
end

def getMovieTagDisplayTable(movieTags, movieTagCsvRows)
    # Build Movie Tag table
    movieTagRows = []
    categories = movieTags.map{|item| item["Category"]}.uniq
    rowCount = movieTagCsvRows.map{|movieTagList| movieTagList.length}.max

    # Transpose rows into columns for display table
    for i in 0..rowCount
        movieTagRows.push(movieTagCsvRows.map{|movieTagList| movieTagList.length > i ? movieTagList[i] : ''})
    end

    Terminal::Table.new :headings => categories, :rows => movieTagRows
end

def getMovieTags(movieTagPath)
    # Build CSV from text file
    movieTagText = File.read(movieTagPath)
    movieTags = CSV.new(movieTagText, :headers => true).to_a.map {|row| row.to_hash}
end

# def jsonSample(movieTagPath)
#     # Get tags from CSV file
#     movieTags = getMovieTags(movieTagPath)
#     movieTagList = getMovieTagList(movieTags)
#     movieTagDisplayTable = getMovieTagDisplayTable(movieTags, movieTagList)
#     
#     # Build flat list of tags, probably not a good pure Ruby way of building the list
#     movieTagListFlat = []
#     movieTagList.each do |movieTagRow|
#         movieTagListFlat += movieTagRow
#     end
# 
#     # Display table
#     puts "\e[H\e[2J"
#     puts movieTagDisplayTable
#     
#     # Get user input
#     tags = gets.gsub(/\n/,'').split(',')
#     selectedTags = tags.map{|tag| movieTagListFlat[tag.to_i - 1]}.find_all{|tag| !tag.nil?}
#     
#     # selectedTags.each{|selectedTag| puts selectedTag}
# end

def getFormattedTags(movieTagDisplayTable, movieTagListFlat)
    # Display table
    puts movieTagDisplayTable

    # Get user input
    tags = gets.gsub(/\n/,'').split(',')
    selectedTags = tags
                    .map{|tag| movieTagListFlat[tag.to_i - 1].split('.')[1]}
                    .find_all{|tag| !tag.nil?}
end