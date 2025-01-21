FROM nginx AS builder
#system upgrade
WORKDIR /app
RUN apt update 
#install dependencies
RUN apt install mkdocs -y && \
    apt install mkdocs-bootstrap -y

COPY . .
#build the project
RUN mkdocs build

FROM nginx:alpine
COPY --from=builder /app/site /usr/share/nginx/html