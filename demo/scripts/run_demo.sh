#!/bin/bash
echo "🚀 Starting MediatorFlow Swarm Demo..."
docker-compose up -d kafka redis ray-head
python demo/simulator/ipl_cdr_gen.py  # Burst traffic
python swarm-brain/serve/deploy.py    # GNN predict
echo "🌐 Dashboard: http://localhost:3000"
echo "📊 Kafka topics: raw-cdr-ingress"