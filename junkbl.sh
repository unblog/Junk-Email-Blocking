cat /tmp/extracted-JunkEmails.asc | tr , '\n' | sed 's/[{}]//g;s/^[ \t]*//;/^\s*$/d;s/\r$//g;s/$/\t 550/' | tail -n+3 > /etc/postfix/junkbl_access
postmap /etc/postfix/junkbl_access
