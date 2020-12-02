HTTPCODE=`curl -s -o /dev/null -w "%{http_code}" https://vast-castle-45685.herokuapp.com/`
if [ "$HTTPCODE" -ne 200 ];then
    echo "heroku app not responding, failing deploy"
    exit 1
fi