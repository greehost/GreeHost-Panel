package GreeHost::Panel::Controller::SSL;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

# /ssl
sub get_index :Path :Args(0) :Method('GET') {
    my ( $self, $c ) = @_;

    $c->response->body('Matched GreeHost::Panel::Controller::SSL::view_certs in Project.');
}

# /ssl
sub post_index :Path :Args(0) :Method('POST') {
    my ( $self, $c ) = @_;

    $c->response->body('Matched GreeHost::Panel::Controller::SSL::create_cert in Project.');
}

# /ssl/<id>
sub get_ssl :Path :Args(1) :Method('GET') {
    my ( $self, $c ) = @_;

    $c->response->body('Matched GreeHost::Panel::Controller::SSL::view_cert in Project.');
}

# /ssl/<id>
sub post_ssl :Path :Args(1) :Method('POST') {
    my ( $self, $c ) = @_;

    $c->response->body('Matched GreeHost::Panel::Controller::SSL::edit_cert in Project.');
}

__PACKAGE__->meta->make_immutable;
