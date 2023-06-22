# Use the official Nginx base image
FROM nginx

# Copy your static files to the appropriate directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
