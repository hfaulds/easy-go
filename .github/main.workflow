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
  ]
  env = {
    "ACTION_CACHE_NAME" = "actions-test-cache"
  }
}
