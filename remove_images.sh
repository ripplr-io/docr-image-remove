TAGS=$(doctl registry repository lt $1 --format Tag,UpdatedAt | tail -n +2 | sort -rk2 | awk '{print $1}' | grep -v latest | tail -n +$2 | tr '\n' ' ')
echo Tags to be removed: $TAGS
[[ -n $TAGS ]] && doctl registry repository dt $1 $TAGS --force; true
