package GreeHost::Panel::Controller::Project;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

# /projects/
sub get_index :Path :Args(0) :Method('GET') {
    my ( $self, $c ) = @_;

    $c->stash->{projects} = [
        { id => 1, name => 'todaychecklist.com', desc => 'The Today Checklist Website' },
        { id => 2, name => 'greehost.org',       desc => 'GreeHost Information Site' },
    ];
}

# /projects/
sub post_index :Path :Args(0) :Method('POST') {
    my ( $self, $c ) = @_;

    $c->response->body('Matched GreeHost::Panel::Controller::Project::create_project in Project.');
}

# /projects/new
sub get_create :Path('create') :Args(0) :Method('GET') {
    my ( $self, $c ) = @_;
}


# /projects/<id>
sub get_project :Path :Args(1) :Method('GET') {
    my ( $self, $c ) = @_;

    $c->response->body('Matched GreeHost::Panel::Controller::Project::view_project in Project.');
}

# /projects/<id>
sub post_project :Path :Args(1) :Method('POST') {
    my ( $self, $c ) = @_;

    $c->response->body('Matched GreeHost::Panel::Controller::Project::edit_project in Project.');
}

__PACKAGE__->meta->make_immutable;
