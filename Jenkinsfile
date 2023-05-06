pipeline{

    agent{
	label "master"
}

    stages {

        stage("build") {

            steps {
            echo "building the application"
            sh 'npm i'
            sh 'npm run build'
            }

        }


        stage("deploying") {

            steps {
            echo "deploying the application using ansible-playbook"
	sh '''
	ansible-playbook -i inventory playbooks/node-app-deploy.yml --key-file /var/lib/jenkins/pemfile
	'''

            }

        }

    }

}
