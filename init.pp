class html {
  file { 'html.pp' :
    name   => '/var/www/html/index.html',
    ensure => 'file',
    source => 'puppet:///modules/html/html.pp',
  }

  package { 'httpd' :
    ensure => 'present',
  }

  service { 'httpd' :
    ensure  => 'running', 
    enable  => true,
    require => Package['httpd'],
    subscribe => File['html.pp'],
  }

     
}

