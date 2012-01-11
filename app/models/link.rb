class Link < ActiveRecord::Base
  has_one :media, :as => :media
  
  delegate :title, :description, :to => :media
end
