use strict;
use warnings;
use Test::More;


use Catalyst::Test 'GreeHost::Panel';
use GreeHost::Panel::Controller::Project;

ok( request('/project')->is_success, 'Request should succeed' );
done_testing();
