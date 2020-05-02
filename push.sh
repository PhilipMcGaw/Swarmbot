#!/bin/sh

# Add everything
git add -A

# Commit all changes with a un-helpful message (should change to mark date and time)
git commit -m "Added stuff using push.sh"

# Pull before anything else
git pull

# Push our changes
git push origin master