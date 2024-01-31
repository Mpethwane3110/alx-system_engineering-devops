#!/usr/bin/env bash
# Requests Datadog API to get dashboard info, incl ID
api_key="23b8278957442b9b2a396fc2cd10c98a"

curl -X GET \
-H "DD-API-KEY: ${api_key}" \
-H "DD-APPLICATION-KEY: ${app_key}" \
"https://api.datadoghq.com/api/v1/dashboard"
