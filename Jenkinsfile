pipeline {
    agent any

    stages {
         stage ('git clone') {
            steps {
        echo "code is building"
         git 'https://github.com/venkat5658/data.git'
            }
        }
        
        stage('build docker image') {
            steps {
                echo "build docker image"
                
                  
                  sh 'sudo docker build -t httpd:2.4  -f Dockerfile . '
                 
                  
                  sh 'docker tag httpd:latest public.ecr.aws/b9y2y3b4/httpd:2.4'
                  sh 'sudo chmod 666 /var/run/docker.sock'
              
                  sh 'docker push public.ecr.aws/b9y2y3b4/httpd:2.4'
               
            }
        }
      
        stage('kubectl deploy'){ 
       steps
        {
          sh 'sudo kubectl apply -f httpd-dep.yaml'
          sh 'sudo kubectl get nodes '
          sh 'sudo kubectl get ns'
          sh 'sudo kubectl get svc'
          sh 'sudo kubectl rollout restart deployment/httpd-deployment'
           
        }
      } 
    }
}
