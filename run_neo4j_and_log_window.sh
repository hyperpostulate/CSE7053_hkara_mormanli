#!/bin/bash
# Author: hyperpostulate
# Starts neo4j, and attaches a terminal window to its log output.
# Stops neo4j when terminal window is closed.
NEO4J_INSTALLATION_DIR='/opt/neo4j-community-3.3.0'
$NEO4J_INSTALLATION_DIR/bin/neo4j start
xterm -hold -e tail -f $NEO4J_INSTALLATION_DIR/logs/debug.log
wait
$NEO4J_INSTALLATION_DIR/bin/neo4j stop
