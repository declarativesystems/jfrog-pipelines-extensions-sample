test_output() {
  echo "output zone: $1"
  printenv
}

execute_command "test_output %%context.resourceName%%"
