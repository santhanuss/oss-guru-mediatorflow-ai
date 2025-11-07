# MediatorFlow AI: Self-Migrating Mediation Swarm

![Pioneer](pioneer-animated.svg)  
*Chennai-Built | Open Source | 5G-Ready OSS for Telecom*

💡 About

MediatorFlow AI transforms telecom mediation into a nomadic, AI-orchestrated fabric that self-migrates across edge nodes, optimising data flow, reducing bottlenecks and delivering 5G-era OSS excellence.

Designed for the modern CSP that is embracing 5G, edge computing and AI-driven operations — fully open-source under the Apache 2.0 licence.

🧠 Architecture Highlights

swarm-brain: GNN & PyTorch-powered gravity engine that predicts traffic bursts and migrates pods accordingly

Nomadic Pods: Mediator containers that move <200 ms via eBPF handoffs to follow data gravity

Kafka + KEDA: Real-time message queues and auto-scaling triggers based on lag

Dashboard: Real-time CDR flow visualisation & edge-node health monitoring

Edge / Core Integration: Works seamlessly across MECs, 5G slices, HetNets & IoT endpoints

📈 Key Capabilities
Feature	Benefit	Example Use Case
Predictive Scaling	Auto-balance traffic & reduce latency	IPL surge simulation
Zero-Downtime Migration	Seamless pod transfers <200 ms	Avoid SLA breaches at peak hours
AI-Ready Data Streams	Structured for ML/GenAI & analytics	Fraud detection, personalization
Resource Optimisation	Idle infra reduction & lower energy draw	Edge deployment cost savings
Open Architecture	Vendor lock-in free, community-friendly	CSPs can adapt and extend freely
🛠️ Tech Stack

Backend: Python (PyTorch, FastAPI)
Frontend: JavaScript / React / Tailwind
Infra: Kubernetes (K3s), Kafka, KEDA, Cilium eBPF
Storage: MinIO, Delta Lake
Deployment: Docker, Argo CD
License: Apache 2.0

📅 Roadmap

 Add CI/CD workflows (GitHub Actions)

 Immerse architecture diagram (SVG/PNG)

 Publish performance benchmarks & latency data

 Integrate Grafana metrics export

 Release v0.1-alpha

🤝 Contributing

We welcome pull requests, feature ideas and bug reports.
Fork the repo, create a branch, and submit your PR with tests or documentation updates.

📜 Licence

This project is licensed under the Apache 2.0 Licence.
Feel free to use, adapt and distribute with attribution.

🙏 Credits

Lead Developer: @santhanuss

Inspiration: Chennai-Built OSS · Edge-first 5G · Telecomm AI revolution
## Quickstart
docker-compose up -d
python demo\simulator\ipl_cdr_gen.py

Built: November 06, 2025 | @Santhanu_ss
