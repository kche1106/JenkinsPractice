node {
def app
stage('Clone repository') {
git 'https://github.com/kche1106/JenkinsPractice.git'
branch : main
}
stage('Build image') {
app = docker.build("kimchaeeun/prbasedtest")
}
stage('Test image') {
app.inside {
sh 'make test'
}
}
stage('Push image') {
docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
app.push("${env.BUILD_NUMBER}")
app.push("latest")
}
}
}
