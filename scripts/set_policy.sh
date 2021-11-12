#!/bin/bash
mc alias set buckets http://127.0.0.1:9000 $ACCESS_KEY $PRIVATE_KEY
mc policy set-json policy.json buckets/$BUCKET_NAME
