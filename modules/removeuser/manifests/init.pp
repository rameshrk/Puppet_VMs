 class removeuser {

          user{ 'artremove':
              ensure     => absent
          }

 
    exec { 'class removeuser will output stuff':
        path          => '/bin',
          command     => 'echo class removeuser',
            logoutput => true,
    }
 }

