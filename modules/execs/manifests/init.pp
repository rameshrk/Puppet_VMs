  class execs 
  {
         exec { 'Run my arbitrary command':
           command => '/bin/echo I ran this command on `/bin/date` >/tmp/command.output.txt',
             }

         exec { 'Run my second command':
           command => '/bin/echo I ran this second command on `/bin/date` >>/tmp/command.output.txt'
           }
           exec {  'Download test file':
             cwd     => '/tmp',
             command => '/usr/bin/wget www.google.com/humans.txt' ,
             creates => '/tmp/humans_output.txt' 
          }
         exec {  'Download test file again':
             cwd     => '/tmp',
             command => '/usr/bin/wget www.google.com/humans.txt >> /tmp/humans_output1.txt' ,
             unless  => '/bin/grep /tmp/humans_output1.txt' 
          }

         exec {  'config check':
            command     => 'bin/echo file got changed  on `/bin/date` >> /tmp/humans_monitor.txt' ,
             refreshonly => true,
             subscribe => File['/tmp/humans_output.txt']
          }
 }
