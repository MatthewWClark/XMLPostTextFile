##cats text file into variable
file1=$(cat /path/example.txt)

##puts contents of file1 into message peramater
curl -k --location --request POST '(PostURL)' \
--header 'X-API-Key: (API Key)' \
--header 'Content-Type: application/xml' \
--data-raw '<?xml version="1.0" encoding="UTF-8"?>
  (rest of API content here)
    <message type="text/plain">'"$file1"'</message>
</ticket>'
