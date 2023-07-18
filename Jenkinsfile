pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile' 
      dir 'Docker' 
      label 'cheri-hls docker'
      additionalBuildArgs "--build-arg UID=${UID} --build-arg GID=${GID} --tag chls-u22"
      args "--shm-size 256m --hostname chls-ubuntu2204 -u ${UID} -v /home/$(whoami)/.ssh:/home/dev-user/.ssh  -v ${PWD}:/workspace"
    }
  }
  triggers {
    cron('0 * * * *') 
  }
  stages {
    stage('Build') {
        steps {
            sh 'make build'
        }
    }
    stage('Test') {
        steps {
            sh 'make test'
        }
    }
    post {
        failure {
          mail(to: 'jc2489@cl.cam.ac.uk', subject: "Failed Pipeline: cheri-hls", body: "$(cat test-cheri-hls.log)") 
        }
    }
  }
}
