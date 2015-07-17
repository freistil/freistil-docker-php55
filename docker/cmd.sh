#!/bin/bash -e

# Make init scripts executable
chmod +x $( find /docker -name '*.sh' )
sync

# Execute init scripts
for initscript in /docker/init/*.sh; do
  echo "=> Initialising $initscript"
  $initscript
done

# Launch service
if [ -x /docker/service.sh ]; then
  echo "=> Starting service..."
  /docker/service.sh
fi
