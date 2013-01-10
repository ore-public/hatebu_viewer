task :update_feed => :environment do
  rss = HatenaRss.new
  rss.execute
end