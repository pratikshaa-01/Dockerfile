#open with vim editor Dockerfile

# Use an official Nginx runtime as a parent image
FROM nginx:alpine
WORKDIR /usr/share/nginx/html
# Copy the index.html file from the build context to the working directory
COPY index.html .
# COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
# Start Nginx server when the container launches
CMD ["nginx", "-g", "daemon off;"]
