workflow "Easy Go" {
  on = "push"
  resolves = "executed"
}

action "executed" {
  uses = "./"
  args = ["./example"]
  secrets = ["DOCKER_USERNAME", "DOCKER_PASSWORD", "ACTION_CACHE_NAME"]
}
