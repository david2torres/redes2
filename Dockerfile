FROM node
WORKDIR /home/node
COPY package.json package.json
RUN npm install
COPY . .
RUN ng build
EXPOSE 4200
CMD ["npm", "run", "start"]