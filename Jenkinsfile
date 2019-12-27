node {

  //def last_commit= sh(script: "git rev-parse --short HEAD", returnStdout: true).trim()
  
  stage 'Checkout'
  git 'https://github.com/aamirshehzad111/jenkins.git'
    

  
  sh "env | grep BUILD_NUMBER"
  sh "sed -i 's/Hello! commits/echo ${currentBuild.number}/g' file://Dockerfile"
  
  stage 'Docker build'
  docker.build('jenkins-project')
 
  stage 'Docker push'
  sh "\$(aws ecr get-login --no-include-email --region us-east-1)"
  docker.withRegistry('https://020046395185.dkr.ecr.us-east-1.amazonaws.com/jenkins-project') {
      taskDefImage = docker.image('jenkins-project').push("v2")
     
  }
}
