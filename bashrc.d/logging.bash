#
# logr should be loaded by profile, but in some scenarios (i.e. scp) profile doesn't
# get run. This check is logr is loaded, and if not, loads it.

type logr >/dev/null 2>&1
if [[ $? == 1 ]]; then
    source $CONFIG_DIR/scripts/logr.bash
fi
