class html {
  file { '/var/www/html/index.html' :
    ensure => 'file',
    source => 'puppet:///modules/html/html.pp',
  }
     
}

