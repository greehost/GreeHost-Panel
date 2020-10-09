use strict;
use warnings;
use Test::More;


use Catalyst::Test 'GreeHost::Panel';
use GreeHost::Panel::Controller::Account;

ok( request('/account')->is_success, 'Request should succeed' );
done_testing();
