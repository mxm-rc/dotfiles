require "open-uri"
require "nokogiri"

def scrape_craiglist_antiques(city)
  # TODO: return an array of Antiques found of Craigslist for this `city`.
  doc = Nokogiri::HTML.parse(URI.open("https://#{city}.craigslist.org/search/ata#search=1~gallery~0~0").read)
  antiques_array = []
  if city == "paris"
    doc.search('.result-title.hdrlnk').each { |i| antiques_array << i.text }
  else
    doc.search('.cl-static-search-result').each do |element|
      antiques_array << element.text
    end
  end
  antiques_array
end

puts scrape_craiglist_antiques("london")
