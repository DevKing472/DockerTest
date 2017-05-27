# Base the Docker image off an existing image
FROM risingstack/alpine:3.3-v4.2.6-1.1.3

# Copy the file from local into your Docker image
COPY package.json package.json

# Run the following command (before CMD is done)
RUN npm install

# Note that you *must* use double quotes
# Every Docker image can only run one CMD
# This is the command that the main process runs
CMD ["npm","start"]