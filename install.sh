#! /bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo service httpd start  
sudo echo '<h1>Welcome to Learn with projects</h1>' | sudo tee /var/www/html/index.html
sudo curl http://169.254.169.254/latest/dynamic/instance-identity/document -o /var/www/html/metadata.html