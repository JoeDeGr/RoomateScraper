require_relative './config/environment'

def reload!
    load_all './lib'
end

task :console do
    Pry.start
end
task :scrape_rooms do
    # instantiate a scraper, and then have it find new rooms.
    # hudson_valley_rooms = RoomScraper.new('https://hudsonvalley.craigslist.org/d/rooms-shares/search/roo')
    # hudson_valley_rooms.call
     nwct_rooms = RoomScraper.new('https://nwct.craigslist.org/search/roo')
     nwct_rooms.call

#     after this method we should be able to call Room.all and have rooms there.
end