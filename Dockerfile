FROM node:16-alpine
WORKDIR /my-app
COPY package*.json ./
COPY . .
RUN npm install
EXPOSE 8080
CMD ["node", "index.js"]

# FROM The FROM instruction initializes a new build stage and sets the Base Image for subsequent instructions.
# WORKDIR The WORKDIR instruction sets the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it. (equal to CD command, CD to my-app)
# COPY The COPY instruction copies files from a local source location to a destination.(copy from left to right ie the image)
# RUN The RUN instruction will execute any commands in a new layer on top of the current image and commit the results.
# EXPOSE The EXPOSE instruction exposes a particular port inside a Docker container
# CMD There can only be one CMD instruction in a Dockerfile. If you list more than one CMD then only the last CMD will take effect. The main purpose of a CMD is to provide defaults for an executing container.
 