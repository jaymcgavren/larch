require File.join(File.dirname(__FILE__), 'spec_helper.rb')


shared_examples_for "all" do
  it "fails if method timeout exceeded"
  it "allows setting an exception handler"
  it "offers before and after hooks for arbitrary methods"
end


shared_examples_for "readable" do
  it {@it.should respond_to(:read)}
  it "has a published data type"
  it "can be set up to track access count"
  it "can be set up to track access credentials"
end


shared_examples_for "writable" do
  it {@it.should respond_to(:write)}
  it "has an expected data type"
end


shared_examples_for "linkable" do
  it {@it.should respond_to(:link)}
  it "links to other resources"
  it "links to collections"
  it "can be linked from a collection"
end


shared_examples_for "securable" do
  it {@it.should respond_to(:secure)}
  it "allows requiring a key for any method"
  it "allows setting an authorization failure handler on the server side, that client isn't aware of"
  it "can give information on operation user was trying to perform when authorization failed"
end


shared_examples_for "versionable" do
  it "stores a new version each time it's written"
  it "allows linking to any version"
  it "allows linking to whatever is current version"
end


shared_examples_for "observable" do
  it "allows adding an observer"
  it "notifies observers when it is updated"
end


shared_examples_for "enumerable" do
  it "allows method hooks for item retrieval"
  it "allows method hooks for item adding"
  it "allows retrieving only items that match a pattern"
  it "can be set up to return certain objects only with an appropriate key"
  it "does not indicate there is a next element if the given key does not allow discovery of final element"
end





# Convert to appropriate format.
# Global search?  Or allow any object to have specialized methods that take arguments?
# Optional author attributes for all objects.
# Require key to list objects in a collection.
# Publish updates to any member of a collection to subscribers.
# Optionally link to specific revision when linking to a resource.
# Schema for expected linked attributes and acceptable values.
