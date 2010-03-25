use strict;
use warnings;
use Test::Base tests => 5;

use WebService::Aladdin;

my $aladdin = WebService::Aladdin->new();
ok $aladdin;

my $data = $aladdin->search('Perl');
isa_ok ref $data, 'WebService::Aladdin::Items';
isa_ok $data->items, 'ARRAY';
isa_ok $data->items->[0], 'HASH';

ok $data->items->[0]->title;
