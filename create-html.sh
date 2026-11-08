#!/bin/bash
# Creates an HTML5 boilerplate file

FILE_NAME=$1

if [ -z "$FILE_NAME" ]; then
    echo "Usage: ./create-html.sh page-name"
    exit 1
fi

if [ -e "$FILE_NAME.html" ]; then
    echo "$FILE_NAME.html already exists, not overwriting it"
    exit 1
fi

cat > "$FILE_NAME.html" <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$FILE_NAME</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>$FILE_NAME</h1>
    <script src="script.js"></script>
</body>
</html>
EOF

echo "Created $FILE_NAME.html"