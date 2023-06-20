000100070309             CMD        PROMPT('Run a SQL statement')
000200070309
000300070309             PARM       KWD(SQLSTM) TYPE(*CHAR) LEN(1280) MIN(1) +
000400070309                          EXPR(*YES) PROMPT('SQL statement')
000500070309             PARM       KWD(OUTPUT) TYPE(*CHAR) LEN(8) RSTD(*YES) +
000600070309                          DFT(*) VALUES(* *PRINT *OUTFILE) +
000700070309                          EXPR(*YES) PROMPT('Output')
000800070309
000900070309             PARM       KWD(OUTFILE) TYPE(OUTFILE) PMTCTL(FILE) +
001000070309                          PROMPT('File to receive output')
001100070309             PARM       KWD(OUTMBR) TYPE(*NAME) LEN(10) DFT(*FIRST) +
001200070309                          SPCVAL((*FIRST)) EXPR(*YES) +
001300070309                          PMTCTL(FILE) PROMPT('Member')
001400070309             PARM       KWD(MBROPT) TYPE(*CHAR) LEN(8) RSTD(*YES) +
001500070309                          DFT(*REPLACE) VALUES(*REPLACE *ADD) +
001600070309                          EXPR(*YES) PMTCTL(FILE) PROMPT('Replace +
001700070309                          or add records')
001800070309
001900070309             PARM       KWD(PAGESIZE) TYPE(PAGESIZE) PMTCTL(PRINT) +
002000070309                          PROMPT('Page size:')
002100070309             PARM       KWD(LPI) TYPE(*DEC) LEN(1 0) RSTD(*YES) +
002200070309                          DFT(6) VALUES(6 8) EXPR(*YES) +
002300070309                          PMTCTL(PRINT) PROMPT('Lines per inch')
002400070309             PARM       KWD(CPI) TYPE(*DEC) LEN(3 0) RSTD(*YES) +
002500070309                          DFT(10) VALUES(10 12 15) EXPR(*YES) +
002600070309                          PMTCTL(PRINT) PROMPT('Characters per inch')
002700110509             PARM       KWD(OVRFLW) TYPE(*CHAR) LEN(10) +
002800110509                          DFT(*PAGESIZE) RANGE('001' '255') +
002900110506                          SPCVAL((*PAGESIZE)) EXPR(*YES) +
003000070309                          PMTCTL(PRINT) PROMPT('Overflow line number')
003100070309             PARM       KWD(PRTSTM) TYPE(*CHAR) LEN(4) RSTD(*YES) +
003200070309                          DFT(*YES) VALUES(*YES *NO) EXPR(*YES) +
003300070309                          PMTCTL(PRINT) PROMPT('Print SQL statement')
003400070309
003500070309             PARM       KWD(RDB) TYPE(*CHAR) LEN(15) DFT(*NONE) +
003600070309                          SPCVAL((*NONE *CURRENT)) EXPR(*YES) +
003700070309                          PMTCTL(*PMTRQS) PROMPT('Relational database')
003800070309             PARM       KWD(QMFORM) TYPE(QMFORM) DFT(*SYSDFT) +
003900070309                          SNGVAL((*SYSDFT)) PMTCTL(*PMTRQS) +
004000070309                          PROMPT('Form to use to format output')
004100070309             PARM       KWD(NAMING) TYPE(*CHAR) LEN(11) RSTD(*YES) +
004200070309                          DFT(*SYS) VALUES(*SAA *SYS) EXPR(*YES) +
004300070309                          PMTCTL(*PMTRQS) PROMPT('Naming convention')
004400110509
004500110509             PARM       KWD(OVRFILE) TYPE(OVRFILE)  +
004600110509                          PROMPT('File to override to')
004700110509             PARM       KWD(OVRMBR) TYPE(*NAME) LEN(10) +
004800110506                          DFT(*FIRST) SPCVAL((*FIRST)) EXPR(*YES) +
004900110509                          PMTCTL(*PMTRQS) PROMPT('Member to override to')
005000070309
005100070309 FILE:       PMTCTL     CTL(OUTPUT) COND((*EQ *OUTFILE))
005200070309 PRINT:      PMTCTL     CTL(OUTPUT) COND((*EQ *PRINT))
005300070309
005400070309 OUTFILE:    QUAL       TYPE(*NAME) LEN(10) DFT(SQLOUT) EXPR(*YES)
005500070309             QUAL       TYPE(*NAME) LEN(10) DFT(QTEMP) +
005600070309                          SPCVAL((*CURLIB) (*LIBL)) EXPR(*YES) +
005700070309                          PROMPT('Library')
005800070309 QMFORM:     QUAL       TYPE(*NAME) LEN(10) EXPR(*YES)
005900070309             QUAL       TYPE(*NAME) LEN(10) DFT(*LIBL) +
006000070309                          SPCVAL((*CURLIB) (*LIBL)) EXPR(*YES) +
006100070309                          PROMPT('Library')
006200070309
006300070309 PAGESIZE:   ELEM       TYPE(*CHAR) LEN(3) DFT('066') RANGE('001' +
006400070309                          '255') FULL(*YES) EXPR(*YES) +
006500070309                          PROMPT('Length--lines per page')
006600070309             ELEM       TYPE(*CHAR) LEN(3) DFT('132') RANGE('001' +
006700070309                          '198') FULL(*YES) EXPR(*YES) +
006800070309                          PROMPT('Width--positions per line')
006900070309
007000110509 OVRFILE:    QUAL       TYPE(*NAME) LEN(10) EXPR(*YES)
007100110509             QUAL       TYPE(*NAME) LEN(10) +
007200110509                          SPCVAL((*CURLIB) (*LIBL)) EXPR(*YES) +
007300110509                          PROMPT('Library')
007400110509
