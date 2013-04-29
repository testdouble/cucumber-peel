require 'cucumber_peel/cucumber_actions'

module CucumberPeel
  class Cli
    include CucumberActions

    def run
      config = create_cucumber_configuration
      runtime = start_cucumber(config)
      puts "Cucumber runtime loaded. Enter steps to search for."

      while true
        print "> "
        step_name = gets.chomp
        break if step_name == "exit"
        puts find_cucumber_step(runtime, step_name)
      end
    end

  end
end
