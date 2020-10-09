package GreeHost::Panel::View::Xslate;
use Moose;
extends qw( Catalyst::View::Xslate );

## Patch:
#
#  We're doing a lot of "post_blah" and "get_blah", so let's make the templates
#  automatically handle that.
#
# + my $action = $c->action;
# + s/(^|\/)post_/$1/i, s/(^|\/)head_/$1/i, s/(^|\/)delete_/$1/, s/(^|\/)get_/$1/ for $action;
# 
# - my $template = $stash->{template} || $c->action . $self->template_extension;
# + my $template = $stash->{template} || $action . $self->template_extension;
#
# - $res->body( encode($self->content_charset, $output) );
# + $res->body( Catalyst::View::Xslate::encode($self->content_charset, $output) );
override process => sub {
    my ($self, $c) = @_;

    my $action = $c->action;
    s/(^|\/)post_/$1/i, s/(^|\/)head_/$1/i, s/(^|\/)delete_/$1/, s/(^|\/)get_/$1/ for $action;

    my $stash = $c->stash;
    my $template = $stash->{template} || $action . $self->template_extension;

    if (! defined $template) {
        $c->log->debug('No template specified for rendering') if $c->debug;
        return 0;
    }

    my $output = eval {
        $self->render( $c, $template, $stash );
    };
    if (my $err = $@) {
        return $self->_rendering_error($c, $err);
    }

    my $res = $c->response;
    if (! $res->content_type) {
        $res->content_type('text/html; charset=' . $self->content_charset);
    }

    if ( $self->encode_body ) {
        $res->body( Catalyst::View::Xslate::encode($self->content_charset, $output) );
    }
    else {
        $res->body( $output );
    }

    return 1;
};

__PACKAGE__->meta->make_immutable;
