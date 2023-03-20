#!/usr/bin/env bash

if [ "$BITRISE_TRIGGERED_WORKFLOW_TITLE" = "qa" ]; then
    cp ./env/.env.qa ./env/.env
elif [ "$BITRISE_TRIGGERED_WORKFLOW_TITLE" = "dev" ]; then
    cp ./env/.env.dev ./env/.env
elif [ "$BITRISE_TRIGGERED_WORKFLOW_TITLE" = "staging" ]; then
    cp ./env/.env.staging ./env/.env
elif [ "$BITRISE_TRIGGERED_WORKFLOW_TITLE" = "prod" ]; then
    cp ./env/.env.prod ./env/.env
else
    echo "No environment specified!"
fi