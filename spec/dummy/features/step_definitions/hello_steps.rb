Given /do stuff/ do
  require 'ruby-debug'; debugger; 2;
end

Then /I say hello/ do
  require 'ruby-debug'; debugger; 2;
  step "do stuff"
end
