# Switch to Ruby 2 with a gemset of the current directory
function rb2 {
  rvm use ruby-2.1.0@${PWD##*/} --create
}
