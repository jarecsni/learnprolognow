$lineno = 0;
while($line = <>) {
    $lineno = $lineno + 1;
    if($line =~ m/ab*c/) {
        print "A match (", $lineno, "): ", $line;
    }
}