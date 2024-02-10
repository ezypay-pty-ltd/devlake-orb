#!/bin/bash

# For ENV that are strings, need variable substitution
# https://circleci.com/docs/orbs-best-practices/#accepting-parameters-as-strings-or-environment-variables
CONTEXT=$(circleci env subst "${GET_CONTEXT}")

echo "context: ${CONTEXT}"
# TODO: get start time from before the deployment started with a different orb step
start_time=$(date '+%Y-%m-%dT%H:%M:%S%z')
echo "reporting deployment"
echo "commit_sha: $CIRCLE_SHA1"
echo "repo_url:   $CIRCLE_REPOSITORY_URL"
echo "pipeline_id: $CIRCLE_BUILD_NUM"
echo "ref_name:   $CIRCLE_USERNAME"
echo "start_time: $start_time"
