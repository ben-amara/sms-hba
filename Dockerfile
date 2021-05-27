# STEP 1 build static website
FROM node:12 as builder



# Create app directory
WORKDIR /module-backend

# COPY package.json  /backend/
RUN npm install --no-optional
# Copy project files into the docker image
COPY . /module-backend/

EXPOSE 80

CMD [ "node", "server.js" , "config.jso", "|", "bunyan"]
