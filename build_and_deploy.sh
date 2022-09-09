#Install
npm install

#Build for production
cds build --production

#Create Container Image
pack build dustbit/cc-test-srv --path gen/srv \
--buildpack gcr.io/paketo-buildpacks/nodejs \
--builder paketobuildpacks/builder:base

#Push Container Image
docker push dustbit/cc-test-srv

#Deploy to kyma
helm upgrade --install cc-test ./chart --namespace cc