require 'rss'

class HatenaRss

  def execute

    Entry.delete_all

    hotentry_rss = RSS::Parser.parse('http://feeds.feedburner.com/hatena/b/hotentry')

    hotentry_rss.items.each do |item|
      Entry.where(url: item.link).first_or_create(
          title: item.title,
          description: item.description,
          view_at: item.dc_date
      )
    end

  end

end
