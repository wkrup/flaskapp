FROM python:3.8

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]

pipeline {

   agent any

   stages {

      stage("build") {

         steps {

            echo 'building the applicaiton...'

         }

      }

      stage("test") {

         steps {

            echo 'testing the applicaiton...'

         }

      }

      stage("deploy") {

         steps {

            echo 'deploying the applicaiton...'

         }

      }

   }

   post {

         always {

            echo 'building..'

         }

         success {

               echo 'success'

         }

         failure {

               echo 'failure'

         }

      }

   }
