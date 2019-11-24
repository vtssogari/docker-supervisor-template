# Hydra setup
cp /setup/hydra/hydra /usr/bin/hydra
cp /setup/hydra/.hydra.yaml /home/1000

# build
mkdir -p /oauth2/server 
npm install -g typescript@3.4.3 nodemon
cd /setup/node
npm install

#npm build

# Node Server setup
cp /setup/node/server.js /oauth2/server
cp -r /setup/node/node_modules /oauth2/server

# UI setup
cp -r /setup/node/build /oauth2
mv /oauth2/build /oauth2/ui
cp /setup/supervisor/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
cp /setup/run.sh /run.sh
chmod +x /run.sh
rm -r /setup
