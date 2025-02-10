#!/bin/bash

# Script to recreate common tmux sessions
# Usage: ./restore-tmux.sh

# Function to create a new session if it doesn't exist
create_session() {
  local session_name=$1
  local start_dir=$2
  local window_name=$3

  # Check if session exists
  tmux has-session -t "$session_name" 2>/dev/null

  # If session doesn't exist, create it
  if [ $? != 0 ]; then
    echo "Creating session: $session_name"

    # Create new session detached with specific window name
    tmux new-session -d -s "$session_name" -c "$start_dir" -n "$window_name"

    # Example: For development session, create additional windows
    if [ "$session_name" = "dev" ]; then
      # Create a window for running tests
      tmux new-window -t "$session_name":1 -n "tests" -c "$start_dir"
      # Create a window for git operations
      tmux new-window -t "$session_name":2 -n "git" -c "$start_dir"
    fi

    # Select first window
    tmux select-window -t "$session_name":0
  else
    echo "Session $session_name already exists"
  fi
}

# Create common sessions
create_session "main" "$HOME/" "home"
create_session "anchor" "$HOME/Worspace/Projects/anchorpoint/" "anchor"
create_session "config" "$HOME/.dots/" "dots"
create_session "bell" "$HOME/Worspace/session8/projetglo-bell/" "bell"
create_session "traitement" "$HOME/Worspace/session8/traitementDonneeMassive/" "traitement"

# Optional: Attach to dev session if not already in tmux
if [ -z "$TMUX" ]; then
  tmux attach-session -t main
fi
