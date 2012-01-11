require 'spec_helper'

describe User do
  subject { user }
  
  let(:role) { Role.new :name => 'admin' }
  let(:user) { User.new :role => role }
  
  it { should belong_to :role }

  it { should delegate :name, :to => :role }
end
