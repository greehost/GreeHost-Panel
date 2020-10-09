use strict;
use warnings;
use Test::More;


use Catalyst::Test 'GreeHost::Panel';
use GreeHost::Panel::Controller::SSL;

ok( request('/ssl')->is_success, 'Request should succeed' );
done_testing();
