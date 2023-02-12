use strict;
use warnings;
use Fcntl qw(SEEK_SET);

# subroutines
sub my_cmp {
	if ($a->[0] > $b->[0]) {
		return -1; # reverse order
	} elsif ($a->[0] < $b->[0]) {
		return 1; # reverse order
	}
	return 0;
}

sub usage() {
	# if translated-text is not given just checks if we have or not
	die "<file> <search-text> [<translated-text>]\n";
}

# parse and check the args
my ($file, $orig, $translated) = @ARGV;

if ((not defined $orig) || (not defined $file)) {
	usage();
}

# try to open file
open my $FH, '+<', $file or die "Could not open $file: $!";

# global variables
my @lines = ();
my $elem_found = 0;

# read the formatted data into array and push the it's ref. into lines array
# format: <hit-count>=<orig-text>=<translated-text>
while (my $line = <$FH>) {
	my @elems = split('=', substr $line, 0, -1);

	# update hit count if it found
	if ($orig eq $elems[1]) {
		$elems[0]++;
		$elem_found = 1;
	}
	push(@lines, \@elems);
}

if ($elem_found == 1) {
	# point to the beggining of the file to rewrite
	seek $FH, 0, SEEK_SET;

	# sort the lines with comparing hit count
	my @test = sort my_cmp @lines;
	# print sorted form to the file
	foreach (@test) {
		my @a = @{$_}; # dereference
		print $FH join('=', @a) . "\n";
	}
} else {
	if (not defined $translated) {
		print "Not found!\n";
	} else {
		# just add the new word one at the end of the file
		my @elems = ("1", $orig, $translated);
		my $str = join('=', @elems) . "\n";
		print $FH $str;

		print "Following item appended successfully!\n" . $str;
	}
}

# we're done
close $FH

