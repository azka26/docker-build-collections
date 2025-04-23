#!/bin/bash
while true
do
    echo "Starting GitHub Actions Runner..."
    bash -c /home/gitaction/actions-runner/run.sh
    echo "GitHub Actions Runner stopped. Restarting in 5 seconds..."
    sleep 5
done
