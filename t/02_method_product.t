use strict;
use warnings;
use Test::Base tests => 2;

use WebService::Aladdin;

my $aladdin = WebService::Aladdin->new();
ok $aladdin;

my $data = $aladdin->product('895461180X');
ok $data;
