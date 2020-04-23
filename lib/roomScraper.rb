class RoomScraper

    def initialize(index_url)
        @doc = Nokogiri::HTML(open(index_url))
    end

    
    def call
        rows.each do |row_doc|
            Room.create_from_hash(scrape_row(row_doc))
        end
    end

    private

    def rows
        @row ||= @doc.search("ul.rows li.result-row")
    end

    def scrape_row(row)
        {
        :date_created  => row.search("time").attribute("datetime").text,
        :title =>  row.search("a.result-title.hdrlnk").text,
        :url => row.search("a.result-title.hdrlnk").attribute("href").text,
        :price => row.search("span.result-price").text
        }
    end  
end
