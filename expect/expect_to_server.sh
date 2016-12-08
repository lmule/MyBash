#!/usr/bin/expect

set hostname [lindex $argv 0] 
set password [lindex $argv 1] 
set port [lindex $argv 2] 

if { $port == "" } {
    set port 22
}
 
spawn /usr/bin/ssh $hostname -p $port
expect {
    "*assword:" {
        send "$password\n"
        interact
    }
    "*]\$ " {
        interact
    }
    "*(yes/no)\?" {
        send "yes\n"
            expect "*assword:"
                send "$password\n"
                interact
    }
}
     
interact
