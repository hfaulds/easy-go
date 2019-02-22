workflow "Easy Go" {
  on = "push"
  resolves = "executed"
}

action "executed" {
  uses = "./"
  args = ["./example"]
  secrets = [
    "DOCKER_PASSWORD",
    "DOCKER_USERNAME",
    "ACTION_CACHE_NAME",
  ]
}
