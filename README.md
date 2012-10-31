#Voter Registration App for the Deaf

##About

PahVote’s goal is to empower Deaf and Hard of Hearing Americans to become a part of our nation’s political processes.

We hope to achieve this by simplifying the process of becoming a voter, while also offering explanations in American Sign Language for concepts related to voting.

The Democratic National Committee created this open source application to provide more opportunities to register to vote in November!  States have varying laws for voter registration, so this application is a one stop shop that contains all the voter registration information and voting checklists that you will need to vote. **This information should not be altered.**

You can help all eligible voters register to vote by using this software.

# What is it?

A Ruby on Rails Application that generates a [National Voter Registration Form](http://www.eac.gov/voter_resources/register_to_vote.aspx) PDF from a web form.
Includes the guidelines for the National Voter Registration form in all
states.

## Demo
You can see a running version of the application at
[http://pahvote.herokuapp.com/](http://pahvote.herokuapp.com/)

## Requirements
1.  Make sure the machine that you're using has Ruby 1.9.3 installed.
    We use [rbenv](https://github.com/sstephenson/rbenv/) for Ruby version management
2.  You'll need the RubyGem "bundler" installed.

## Installation

    git clone https://github.com/ewilliam/PahVote.git
    cd PahVote
    bundle install
    rake db:migrate
    rake db:seed #This will load all the State information

## Usage
    rails server

Open up your browser and go to http://localhost:3000

## Deploying to [Heroku](http://www.heroku.com)
You can setup a Heroku account for free [https://devcenter.heroku.com/articles/quickstart](https://devcenter.heroku.com/articles/quickstart)

    heroku create
    heroku add ons:add send grid:starter #Free add-on used for devise emails
    git push heroku master
    heroku run rake db:migrate
    heroku run rake db:seed

## Running Tests

We use RSpec for tests: `bundle exec rake spec`

## Admin the pages
We use [rails_admin](https://www.github.com/sferik/rails_admin) to manage the State Guidelines
Go to "/admin" to login and manage the Guidelines

The default email: admin@example.com    
The default password: p@ssw0rd   

## Supported Ruby Versions
This application aims to support and is tested against the following Ruby
implementations:

* Ruby 1.9.2
* Ruby 1.9.3

## Contributing
In the spirit of [free software][free-sw], **everyone** is encouraged to help
improve this project.

[free-sw]: http://www.fsf.org/licensing/essays/free-sw.html

[locales]: https://github.com/ewilliam/PahVote/tree/master/config/locales
[issues]: https://github.com/ewilliam/PahVote/issues

## Submitting a Pull Request
1. Fork the project.
2. Create a topic branch. (`git checkout -b my_awesome_branch`)
3. Implement your feature or bug fix.
4. Add tests for your feature or bug fix.
5. Run `bundle exec rake spec`. If your changes are not 100% covered, go back
   to step 4.
6. Commit your changes. (`git commit -am "Added some cool things"`)
7. Push to the branch (`git push origin my_awesome_branch`)
8. Submit a [pull request](https://help.github.com/articles/using-pull-requests/)

## Documentation

Documentation is available in the **/doc** directory in the root of the project.

## License

Copyright © 2012 DNC Services Corporation
http://www.democrats.org/

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

This permission does not include: (a) any use of the Software other than for its intended purpose; or (b) any use of the Software in any manner that violates applicable law.  Any use of the Software other than as specifically authorized herein is strictly prohibited and will terminate the license granted herein.

All information, dates and content included in the Software are subject to change given the subject matter of the Software.  It is the responsibility of the user of the Software hereunder to monitor changes in applicable law.  Future versions of the Software may include updated content to reflect any changes in applicable law.
