JENKINS_URL=http://$1/ # localhost or jenkins elb url
JENKINS_CLI=$2
AUTHFILE=$3

echo "$0 $1 $2 $3"
cat <<EOF | java -jar $JENKINS_CLI -s $JENKINS_URL -auth @$AUTHFILE create-credentials-by-xml system::system::jenkins "(global)"
<com.cloudbees.plugins.credentials.impl.UsernamePasswordCredentialsImpl>
  <scope>GLOBAL</scope>
  <id>SONAR_ADMIN_CREDENTIAL</id>
  <description>SONAR CREDENTIALS</description>
  <username>sonaruser</username>
  <password>sonarpasswd</password>
</com.cloudbees.plugins.credentials.impl.UsernamePasswordCredentialsImpl>
EOF