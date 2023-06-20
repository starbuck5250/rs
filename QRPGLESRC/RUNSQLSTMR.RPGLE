000100070309     F* Print SQL statement on RUNSQLSTM output
000200070309     F*
000300070309     F* We resort to the array because the SQL statement is 1280
000400070309     F* characters long, but RPG won't deal with that.
000500070309     F*
000600070309     fqpqxprtf  o    f  132        printer oflind(*inof)
000700070309     d out             s             50    dim(26)
000800070309     c     *entry        plist
000900070309     c                   parm                    a                50
001000070309     c                   parm                    b                50
001100070309     c                   parm                    c                50
001200070309     c                   parm                    d                50
001300070309     c                   parm                    e                50
001400070309     c                   parm                    f                50
001500070309     c                   parm                    g                50
001600070309     c                   parm                    h                50
001700070309     c                   parm                    i                50
001800070309     c                   parm                    j                50
001900070309     c                   parm                    k                50
002000070309     c                   parm                    l                50
002100070309     c                   parm                    m                50
002200070309     c                   parm                    n                50
002300070309     c                   parm                    o                50
002400070309     c                   parm                    p                50
002500070309     c                   parm                    q                50
002600070309     c                   parm                    r                50
002700070309     c                   parm                    s                50
002800070309     c                   parm                    t                50
002900070309     c                   parm                    u                50
003000070309     c                   parm                    v                50
003100070309     c                   parm                    w                50
003200070309     c                   parm                    x                50
003300070309     c                   parm                    y                50
003400070309     c                   parm                    z                30
003500070309     c*
003600070309     c                   movel     a             out(01)
003700070309     c                   movel     b             out(02)
003800070309     c                   movel     c             out(03)
003900070309     c                   movel     d             out(04)
004000070309     c                   movel     e             out(05)
004100070309     c                   movel     f             out(06)
004200070309     c                   movel     g             out(07)
004300070309     c                   movel     h             out(08)
004400070309     c                   movel     i             out(09)
004500070309     c                   movel     j             out(10)
004600070309     c                   movel     k             out(11)
004700070309     c                   movel     l             out(12)
004800070309     c                   movel     m             out(13)
004900070309     c                   movel     n             out(14)
005000070309     c                   movel     o             out(15)
005100070309     c                   movel     p             out(16)
005200070309     c                   movel     q             out(17)
005300070309     c                   movel     r             out(18)
005400070309     c                   movel     s             out(19)
005500070309     c                   movel     t             out(20)
005600070309     c                   movel     u             out(21)
005700070309     c                   movel     v             out(22)
005800070309     c                   movel     w             out(23)
005900070309     c                   movel     x             out(24)
006000070309     c                   movel     y             out(25)
006100070309     c                   movel     z             out(26)
006200070309     c*
006300070309     c                   time                    hhmmss            6 0
006400070309     c                   except    prttof
006500070309     c*
006600070309     c     1             do        26            xx                5 0
006700070309     c     out(xx)       ifne      *blanks
006800070309     c                   except    prtout
006900070309     c                   endif
007000070309     c                   enddo
007100070309     c*
007200070309     c                   except    prtend
007300070309     c                   seton                                        lr
007400070309     oqpqxprtf  e            prttof         2 03
007500070309     o*
007600070309     o                       udate         y      8
007700070309     o                       hhmmss              18 ' 0.  .  '
007800070309     o                                           64 'sql statement'
007900070309     o                                          127 'runsqlstm  page'
008000070309     o                       page               132
008100070309     o*
008200070309     o          e            prtout         1
008300070309     o*
008400070309     o                       out(xx)             50
008500070309     o*
008600070309     o          e            prtend         2
008700070309     o*
008800070309     o                                           24 '------------------------'
008900070309     o                                           48 '------------------------'
009000070309     o                                           50 '--'
009100070309
