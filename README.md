# PhraseFinder

This program comprises a CLI for generating phrasebooks in various world languages as gleaned from (https://www.omniglot.com/index.htm). Running the program prompts a number indexed menu of languages for user selection. At the command line the user can input a language index number to print a set of translated phrases, type "print" to reprint the menu, or type "exit" to leave the program. Invalid inputs return the message "Invalid input."

## Installation

This program can be cloned from .

The user should then run 'bundle install' in the terminal.

The program is executed with the command: "ruby bin/phrase_finder_run".

Add this line to your application's Gemfile:

```ruby
gem 'phrase_finder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install phrase_finder

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/phrase_finder. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PhraseFinder project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/phrase_finder/blob/master/CODE_OF_CONDUCT.md).
