# 1. Base image-ai select pannunga (e.g., Node.js)
FROM node:18-alpine

# 2. Container-ku ulla work directory-ai create pannunga
WORKDIR /app

# 3. package.json-ai copy panni dependencies-ai install pannunga
COPY package*.json ./
RUN npm install

# 4. App-oda ellam source code-aiyum container-ku copy pannunga
COPY . .

# 5. Application run aagura port-ai specify pannunga (e.g., 3000)
EXPOSE 3000

# 6. App-ai start panra command
CMD ["npm", "start"]
