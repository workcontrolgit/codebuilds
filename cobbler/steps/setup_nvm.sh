#!/bin/bash
set -e;

echo "Running NVM installer";
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash;

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash -s -- --no-use
              echo 'export NVM_DIR=$HOME/.nvm' >> $BASH_ENV
              echo 'source $NVM_DIR/nvm.sh' >> $BASH_ENV
              
echo "Setting up NVM";
/bin/bash -c 'nvm install $1; nvm use $1; nvm alias default $1;'
  
echo "Setting python binding";
npm config set python `which python`;

echo "Installing common npm dependencies";
npm install -g gulp yarn;
