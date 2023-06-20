RS is an IBM i utility that lets one execute SQL statements from 
a command line, batch program, interactive program, etc.
It differs to IBM's RUNSQLSTM in that it can execute SELECT statements.

It was written before IBM released their RUNSQLSTM, which is why it needs 
to be qualified.

The general concept is that a generic QMQRY statement is created which contains 
nothing except substitution variables. Then the CL program slices the SQL statement
that was specified on the CMD into 50 character chunks, filling the substitution
variables, and then executing STRQMQRY.