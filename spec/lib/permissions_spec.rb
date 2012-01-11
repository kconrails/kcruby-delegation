require 'spec_helper'

describe Permissions do
  let(:user) { stub('user', :email => user_email) }
  
  let(:user_email) { 'bob@example.com' }
  let(:related_email) { 'tom@example.com' }
  let(:unrelated_email) { 'bob@unrelated.com' }
  
  describe "can_email?" do
    subject { Permissions.new(user) }
    
    specify { subject.can_email?(user_email).should be_true }
    specify { subject.can_email?(related_email).should be_true }
    specify { subject.can_email?(unrelated_email).should be_false }
  end
end
