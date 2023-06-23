# Use the official Nginx base image
FROM nginx

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration file
COPY /jenkins_home/workspace/Sumair-Assessment-3/sumair/nginx.conf /etc/nginx/conf.d/

# Copy your static files to the appropriate directory
COPY /jenkins_home/workspace/Sumair-Assessment-3/sumair/index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
