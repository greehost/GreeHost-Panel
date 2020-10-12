package GreeHost::Panel::Controller::SSL;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

# /ssl
sub get_index :Path :Args(0) :Method('GET') {
    my ( $self, $c ) = @_;

    $c->stash->{certs} = [
        { id => 1, name => 'todaychecklist.com', domains => [ 'www.todaychecklist.com' ] },
        { id => 2, name => 'greehost.org',       domains => [qw( www.greehost.org )]     },
        { id => 3, name => 'greehost.com',       domains => [qw( *.greehost.com *.mn.greehost.com )] },
    ];
}

# /ssl
sub post_index :Path :Args(0) :Method('POST') {
    my ( $self, $c ) = @_;

    $c->response->body('Matched GreeHost::Panel::Controller::SSL::create_cert in Project.');
}
# /projects/new
sub get_create :Path('create') :Args(0) :Method('GET') {
    my ( $self, $c ) = @_;
}


# /ssl/<id>
sub get_ssl :Path :Args(1) :Method('GET') {
    my ( $self, $c ) = @_;

}

# /ssl/<id>
sub post_ssl :Path :Args(1) :Method('POST') {
    my ( $self, $c ) = @_;

    $c->response->body('Matched GreeHost::Panel::Controller::SSL::edit_cert in Project.');
}

__PACKAGE__->meta->make_immutable;
