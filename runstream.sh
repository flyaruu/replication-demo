#!/bin/sh
docker run -it -p 8080:8080 \
	-e CLUSTER=demo \
	-e INTERACTIVE=true \
	-e CLUSTER_USE_DEFAULT_CLASSLOADER=true \
	-e DIRECT_SINK=false \
	-e ENABLE_TENANTLESS=true \
	-e FILE_REPOSITORY_DEPLOYMENT=test \
	-e FILE_REPOSITORY_FILEINSTALL=etc \
	-e FILE_REPOSITORY_MONITORED=streams \
	-e GIT_REPOSITORY_TYPE=any \
	-e KAFKA_STREAMS_THREADCOUNT=1 \
	-e TOPIC_REPLICATION_COUNT=1 \
	-e FILTER_INSTANCES=clubinstances,simple,address \
	-e GENERATION=2 \
	-e HAZELCAST_SIMPLE=true \
	-e INSTANCENAME=instance-1 \
	-e KAFKA_STREAMS_DISABLECACHE=true \
	-e PRETTY_JSON=true \
	-e REPLICATION_MESSAGE_FORMAT=JSON \
	-e TENANT_MASTER=MOCKUP \
	dexels/navajo-bare:4.5.0