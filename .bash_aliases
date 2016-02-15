export USE_CCACHE=1	
export PATH=$PATH:/home/j2ko/.scripts
export PATH=$PATH:/home/j2ko/Project/chrome/depot_tools
export PATH=$PATH:/home/j2ko/Software/sbt/bin

# RUST 
export EDITOR='vim'
export RUST_SRC_PATH=/home/j2ko/Software/rust/src
export PATH=$PATH:/home/j2ko/.cargo/bin
alias cb='cargo build'
alias cr='cargo run'
alias ct='cargo test'

# PEBBLE
export PATH=$PATH:/home/j2ko/Project/pebble/pebble-dev/PebbleSDK/bin
alias pb='pebble build'
alias pe='pebble install --emulator basalt'
alias pi='pebble install --phone 192.168.2.101'
alias pbe='pb && pe'
alias pbi='pb && pi'

alias tmux='tmux -2'
