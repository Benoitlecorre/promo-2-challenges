require 'open-uri'
require 'nokogiri'

class Scraper

  attr_reader(:doc)

  def initialize(url)
    @url = url
    @html_file = open(url)
    @doc = Nokogiri::HTML(html_file)
  end

end

class ScraperHackerNews < Scraper

  def initialize
    url = "http://news.ycombinator.com"
    super(url)
  end

  def scrap
    posts = []

    @doc.search('.title > a').each do |element|
      title = element.inner_text
      source_url = element['href']
      if element.parent.parent.next_sibling == nil  search('.subtext > span').inner_text(/\d/)

      date = Time.now
      posts << {title: title, source_url: source_url, rating: rating, date: date}
    end
    posts
  end

end

#il faudra appeler la méthode scrap