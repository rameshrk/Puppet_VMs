 class user {

          user{ 'art':
            ensure     => present,
            comment    => 'Art Vandelay',
            home       => '/home/art',
            managehome => true,
          }

 
    exec { 'class user will output stuff':
        path          => '/bin',
          command     => 'echo class user',
            logoutput => true,
    }
 }

