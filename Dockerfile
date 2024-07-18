#open with vim editor Dockerfile

# Use an official Nginx runtime as a parent image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the index.html file from the build context to the working directory
COPY index.html .

# Copy additional static assets if needed
# COPY css/ /usr/share/nginx/html/css/
# COPY js/ /usr/share/nginx/html/js/

# Copy nginx configuration if customizations are needed
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 to allow outside access
EXPOSE 80

# Start Nginx server when the container launches
CMD ["nginx", "-g", "daemon off;"]
