srand(12091209);

for (my $max = 16384; $max > 0; $max >>= 4) {
  my $i = 16384;
  while($i > 0) {
    $num = int(rand($max));
    $i--;
    next if ($i % 1000);
    print "$i ($max): $num\n";
  }
}
