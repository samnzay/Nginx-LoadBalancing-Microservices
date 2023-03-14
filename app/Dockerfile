FROM node:14

# Specify the working directory
WORKDIR /home/node/app
# Copy current application to the Workdir
COPY . /home/node/app

# Install dependecies inside the app container
RUN npm install

# Start the application
CMD npm run start

# Expose the app on the port 9999, but now the app it will not have external accces 
# as it will be sitting behind a load-balancer instead.
# EXPOSE 9999