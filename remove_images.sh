IMAGES=$(doctl registry repository lt $1 --format Tag,UpdatedAt | tail -n +2 | sort -rk2 | awk '{print $1}')
ALL_IMAGES=$(echo $IMAGES | tr '\n' ' ')
OLD_IMAGES=$(echo $IMAGES | grep -v latest | tail -n +$2 | tr '\n' ' ')
echo All Images: $ALL_IMAGES
echo Old Images: $OLD_IMAGES
