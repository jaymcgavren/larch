require File.join(File.dirname(__FILE__), 'spec_helper.rb')

require 'resource'

describe Resource do
  
  before(:each) do
    @it = Resource.new
  end
  
  it_should_behave_like "readable"
  it_should_behave_like "writable"
  it_should_behave_like "linkable"
  it_should_behave_like "securable"
  it_should_behave_like "versionable"
  it_should_behave_like "observable"
  
end