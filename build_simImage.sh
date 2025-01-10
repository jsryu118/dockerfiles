docker build \
  --build-arg USER=${USER}  \
  --build-arg UID=${UID} \
  --build-arg GID=${GID} \
  -t sim_x86:latest \
  -f Dockerfile.sim_x86 .