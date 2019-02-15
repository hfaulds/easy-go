workflow "Easy Go" {
  on = "push"
  resolves = "executed"
}

action "executed" {
  uses = "./"
  args = ["./example"]
}
