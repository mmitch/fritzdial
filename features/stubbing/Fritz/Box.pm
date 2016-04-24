package Fritz::Box;

use Class::Tiny qw ( username password upnp_url );

use Fritz::Device;

sub discover() {
    my $self = shift;

    return Fritz::Device->new();
}

1;
