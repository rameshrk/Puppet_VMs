 class user {

          user{ 'art':
            ensure     => present,
            comment    => 'Art Vandelay',
            home       => '/home/art',
            managehome => true,
          }

        ssh_authorized_key { 'art_ssh':
            user  => 'art',
            type  => 'rsa',
            key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEArzGkDUflwGAey+5Tb8n3D8ZyEbAK5djomk9YmrPJXNRK6chfoZpu1aXllmjtTK0XriXm8jLcpEUfWoZ3vZz0CVJWfHCu+gplqGTuqQUpgUuO09ObZ9lkmvkTNe/C3IH8pM0DDVjh5obbqG58c/TCMDmO52L2g6qMDHTY+25O/8TFC7UzT5GZUH/+sEi+brJ3D2bl4QdS3ohuWoYp6AHVhycjLs2TCUrfRcUxztteOQ6aNrGF4EDB1D0DppqmDAtms7nfnoDaRbAKfWKL8ekwvV0+amBvFEq/yHsnhvLVXUbKgRmEb8LZ443hNAt0cLK2THWj8bLsbVvgw8tp8lvKfw==' 
         } 


 
    exec { 'class user will output stuff':
        path          => '/bin',
          command     => 'echo class user',
            logoutput => true,
    }
 }

