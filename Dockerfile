FROM node:18-alpine

WORKDIR /app/spa-react

COPY package*.json ./

RUN rm -rf node_modules
RUN npm install

COPY . .

EXPOSE 5137

# RUN npm run build
CMD ["npm", "run", "dev"]