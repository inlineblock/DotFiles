# Switch to Ruby 2 with a gemset of the current directory
function nx {
   $(npm bin)/$@  
}

function msh {
  mosh $1 -- tmux a
}
