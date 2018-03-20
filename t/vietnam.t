use warnings;
use strict;
use utf8;
use FindBin '$Bin';
use Test::More;
my $builder = Test::More->builder;
binmode $builder->output,         ":utf8";
binmode $builder->failure_output, ":utf8";
binmode $builder->todo_output,    ":utf8";
binmode STDOUT, ":encoding(utf8)";
binmode STDERR, ":encoding(utf8)";
use Net::IPv6Addr;
my $addr = Net::IPv6Addr->new ('2405:4800:56a7:b16:21bd:e851:60b6:202d');
ok ($addr->in_network ('2405:4800::/32'));
done_testing ();