run flask app on local

pip3 install -r requirements.txt

export JWT_SECRET='myjwtsecret'
export LOG_LEVEL=DEBUG

python3 main.py

export TOKEN=`curl -d '{"email":"<EMAIL>","password":"<PASSWORD>"}' -H "Content-Type: application/json" -X POST localhost:8080/auth  | jq -r '.token'`

echo $TOKEN

curl --request GET 'http://127.0.0.1:8080/contents' -H "Authorization: Bearer ${TOKEN}" | jq .

