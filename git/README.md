# Git

Git configuration is driven by two files:

- [workspace config](./.gitconfig): the operative config file; all edits
are made to this file directly and propagated to the linked file. This file is
version controlled and revisions are always committed and pushed to remote.

- symlinked config (`$HOME/.gitconfig`): the linked file. This file should not be
modified directly.

## Setup

[initialize_config.sh](./initialize_config.sh) will create the linked file and
add an alias for editing.
