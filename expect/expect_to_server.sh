#!/usr/bin/expect

set hostname [lindex $argv 0] 
set password [lindex $argv 1] 
 
spawn /usr/bin/ssh $hostname
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
