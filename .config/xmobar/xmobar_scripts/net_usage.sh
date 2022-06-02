#!/usr/bin/bash

LOW=0
MEDIUM=30
HIGH=150

LOG_FILE="${XDG_CACHE_HOME:-$HOME/.cache}/net_usage"

read PREV_RX PREV_TX < "$LOG_FILE"

CURRENT_RX=$(($( \
	ls -1 /sys/class/net/ \
	| grep -vP "lo" \
	| while read f; do echo "/sys/class/net/$f/statistics/rx_bytes"; done \
	| xargs cat \
	| paste -sd "+")))
CURRENT_TX=$(($( \
	ls -1 /sys/class/net/ \
	| grep -vP "lo" \
	| while read f; do echo "/sys/class/net/$f/statistics/tx_bytes"; done \
	| xargs cat \
	| paste -sd "+")))

if [ ! -f "$LOG_FILE" ]; then
	echo "$DELTA_RX $DELTA_TX" > "$LOG_FILE"
fi

DELTA_RX="$(((CURRENT_RX-PREV_RX)))"
DELTA_TX="$(((CURRENT_TX-PREV_TX)))"

DELTA_RX_KB="$((DELTA_RX/1024))"
DELTA_TX_KB="$((DELTA_TX/1024))"

LIGHT_GRAY="#696969"
GREEN="#006400"
YELLOW="#DAA520"
RED="#DC143C"
GLYPH_COLOR=""

if [ $# -gt 0 ] && [ $1 != "" ]; then
	GLYPH_COLOR=$1
fi

RX_COLOR=$LIGHT_GRAY
TX_COLOR=$LIGHT_GRAY

if [ "$DELTA_RX_KB" -gt "$HIGH" ]; then
	RX_COLOR=$RED
elif [ "$DELTA_RX_KB" -gt "$MEDIUM" ]; then
	RX_COLOR=$YELLOW
elif [ "$DELTA_RX_KB" -gt "$LOW" ]; then
	RX_COLOR=$GREEN
fi

if [ "$DELTA_TX_KB" -gt "$HIGH" ]; then
	TX_COLOR=$RED
elif [ "$DELTA_TX_KB" -gt "$MEDIUM" ]; then
	TX_COLOR=$YELLOW
elif [ "$DELTA_TX_KB" -gt "$LOW" ]; then
	TX_COLOR=$GREEN
fi

RX_TEXT=$(printf "<fc=$RX_COLOR,#87CEEB><fn=2>  </fn> %s kB/s</fc>" "$DELTA_RX_KB")
TX_TEXT=$(printf "<fc=$TX_COLOR,#87CEEB><fn=2>  </fn> %s kB/s</fc>" "$DELTA_TX_KB")
# RX_TEXT=$(printf "▼ %s KiB" "$DELTA_RX_KB")
# TX_TEXT=$(printf "▲ %s KiB" "$DELTA_TX_KB")

IP_ADDR=$(ip a | grep -P "\d.*state UP.*" | cut -d ":" -f1 | xargs ip route get | head -n 1 | awk '{print $7}')

if [ ! -z "$IP_ADDR" ]; then
	IP_ADDR=" $IP_ADDR"
fi

echo "$CURRENT_RX $CURRENT_TX" > "$LOG_FILE"
echo "<fn=4><fc=$GLYPH_COLOR,#87CEEB>  </fc></fn><fc=,#87CEEB>$RX_TEXT $TX_TEXT</fc><fc=#2B2B2B,#87CEEB> -$IP_ADDR</fc>"
