gems_loaded = false
begin
	require 'spec'
rescue LoadError
	if gems_loaded == false
		require 'rubygems'
		gems_loaded = true
		retry
	else
		raise
	end
end


require File.join(File.dirname(__FILE__), 'shared_examples.rb')
