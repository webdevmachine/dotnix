#! /bin/bash
# shellcheck disable=SC2034

SPACESHIP_PROMPT_ORDER=(
  dir
  git
  async
  line_sep
  char
)

SPACESHIP_RPROMPT_ORDER=(
  node
  bun
  deno
  python
  venv
  golang
  lua
  docker
  docker_compose
  kubectl
  nix_shell
)

SPACESHIP_PROMPT_DEFAULT_PREFIX="| "
SPACESHIP_PROMPT_DEFAULT_SUFFIX=" "

SPACESHIP_GIT_ORDER=(git_branch git_commit git_status)
SPACESHIP_GIT_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"

SPACESHIP_GIT_COMMIT_SHOW=true
SPACESHIP_GIT_COMMIT_SUFFIX=" "

SPACESHIP_GIT_STATUS_PREFIX="("
SPACESHIP_GIT_STATUS_SUFFIX=")"
