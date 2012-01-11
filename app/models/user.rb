class User < ActiveRecord::Base
  belongs_to :role
  
  delegate :name, :to => :role
  delegate :tomorrow, :yesterday, :to => :date
  
  def date
    Date
  end
end
