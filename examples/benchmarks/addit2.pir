# Copyright (C) 2001-2003 The Perl Foundation.  All rights reserved.
# $Id$

=head1 NAME

examples/benchmarks/addit2.pir - Variable Argument Subroutines

=head1 SYNOPSIS

    % time ./parrot examples/benchmarks/addit2.pir

=head1 DESCRIPTION

An optimized IMC version of Joe Wilson's original PASM version of his
C<varargs> subroutines benchmark rewritten as it would be generated by a
compiler using Parrot calling conventions (PDD 3).

It calls an "add it" function 500000 times in a loop and prints the
result (21001097.970000).

=cut

.sub _main
        .sym pmc a0
	a0 = new PerlInt
	a0 = 1000
        .sym pmc a1
	a1 = new PerlNum
	a1 = 7.100
        .sym pmc a2
	a2 = new PerlInt
	a2 = 87
        .sym pmc a3
	a3 = new PerlString
	a3 = "3.87"
        .sym pmc a4
	a4 = new PerlString
        a4 = "21000000"
	.sym pmc x
	x = new PerlInt
        x = 500000
	.sym pmc result
AGAIN:
        dec x
        lt x, 0, FIN
	result = adder(a0, a1, a2, a3, a4)
        branch AGAIN
FIN:
        print result
        print "\n"
        end
.end

.sub adder
        .param pmc a0
	.param pmc a1
	.param pmc a2
	.param pmc a3
	.param pmc a4
        .sym pmc sum
	sum = new PerlNum
        sum += a0
        sum += a1
        sum += a2
        sum += a3
        sum += a4
	.return(sum)
.end

=head1 SEE ALSO

F<examples/benchmarks/addit.pl>, F<examples/benchmarks/addit.pasm>,
F<examples/benchmarks/addit.pir>.

=cut

