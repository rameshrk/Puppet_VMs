  class execs 
  {
         exec { 'Run my arbitrary command':
           command => '/bin/echo I ran this command on `/bin/date` >/tmp/command.output.txt',
} }
