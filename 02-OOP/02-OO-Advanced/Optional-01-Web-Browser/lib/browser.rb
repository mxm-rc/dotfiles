require 'open-uri'
require 'nokogiri'

class Browser

  attr_reader :fetch_content

  def initialize(url = '')
    @url = url
  end

  def fetch_content(url)
    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML.parse(html_file)
    html_doc.search("h1").text
  end
end
