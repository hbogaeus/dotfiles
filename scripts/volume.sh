if [[ $# -eq 0  ]] ; then
  echo "Usage: `basename $0` <+/- volume>"
  exit 1
fi

CURRENT_SINK=$( pactl list short | grep RUNNING | sed -e 's,^\([0-9][0-9]*\)[^0-9].*,\1,')

if [ "$1" = "mute" ] ; then
  eval "pactl set-sink-mute ${CURRENT_SINK} toggle"
else
  eval "pactl set-sink-mute ${CURRENT_SINK} false; pactl set-sink-volume ${CURRENT_SINK} $1%"
fi


