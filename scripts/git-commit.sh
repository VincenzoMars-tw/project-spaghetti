#!/bin/sh
# Wrapper: git commit without -m → Commitizen, with -m → real commit
if [ "$1" = "-m" ] || [ "$1" = "--message" ]; then
  exec git -c alias.commit= commit "$@"
fi
# Give cz a TTY so the wizard runs; if no TTY (e.g. IDE), show message and exit
if ( exec 0< /dev/tty ) 2>/dev/null; then
  exec < /dev/tty npx cz "$@"
else
  echo "" >&2
  echo "Commitizen needs an interactive terminal. This environment has no TTY." >&2
  echo "Run instead:  npm run commit" >&2
  echo "" >&2
  exit 1
fi
