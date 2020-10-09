package GreeHost::Panel::Controller::Account;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }


# /account/create
sub post_create :Path('create') :Args(0) :Method('POST') {
    my ( $self, $c ) = @_;

    print "I got a posting!";

}

# /account/create
sub get_create :Path('create') :Args(0) :Method('GET') {

}

# /account/login
sub get_login :Path('login') :Args(0) :Method('GET') {

}

# /account/login
sub post_login :Path('login') :Args(0) :Method('POST') {

}

# /account/logout
sub post_logout :Path('logout') :Args(0) :Method('POST') {

}

# /account/forgot
sub get_forgot :Path('forgot') :Args(0) :Method('GET') {

}

# /account/forgot
sub post_forgot :Path('forgot') :Args(0) :Method('POST') {

}

# /account/reset
sub get_reset :Path('reset') :Args(0) :Method('GET') {
    my ( $self, $c ) = @_;

    $c->res->body( $c->stash->{template} );

}

# /account/reset
sub post_reset :Path('reset') :Args(0) :Method('POST') {

}

__PACKAGE__->meta->make_immutable;
