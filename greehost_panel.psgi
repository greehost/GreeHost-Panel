use strict;
use warnings;

use GreeHost::Panel;

my $app = GreeHost::Panel->apply_default_middlewares(GreeHost::Panel->psgi_app);
$app;

