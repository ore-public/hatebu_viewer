require 'nokogiri'
require 'open-uri'
require 'cgi'

class Scrape

  def execute(page)
    hatebu_entries = Array.new

    doc = Nokogiri.HTML(open("http://b.hatena.ne.jp/"))

  end

end
