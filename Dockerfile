# Yuji's custom Ghost image, which has...
# * ghost-v3-google-cloud-storage adapter
#
# Run this image with an envfile, which has complementary configurations
FROM ghost:3.42.5

ENV GHOST_INSTALL /var/lib/ghost
WORKDIR ${GHOST_INSTALL}

ENV GCS_ADAPTERS_DIRECTORY=versions/3.42.5/core/server/adapters/storage/gcs
RUN mkdir -p ${GCS_ADAPTERS_DIRECTORY} \
    && npm install ghost-v3-google-cloud-storage \
    && mv node_modules/ghost-v3-google-cloud-storage/* ${GCS_ADAPTERS_DIRECTORY}

