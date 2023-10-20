FROM node:18-alpine

WORKDIR /app/spa-react


COPY package*.json ./

COPY vite*.ts ./

COPY . .

RUN rm -rf node_modules
# RUN npm install -g vite
RUN npm install

EXPOSE 5137

# RUN npm run build
CMD ["npm", "run", "dev"]