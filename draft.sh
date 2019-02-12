export STORAGE_ROOT=/srv/mail
curl -s https://mailinabox.email/setup.sh | sudo -E bash
echo "privacy: false" > "$STORAGE_ROOT/settings.yaml"
