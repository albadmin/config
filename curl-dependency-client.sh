#!/bin/bash

TOKEN=$(curl -X POST -H 'Accept: application/json' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Authorization: Basic b3BlbmJhdG9uT1NDbGllbnQ6c2VjcmV0'  --data 'username=admin&password=openbaton&grant_type=password' http://localhost:8080/oauth/token | jq -r '.value')

curl -X GET -H 'Accept: application/json' -H 'project-id: 5c1ad332-d082-46b6-b3d7-94497c7468ad' -H "Authorization: Bearer ${TOKEN}" http://localhost:8080/api/v1/wizzard/dependency/e8f23360-9327-490e-9c4b-b288a3f93009/vnfName/iperf-server


