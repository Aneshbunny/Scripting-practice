#!/bin/bash
START_TIME=$(date +%s)
echo "script excueted at:$START_TIME"
sleep 50
END_TIME=$(date +%s)
TOTAL_TIME=(($START_TIME-$END_TIME))
echo "script excueted in:$TOTAL_TIME