#!/bin/sh

# Generate host keys if not present
ssh-keygen -A

if [ -x /bin/zsh ]; then
  export SHELL=/bin/zsh
  export PATH=/usr/local/bin:$PATH
fi

exec /usr/sbin/sshd -D -e "$@"
