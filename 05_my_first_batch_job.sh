#!/bin/bash

# Variables
source variables.sh

pool_id="batch-ws-pool"

# Create job
# job = container fuer tasks
az batch job create \
    --id my-first-batch-job \
    --pool-id ${pool_id}

# Create tasks
for i in {1..4}
do
   az batch task create \
    --task-id mytask$i \
    --job-id my-first-batch-job \
    --command-line "/bin/bash -c 'printenv | grep AZ_BATCH; sleep 90s'"
done

# List task
az batch task file list \
    --job-id my-first-batch-job \
    --task-id mytask1 \
    --output table

# Download output of task1
az batch task file download \
    --job-id my-first-batch-job \
    --task-id mytask1 \
    --file-path stdout.txt \
    --destination ./stdout.txt

# Download error file of task1
az batch task file download \
    --job-id my-first-batch-job \
    --task-id mytask1 \
    --file-path stderr.txt \
    --destination ./stderr.txt