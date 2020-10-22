test_input() {
  echo "your the best: $1"
  printenv
}

execute_command "test_input %%context.resourceName%%"

