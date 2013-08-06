# Switch to Ruby 2 with a gemset of the current directory
function rb2 {
  rvm use ruby-2.0.0@${PWD##*/} --create
}
