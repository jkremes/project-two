#!/bin/bash

curl "http://localhost:4741/articles/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "article": {
      "description": "'"${DESCRIPTION}"'",
      "size": "'"${SIZE}"'",
      "color": "'"${COLOR}"'"
    }
  }'

echo
