  class execs 
  {
         exec { 'Run my arbitrary command':
           command => '/bin/echo I ran this command on `/bin/date` >/tmp/command.output.txt',
             }

         exec { 'Run my second command':
           command => '/bin/echo I ran this second command on `/bin/date` >>/tmp/command.output.txt'
          exec {  'Download test file':
             cwd     => '/tmp',
             command => '/usr/bin/wget www.google.com/humans.txt' 
             creates => 'huamns_output.txt' 


} }
