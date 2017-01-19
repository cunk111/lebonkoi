This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 2.3.3
* Rails version: 5.0.1
* Postgresql: 9.6.1

* System dependencies
1/ Get node.js :
sudo brew uninstall node
  brew update
  brew upgrade
  brew cleanup
  brew install node
  sudo chown -R $(whoami) /usr/local
  brew link --overwrite node
  brew postinstall node
    -> npm install bower
    -> Remplir manuellement Bowerfile
    -> rake bower:install

* Configuration
  -> brew install portgres
    -> psql postgres (?)

* Database creation
N/A

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
