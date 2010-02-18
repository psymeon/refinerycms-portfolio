# Portfolio plugin for [RefineryCMS](http://www.refinerycms.com)
[Github](http://github.com/resolve/refinerycms)

By: [Resolve Digital](http://www.resolvedigital.com)

## Plugin Installation

Just 'git clone' Refinery, install this as a plugin using:
  script/plugin install git://github.com/resolve/refinerycms-portfolio.git

Then run:
  rake refinery:portfolio:install

..and follow the instructions!

## Gem Installation

### Method One
Just install the gem 'portfolio' with the command:
  gem install refinerycms-portfolio --source http://gemcutter.org

Then run:
  refinerycms-portfolio-install /path/to/your/refinery/application

Then place in your config/environment.rb (or config/application.rb for refinery 0.9.6.x) file before all other Refinery gem calls:
  config.gem "refinerycms-portfolio", :version => ">= 0.9.3.6", :lib => "portfolio", :source => "http://gemcutter.org"

..and follow the instructions!

### Method Two
Place in your config/environment.rb (or config/application.rb for refinery 0.9.6.x) file before all other Refinery gem calls:
  config.gem "refinerycms-portfolio", :version => ">= 0.9.3.6", :lib => "portfolio", :source => "http://gemcutter.org"

Then run in your application's directory:
  rake gems:install

Then run:
  refinerycms-portfolio-install /path/to/your/refinery/application

..and follow the instructions!