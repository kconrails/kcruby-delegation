class User < ActiveRecord::Base
  belongs_to :role
  
  delegate :name, :to => :role
end
