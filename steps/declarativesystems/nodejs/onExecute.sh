getArtifactoryVariable() {
  local artifactoryName=$1
  local variable=$2
  echo eval $(int_$(artifactoryName)_$(variable))
}

checkHealth() {
  local success=true

  local artifactoryName=$(find_step_configuration_value "sourceArtifactory")
  local artifactoryUser=$(getArtifactoryVariable "$artifactoryName" "name")
  local artifactoryId=$(getArtifactoryVariable "$artifactoryName" "id")
  local artifactoryUrl=$(getArtifactoryVariable "$artifactoryName" "url")
  env
  echo "yooooorrrr the best!!!!!!~~~~111"
  npm config set registry https://declarativesystems.jfrog.io/artifactory/api/npm/npm/
#  local url=$(find_step_configuration_value "healthCheckUrl")
#  {
#    local statusCode=$(curl --silent --output /dev/stderr --write-out "%{http_code}" "$url")
#  } || exitCode=$?
#  if test $statusCode -ne 200; then
#    export success=false
#    echo "Health check failed with statusCode: $senmvtatusCode & exitCode: $exitCode for url: $url"
#  else
#    echo "Health check succeeded"
#  fi

  $success
}

execute_command checkHealth
