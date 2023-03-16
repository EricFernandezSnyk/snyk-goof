docker run -d --restart=always \
       -p 8000:8000 \
       -e BROKER_TOKEN="45a40b85-a369-4f1d-b7df-f15e72f6d17c" \
       -e BROKER_CLIENT_URL="http://localhost:8082/" \
       -e BROKER_CLIENT_VALIDATION_URL="http://localhost:8082/systemcheck" \
       -e CR_AGENT_URL="http://localhost:8081/" \
       -e CR_TYPE="nexus-cr" \
       -e CR_BASE="localhost:8081" \
       -e CR_USERNAME="admin" \
       -e CR_PASSWORD="admin" \
       -e PORT=8000 \
       snyk/broker:container-registry-agent

docker run -d --restart=always \
       -p 8082:8082 \
       -e SNYK_PORT=8082 \
       snyk/container-registry-agent:latest

docker run -d -p 8081:8081 --name nexus sonatype/nexus3