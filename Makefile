build:
	docker build -t simple-ecr-docker-github-actions -f ./Dockerfile .

run:
	docker run -dti --name apache -p 8000:80 simple-ecr-docker-github-actions

clean:
	docker stop apache
	docker rm apache