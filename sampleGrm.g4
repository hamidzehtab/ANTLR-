//sample grammar for parsing if/else structures
grammar sampleGrm;
start: statement*;
statement: ifstatement;
ifstatement: 'if' '('condition')' '{' statement* '}'
('else' '{' statement*'}')?;
condition: VAR | BOOL;

WS: [ \t\r\n]+ -> skip;

BOOL: 'true'| 'false';
fragment LETTER: [a-zA-Z];
VAR: LETTER+;
