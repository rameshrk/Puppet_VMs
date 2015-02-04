
 class nginx {

               package { 'nginx':
                        ensure  => installed,
                        require => Package['apache2.2-common'],
                  }
              
                package { 'apache2.2-common':
                             ensure => absent,
                }


              service { 'nginx':
                      ensure    => running,
                      require   => Package['nginx'],
                      #enable    => false,
                      #hasstatus => false,
                      #pattern   => 'ping 127.0.0.1',
                      #status    => 'grep nginx'

                   }

              file { '/usr/share/nginx/html/index.html':
                    source => 'puppet:///modules/nginx/index.html',
              }

              file { '/etc/nginx/conf.d/default.conf':
                      source  => 'puppet:///modules/nginx/cat-pictures.conf',
                      require => File['/usr/share/nginx/html/index.html'],
                      notify  => Service['nginx'],
                 }
              
            exec { 'class nginx will output stuff':
                      path                            => '/bin',
                      command               => 'echo class nginx',
                      logoutput => true,
                                                }

         } 
