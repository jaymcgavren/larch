require File.join(File.dirname(__FILE__), 'spec_helper.rb')


shared_examples_for "readable" do
  it {@it.should respond_to(:read)}
  it "has a published data type"
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





# Convert to appropriate format.
# Hooks for any arbitrary method.
# Global search?  Or allow any object to have specialized methods that take arguments?
# Hook for when item is added to a collection.
# Optional author attributes for all objects.
# Hook for exceptions.
# Require key to list objects in a collection.
# Publish accesses to subscribers.
# Publish updates to any member of a collection to subscribers.
# Hook for listing items (for purpose of ignoring those that match a pattern).
# Hook for when you access an item within a collection.
# Hook for authorization failures, including data on operation they were trying to perform.
# Optionally link to specific revision when linking to a resource.
# Schema for expected linked attributes and acceptable values.
