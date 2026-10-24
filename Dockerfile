# Base image તરીકે Nginx-ai use panrom
FROM nginx:alpine

# Local-il irukkum web app files-ai Nginx HTML directory-kula copy panrom
COPY ./busapp-webapp /usr/share/nginx/html

# Nginx default port 80-ai expose panrom
EXPOSE 80

# Container start agum pothu Nginx-ai run panrom
CMD ["nginx", "-g", "daemon off;"]
