 class nginx1 {

   $timestamp = generate('/bin/date', '+%Y%d%m_%H:%M:%S')
                file { '/tmp/hello':
                        content => "Hello, world Changed by manifests and modules  operation ${timestamp}\n",
                        }   
 }


