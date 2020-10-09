use strict;
use warnings;
use Test::More;


use Catalyst::Test 'GreeHost::Panel';
use GreeHost::Panel::Controller::account;

ok( request('/account')->is_success, 'Request should succeed' );
done_testing();
