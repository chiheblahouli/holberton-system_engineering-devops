# update +install ngnix 

exec {'up':
  provider => shell,
  path     => '/usr/bin:/usr/sbin:/bin',
  command  => 'sudo apt-get -y update',
}

# install ngnix 
exec {'ngin':
  provider => shell,
  path     => '/usr/bin:/usr/sbin:/bin',
  command  => 'sudo apt-get -y install nginx',
}

exec {'conf':
  provider => shell,
  command  => 'sudo sed -i "s/server_name _;/server_name _;\n\trewrite ^\/redirect_me https:\/\/google.com\/ permanent;/" /etc/nginx/sites-available/default',
}

exec { 'upindex':
  provider => shell,
  command => 'echo "Holberton School" | sudo tee /var/www/html/index.nginx-debian.html',
}


exec {'restart':
  provider => shell,
  command  => 'sudo service nginx start',
}
