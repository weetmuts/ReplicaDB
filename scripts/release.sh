#!/bin/bash

export REPLICADB_RELEASE_VERSION=0.15.99
echo ${REPLICADB_RELEASE_VERSION}
mvn clean install -Dmaven.javadoc.skip=true -DskipTests -B -V -P release
cp ./target/ReplicaDB-*.jar .
rm -rf lib
mkdir -p lib
echo ${REPLICADB_RELEASE_VERSION}
cp ./target/lib/* ./lib
tar -zcvf ReplicaDB-${REPLICADB_RELEASE_VERSION}.tar.gz ReplicaDB-*.jar README.md lib conf bin LICENSE
zip -r -X ReplicaDB-${REPLICADB_RELEASE_VERSION}.zip ReplicaDB-*.jar README.md lib conf bin LICENSE
ls -lah
