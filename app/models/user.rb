class User < ActiveRecord::Base
  belongs_to :role
  
  delegate :name, :to => :role
  delegate :tomorrow, :yesterday, :to => :date
  delegate :can_email?, :to => :permissions
  
  def date
    Date
  end
  
  def permissions
    return @permissions if defined?(@permissions)
    @permissions = Permissions.new(self)
  end
end
