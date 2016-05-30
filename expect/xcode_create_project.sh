#!/usr/bin/expect

set project_name [lindex $argv 0] 

set company_name "lmule"
set project_path "/Users/dingrui/workspace/oc/"
 
cd $project_path
 
spawn liftoff -n $project_name -c $company_name
expect {
    "Project name" {
        send "\n"
        exp_continue
    }
    "Company name*" {
        send "\n"
        exp_continue
    }
    "Company identifier*" {
        send "\n"
        exp_continue
    }
    "Prefix*" {
        send "\n"
        exp_continue
    }
    "Test target name*" {
        send "\n"
        exp_continue
    }
}
     
