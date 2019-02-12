export STORAGE_ROOT=/srv/mail
curl -s https://mailinabox.email/setup.sh | sudo -E bash
echo "privacy: false" > "$STORAGE_ROOT/settings.yaml"
echo <<EOF > "$STORAGE_ROOT/www/default/index.html"
<html>
        <head>
                <title>Redirecting...</title>
                <meta http-equiv="refresh" content="0; url='https://box.andruszkow.com/mail/" />
        </head>
        <body />
</html>
EOF
