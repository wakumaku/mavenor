RUN

docker run --rm -v PROJECT_PATH:/home/mavenor/src -t gobandit/mavenor /bin/bash -c 'cd src &&  mvn package'