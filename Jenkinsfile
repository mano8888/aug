node {

stage('scm package'){
git credentials git url: https://github.com/mano8888/aug.git
}

stage('mvn build'){
sh 'mvn clean'
}

stage('test'){
sh 'mvn test'
}

stage('mvn deploy'){
sh 'mvn package'
}

stage(build docker image){
sh 'docker build -t mano8888/concentrix .'
}

stage(push docker image){
with docker credentiails uname:  passwd:   
sudo docker login -u uname: passwd:

sh'sudo docker push'
}

stage(docker image run on dev server){
sshagent
devserver details
run the details on the devserver
}
 }

