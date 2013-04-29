# cucumber-peel

The indirection between gherkin in feature files and the location of step implementations (located in any arbitrarily named file and obfuscated by regex patterns) can be a moderate productivity drain when searching for the implementation of a given step.

This isn't much of a problem when your cucumber feature has a fast runtime, because Cucumber's default reporter prints the step implementation location in the margin, but running the entire feature to find out where a step lives can be quite cumbersome when your feature is very slow.

## usage

Start by adding cucumber-peel to your Gemfile (probably in a development group)

``` ruby
group :development do
  #...
  gem 'cucumber-peel'
end
``` 

Then once you've run `bundle install`, you can invoke the `cucumber-peel` binary:

```
$ bundle exec cucumber-peel
```

This will start a very simple REPL-like interface into which you can paste gherkin steps as you find them in your feature files.

```
Using the default profile...

Cucumber runtime loaded. Enter steps to search for.
> I am on the history reports page
/Users/justin/code/my_app/features/step_definitions/web_steps.rb:24
>
```

And then you can just hit Ctrl-C or type "exit" to quit.
