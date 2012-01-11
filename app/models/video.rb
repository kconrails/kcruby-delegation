class Video < ActiveRecord::Base
  has_one :media, :as => :media
  
  delegate :title, :to => :media
end
