require 'spec_helper'

describe User do
  subject { user }
  
  let(:role) { Role.new :name => 'admin' }
  let(:user) { User.new :role => role }
  
  it { should belong_to :role }

  it { should delegate :name, :to => :role }

  it { should delegate :tomorrow, :to => :date }
  it { should delegate :yesterday, :to => :date }
  
  it { should delegate :can_email?, :to => :permissions }
end
