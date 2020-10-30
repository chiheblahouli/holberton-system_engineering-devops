#use puppet

exec { 'fix':
  command  => 'sudo sed -i "s/15/4096/g" /etc/default/nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}
