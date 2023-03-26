#!/bin/bash

# Define the Graphite server details
GRAPHITE_HOST="localhost"
GRAPHITE_PORT=2003

# Define the metrics and their prefixes
METRICS=(
  "test.prefix1.test.metric1"
  "test.prefix2.test.metric2"
  "test.prefix3.test.metric3"
)

# Function to generate random value between 0 and 100
function random_value {
  echo $(bc <<< "scale=2; $RANDOM/327.67")
}

# Generate and push random data to Graphite every 5 seconds
while true; do
  TIMESTAMP=$(date +%s)
  for METRIC in "${METRICS[@]}"; do
    METRIC_VALUE=$(random_value)
    DATA="$METRIC $METRIC_VALUE $TIMESTAMP\n"
    echo -e $DATA | nc -q0 $GRAPHITE_HOST $GRAPHITE_PORT
  done
  sleep 5
done
