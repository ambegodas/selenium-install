class selenium::server {

    file {'/usr/local/selenium':
      ensure => directory,
    }

    file {'/usr/local/selenium/selenium-server-standalone-2.28.0.jar':
      ensure => present,
      source => 'puppet:///modules/selenium/selenium-server-standalone-2.28.0.jar',
    }

    file {'/etc/init.d/selenium-server':
      ensure  => present,
      source  => 'puppet:///modules/selenium/selenium-server',
      mode    => '0755',
    }

    service {'selenium-server':
      ensure  => running,
      pattern => 'selenium-server-standalone-2.28.jar',
    }


}
