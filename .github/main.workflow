workflow "Easy Go" {
	on = "push"
	resolves = "executed"
}

action "executed" {
  uses = "./"
	runs = "./entrypoint.sh"
	args = ["./example"]
}
