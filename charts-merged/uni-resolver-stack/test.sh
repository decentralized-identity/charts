#!/bin/bash
set -e 
set -o pipefail

BASE_URL=$1
BASE_URL=${BASE_URL:-"http://localhost:8080"}

get(){
  local url=$1
  echo "GET: $url"
  curl -X GET -sSL "$url" | jq
  echo ""
}


get $BASE_URL/1.0/identifiers/did:ethr:0x5e83bdddabf559338c22986bdb7a50955a7d53ca
get $BASE_URL/1.0/identifiers/did:sov:CYQLsccvwhMTowprMjGjQ6
get $BASE_URL/1.0/identifiers/did:sov:staging:HDxEn7WFojZb6UeDt5UBJp
get $BASE_URL/1.0/identifiers/did:web:did.actor:alice
get $BASE_URL/1.0/identifiers/did:key:z6Mkfriq1MqLBoPWecGoDLjguo1sB9brj6wT3qZ5BxkKpuP6
