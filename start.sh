echo "=================================="
echo "Starting code-server..."
echo "=================================="

# Changed --auth password to --auth none
exec code-server \
  --bind-addr 0.0.0.0:$PORT \
  --auth none \
  /home/coder/project