 class nginx1 {

   $timestamp = generate('/bin/date', '+%Y%d%m_%H:%M:%S')
                file { '/tmp/hello':
                        content => "Hello, world Changed by manifests and modules  operation ${timestamp}\n",
                        }   
      file { '/tmp/file1':
         require => File['/tmp/file2'],
            }
      file { '/tmp/file2':
        require => File['/tmp/file3'],
           }
      file { '/tmp/file3':
        content => "Hello,  /tmp/file3 ${timestamp}\n",
          }
      }

