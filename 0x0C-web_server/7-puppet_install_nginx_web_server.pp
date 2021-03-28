# update +install ngnix 

exec {'up':
  provider => shell,
  command  => 'sudo apt-get -y update',
}

# install ngnix 
exec {'ngin':
  provider => shell,
  command  => 'sudo apt-get -y install nginx',
}

exec {'conf':
  provider => shell,
  command  => 'sudo sed -i "/server_name _;/ \n\trewrite ^/redirect_me http://www.google.com permanent;" /etc/nginx/sites-available/default',
}

file { 'up index':
  path    => '/var/www/html/index.nginx-debian.html',
  content => "Holberton School",
}


exec {'restart':
  provider => shell,
  command  => 'sudo service nginx restart',
}
