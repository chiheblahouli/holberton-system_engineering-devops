#ssh configuration file
file_line { 'without password':
path   => '/etc/ssh/ssh_config',
line   => 'PasswordAuthentication no',
}

file_line { 'adding a key':
path   => '/etc/ssh/ssh_config',
line => 'IdentityFile ~/.ssh/holberton'
}
