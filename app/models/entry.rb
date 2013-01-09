class Entry < ActiveRecord::Base
  attr_accessible :description, :title, :url, :users, :view_at
end
