#!/usr/bin/perl
#
# This script translates icode files into Sparc assembly language
# by running the code through gcc.  It cheats and only works if
# the icode file has a copy of the original c0 source in the 
# comments.
#
# Usage: icoasm.perl file...
#
sub run{
   my( $command ) = @_;
   print "$0: $command\n";
   print `$command`;
};

for $icofile( @ARGV ){
   ( $basename = $icofile ) =~ s/\.ico$//;
   $cfile = "$basename.c";
   $sfile = "$basename.s";
   open( ICOFILE, "<$icofile" ) || die "$0: $icofile: $!";
   open( CFILE, ">$cfile" ) || die "$0: $cfile: $!";
   print "$0: reading $icofile\n";
   while( <ICOFILE> ){
      next unless s/^#\s+\d+: //;
      print CFILE;
   };
   close( ICOFILE );
   close( CFILE );
   &run( "gcc -fverbose-asm -S -O2 -mv8 $cfile" );
   &run( "perl -pi -e 's/^/!!!!    /' $cfile" );
   &run( "cat $sfile >>$cfile" );
   &run( "mv $cfile $sfile" );
   &run( "gcc $sfile c0libfns.o -o $basename" );
};
