# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang

# Copy the local package files to the container's workspace.
ADD . /go/src/github.com/halink0803/question_bot

WORKDIR /go/src/github.com/halink0803/question_bot
RUN go install -v github.com/halink0803/question_bot

EXPOSE 8888