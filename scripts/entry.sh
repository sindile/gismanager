while [[ "$(curl -u admin:geoserver -s -o /dev/null -w ''%{http_code}'' localhost:8080/geoserver/rest/about/status)" != "200" ]]; do sleep 5 && echo "."; done;go test -v -covermode=count -coverprofile=coverage.out && \
$GOPATH/bin/goveralls -coverprofile=coverage.out -service=travis-ci -repotoken $COVERALLS_TOKEN
