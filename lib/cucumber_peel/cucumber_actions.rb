require 'cucumber'

module CucumberPeel
  module CucumberActions
    def create_cucumber_configuration
      require 'cucumber/cli/configuration'
      Cucumber::Cli::Configuration.new.tap do |c|
        c.parse!([])
      end
    end

    def start_cucumber(configuration)
      require 'cucumber/runtime'
      Cucumber::Runtime.new(configuration).tap do |r|
        r.send(:load_step_definitions)
      end
    end

    def find_cucumber_step(runtime, name)
      runtime.step_match(name).file_colon_line
    rescue
      "No step found: #{name}"
    end
  end
end
