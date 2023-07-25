pipeline {
  agent {
    node {
      label 'ctsrd-build-linux-l1'
    }
  } 
  triggers {
    githubPush()
  }
  // Build software flow 
  stages {
    stage('Env Test') {
      steps {
          // Check Vitis HLS path
          echo 'Environment check'
          sh 'ls /local/ecad/xilinx'
          sh 'ls /local/ecad/xilinx/Vitis_HLS'
          sh 'ls /local/ecad/xilinx/Vitis_HLS/2023.1'
          sh 'ls /local/ecad/xilinx/Vitis_HLS/2023.1/settings64.sh'
          sh '''
          . /local/ecad/xilinx/Vitis_HLS/2023.1/settings64.sh
          which vitis_hls
          '''

      }
    }
    stage('Build and Test') {
      agent {
        dockerfile {
          filename 'Dockerfile' 
          dir 'Docker' 
          // additionalBuildArgs '--no-cache --build-arg UID=$(id -u) --build-arg GID=$(id -g) --build-arg VHLS_PATH=/local/ecad/xilinx --tag chls-u22'
          additionalBuildArgs '--build-arg UID=$(id -u) --build-arg GID=$(id -g) --build-arg VHLS_PATH=/local/ecad/xilinx --tag chls-u22'
          args '--restart=always --shm-size 256m -v /local/ecad/xilinx:/local/ecad/xilinx:ro,z'
        }
      }
      steps {
          echo 'Start regression test'

          // Check Vitis HLS path
          sh 'ls /local/ecad/xilinx'
          sh 'ls /local/ecad/xilinx/Vitis_HLS'
          sh 'ls /local/ecad/xilinx/Vitis_HLS/2023.1'
          sh 'ls /local/ecad/xilinx/Vitis_HLS/2023.1/settings64.sh'

          // Create a symlink to the working directory so all the scripts can be reused
          sh 'sudo ln -s $PWD /workspace'
          // Regression test
          sh '''
          export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:$LIBRARY_PATH
          export PATH=/workspace/scripts:/home/dev-user/.local/bin:$PATH
          export export nproc=$(grep -c ^processor /proc/cpuinfo)
          . /local/ecad/xilinx/Vitis_HLS/2023.1/settings64.sh

          which vitis_hls
          make build
          make test
          '''
      }
    }
  }
  // Check logs and report 
  post {
      failure {
        emailext to: "jianyi.cheng@cl.cam.ac.uk",
            subject: "Failed Pipeline: cheri-hls",
            body: "Failed Pipeline: cheri-hls",
            attachLog: true
      }
  }
}
