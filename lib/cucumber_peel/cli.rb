require 'thor'
require 'cucumber_peel/cucumber_actions'

module CucumberPeel
  class Cli < Thor
    include CucumberActions

    desc "find STEP_NAME", "find the step you're looking for - `cucumber-peel find \"And I do stuff\"`"
    def find(step_name)
      config = create_cucumber_configuration
      runtime = start_cucumber(config)
      find_cucumber_step(runtime, step_name)
      puts runtime.step_match(step_name).file_colon_line
    end

  end
end
