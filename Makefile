all:
	mvn compile

release:
	rm -rf target/classes
	./scripts/release.sh

install:
	cd ..; tar xzf ReplicaDB/ReplicaDB-0.15.99.tar.gz
