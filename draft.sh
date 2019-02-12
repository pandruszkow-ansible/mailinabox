#set custom data store path
export STORAGE_ROOT=/srv/mail
# install
curl -s https://mailinabox.email/setup.sh | sudo -E bash
# enable pinging for updates
echo "privacy: false" > "$STORAGE_ROOT/settings.yaml"
# enable redirect to mail when landing on / root
echo <<EOF > "$STORAGE_ROOT/www/default/index.html"
<html>
        <head>
                <title>Redirecting...</title>
                <meta http-equiv="refresh" content="0; url='https://box.andruszkow.com/mail/" />
        </head>
        <body />
</html>
EOF
