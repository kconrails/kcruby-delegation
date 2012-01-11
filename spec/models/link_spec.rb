require 'spec_helper'

describe Link do
  subject { link }
  
  let(:link) { Link.new :media => media }
  let(:media) { Media.new }
  
  it { should have_one(:media) }
  
  it { should delegate :title, :to => :media }
  it { should delegate :description, :to => :media }
end
