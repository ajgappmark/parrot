10 GOSUB 100
20 GOSUB 300
30 GOSUB 400
40 GOSUB 500
50 GOSUB 600
60 GOSUB 700
90 END
100 REM 
101 REM Exercise the expression evaluator
102 REM
110 PRINT "Numeric and expression evaluation."
115 PRINT "Should be 5: ";
120 PRINT 5+2*3-6
125 PRINT "Should be -3: ";
130 PRINT 15/3+((3*2+2-1+1)*-1)
135 PRINT "Should be a 4-item list: ";
140 PRINT 5,"HELLO WORLD",67,-1
145 PRINT "Functions, first the alphabet: ";
150 FOR I=65 TO 90
155 PRINT CHR(I);
160 NEXT I
161 PRINT
163 PRINT "String funcs, BROAD: ";
165 DIM SAMPLE$(30)
170 LET SAMPLE$="EMERGENCY BROADCAST"
175 PRINT MID(SAMPLE$,11,5)
180 PRINT
190 RETURN
300 REM
301 REM Exercise the READ/DATA/RESTORE functions
302 REM
305 PRINT "Testing READ/DATA Should see series 0..10 then 0..10"
310 FOR I=0 TO 10
315 READ F
320 PRINT F;
330 PRINT " ";
340 NEXT I
350 RESTORE
355 PRINT
360 FOR I=0 TO 10
365 READ H
370 PRINT H;
375 PRINT " ";
379 NEXT I
380 PRINT
381 DIM A$(20)
392 PRINT "And string read (thats all folks):";
383 READ A$
384 PRINT A$
385 RETURN
390 DATA 0, 1, 2, 3, 4, 5
395 DATA 6, 7, 8, 9, 10, "All Done w READ/DATA"
400 REM
401 REM Demonstrate FOR/NEXT looping
402 REM
405 PRINT "First count by 2s, then backwards from 10, then nested 0-3"
410 FOR I=0 TO 10 STEP 2
412 PRINT I;
413 PRINT " ";
415 NEXT I
420 PRINT
425 FOR I=10 TO 0 STEP -1
430 PRINT I;
435 PRINT " ";
440 NEXT I
445 PRINT
450 FOR I=0 TO 3
455 FOR J=0 TO 3
460 PRINT I;
462 PRINT " ";
470 PRINT J;
472 PRINT " ";
475 NEXT J
480 PRINT
485 NEXT I
490 RETURN
500 REM 
501 REM Arrays and random numbers
502 REM
505 PRINT "Distribution of 100 random numbers 1-10:"
510 FOR I=0 TO 99
520 LET NUMBER=RND(10)
530 LET ARR(NUMBER)=ARR(NUMBER)+1
540 NEXT I
545 FOR I=0 TO 9
546 PRINT "The number ";
547 PRINT I;
548 PRINT " was seen ";
560 PRINT ARR(I);
565 PRINT " times"
570 NEXT I
590 RETURN
600 REM
601 REM Conditionals and stuff
602 REM
603 PRINT "Conditionals.  Loop 5 times and then bail\n"
604 LET I=0
605 LET I=I+1
606 PRINT "Loop ";
610 IF I=5 THEN GOTO 625
620 GOTO 605
625 PRINT
660 RETURN
700 REM
701 REM Test strings and stuff
702 REM
705 PRINT "String test.  My name and then a Tic-Tac-Toe board"
710 LET A$="Clinton Pierce"
715 PRINT "Parrot BASIC by: ";
720 PRINT A$
725 FOR I=0 TO 2
730 FOR J=0 TO 2
735 READ T$(I,J)
740 REM LET T$(I,J)=R$
745 NEXT J
750 NEXT I
755 DATA "X","O"," "
760 DATA "X","X","O"
765 DATA "O","O","X"
770 FOR I=0 TO 2
780 FOR J=0 TO 2
785 PRINT T$(I,J);
790 PRINT " ";
792 NEXT J
795 PRINT
797 NEXT I
799 RETURN
