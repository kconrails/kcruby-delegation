class Permissions
  attr_reader :user
  
  def initialize user
    @user = user
  end
  
  def can_email? email
    user.email.split('@').last == email.split('@').last
  end
end