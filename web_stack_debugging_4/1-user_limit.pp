#modify limits

file {'/etc/security/limits.conf':
  ensure => present
}

exec { 'limits 1':
  command  => 'sed -i "s/holberton hard nofile 5/holberton hard nofile 10048/g" /etc/security/limits.conf',
  provider => 'shell'
}
exec { 'limits 2':
  command  => 'sed -i "s/holberton soft nofile 4/holberton soft nofile 99999/g" /etc/security/limits.conf',
  provider => 'shell'
}
