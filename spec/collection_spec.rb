require File.join(File.dirname(__FILE__), 'spec_helper.rb')

require 'collection'

describe Collection do
  
  before(:each) do
    @it = Collection.new
  end
  
  it_should_behave_like "securable"
  it_should_behave_like "versionable"
  
  it "reveals members not marked as concealed"
  it "conceals members not marked as discoverable with the provided key"
  it "reveals members marked as discoverable with the provided key"
  
end