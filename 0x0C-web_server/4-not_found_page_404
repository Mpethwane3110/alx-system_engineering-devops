#!/bin/bash

# 1- Install Nginx
sudo apt-get update
sudo apt-get install -y nginx

# 2- Check Nginx configuration and fix errors
sudo nginx -t
sudo systemctl reload nginx

# 3- Create the 404 not found page configuration file
sudo echo "
server {
    listen 80;
    server_name _;

    error_page 404 /404_custom_page.html;
    location = /404_custom_page.html {
        internal;
    }
}
" | sudo tee /etc/nginx/sites-available/404_custom_page

# Create a symbolic link to the sites-enabled directory
sudo ln -s /etc/nginx/sites-available/404_custom_page /etc/nginx/sites-enabled/

# Create the custom 404 page file
sudo echo "
<!DOCTYPE html>
<html>
    <head>
        <title>404 Not Found</title>
    </head>
    <body>
        <h1>Ceci n'est pas une page</h1>
    </body>
</html>
" | sudo tee /var/www/html/404_custom_page.html

# Restart nginx to apply changes
sudo service nginx restart

# Output the instructions to the user
echo "Nginx 404 custom page configuration complete."
echo "To verify the 404 custom page, visit http://<your_server_IP>/some_nonexistent_page in your web browser."
echo "The browser should display the custom 404 page with the string 'Ceci n'est pas une page'."
