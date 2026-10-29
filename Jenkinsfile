pipeline {
    agent any

    environment {
        STUDENT_NAME='Nikita'
        STUDENT_SURNAME='Chsherbina'
        IMAGE_NAME='chsherbina-nikita-student-api:v1.0-chsherbina-nikita'
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Checking code for students: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo "Building Spring Boot Application"
                sh 'gradle assemble --no-daemon'
            }
        }

        stage('Test') {
            steps{
                echo "Testing"
                sh 'gradle test --no-daemon'
            }
        }

        stage('Docker Build') {
            steps{
                echo "Building docker container: ${IMAGE_NAME}"
                sh "docker build -t ${IMAGE_NAME} ."
            }
        }

        stage('Verify') {
            steps{
                echo "Verifying docker image exists"
                sh "docker images | grep chsherbina-nikita"
                echo "Pipeline execution completed successfuly for ${STUDENT_NAME} ${STUDENT_SURNAME}"
            }
        }
    }
}