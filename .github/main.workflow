workflow "Easy Go" {
  on = "push"
  resolves = "executed"
}

action "executed" {
  uses = "./"
  args = ["./example"]
  secrets = ["DOCKER_PASSWORD"]
  env = {
    "DOCKER_USERNAME" = "fauldsh"
    "ACTION_CACHE_NAME" = "actions-test-cache"
  }
}
