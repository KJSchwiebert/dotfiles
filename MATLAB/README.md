# MATLAB Config

To use this config for MATLAB simply:
1.  If the install is on windows and you are launching this script from WSL,
    you will need to run `./update.sh` initially and every time the scripts
    are updated. Changes made directly inside the MATLAB `userpath` directory
    will be overwritten. This is awkward, but this is the best solution given
    that links across WSL to windows FS does not work.
2.  Under Linux or with a WSL install of MATLAB, 
    simply run `./install.sh` one time and soft links will ensure syncing.
    Note that as of this note, a pure WSL install of MATLAB is not officially
    supported by Mathworks.
