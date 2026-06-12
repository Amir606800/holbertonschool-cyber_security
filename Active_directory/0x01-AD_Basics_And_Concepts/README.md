Active directory basics
First of all we need to define the domains

ldapsearch -x -H ldap://192.168.56.20 -D "labuser@PENTESTLAB.local" -w 'P@ssw0rd123!' -b "DC=PENTESTLAB,DC=local" '(objectClass=domain)' '*' '+'

This will give the results within the AD 
-------------------------------------------------------------------
Now the next task we will enumarate the service accounts

ldapsearch -x -H ldap://192.168.56.20 -D "labuser@PENTESTLAB.local" -w 'P@ssw0rd123!' -b "DC=PENTESTLAB,DC=local" "(&(objectClass=user)(sAMAccountName=svc*))" '*' '+' | grep -i flag
--------------------------------------------------------------------
On the 3rd task we enumerate the Group Metadata Inspection

ldapsearch -x -H ldap://192.168.56.20 -D "labuser@PENTESTLAB.local" -w 'P@ssw0rd123!' -b "DC=PENTESTLAB,DC=local" "(cn=Domain Admins)" '*' '+'
-------------------------------------------------------------------

