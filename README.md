# minio-docker-compose
**Usage:**

*Copy git repo*

  git clone https://github.com/Vasyalisk/minio-docker-compose.git
  cd minio-docker-compose

*Set-up bucket and .env*

  docker-compose up

*Go to http://localhost:9000
Create new bucket, e.g. "localbucket"
Create new service account, copy access and secret key.
Create .env from env.exmple and fill credentials*

*Edit policy file in scripts/policy.example.json accrodingly
and copy 2 files into autimatically created /data/minio folder*

  cp scripts/policy.example.json data/minio/policy.json
  cp scripts/set_policy.sh data/minio/set_policy.sh

  docker-compose exec minio bash
  cd /data/minio
  sh set_policy.sh

*For any further policy changes edit policy.json in data/minio and re-run script inside docker*
