pipeline {
  agent {
    node {
      label 'ctsrd-build-linux-l1'
    }
  } 
  // Run regression test hourly
  triggers {
    cron('H * * * *') 
  }
  // Build software flow 
  stages {
    stage('Build and Test') {
      agent {
        dockerfile {
          filename 'Dockerfile' 
          dir 'Docker' 
          additionalBuildArgs '--build-arg UID=$(id -u) --build-arg GID=$(id -g) --build-arg VHLS_PATH=/local/ecad/xilinx/Vitis/2023.1 --tag chls-u22'
          args '--restart=always --shm-size 256m -v /local/ecad/xilinx/Vitis/2023.1:/local/ecad/xilinx/Vitis/2023.1'
        }
      }
      steps {
          // Check Vitis HLS path
          which vitis_hls

          // Create a symlink to the working directory so all the scripts can be reused
          sh 'sudo ln -s $PWD /workspace'
          // Regression test
          sh '''
          export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:$LIBRARY_PATH
          export PATH=/workspace/scripts:/home/dev-user/.local/bin:$PATH
          export export nproc=$(grep -c ^processor /proc/cpuinfo)

          make build
          make test
          '''
      }
    }
  }
  // Check logs and report 
  post {
      failure {
        mail(to: 'jianyi.cheng@cl.cam.ac.uk', subject: "Failed Pipeline: cheri-hls", body: "Failed Pipeline: cheri-hls") 
      }
  }
}
