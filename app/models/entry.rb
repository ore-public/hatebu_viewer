class Entry < ActiveRecord::Base
  attr_accessible :description, :title, :url, :users, :view_at

  default_scope order("created_at")
end
