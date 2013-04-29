require 'thor'
require 'cucumber_peel/cucumber_actions'

module CucumberPeel
  class Cli < Thor
    include CucumberActions

    desc "find", "find the step you're looking for - `cucumber-peel find \"And I do stuff\"`"
    def find(step_name)
      start_cucumber

      puts "HI"
    end

  end
end
