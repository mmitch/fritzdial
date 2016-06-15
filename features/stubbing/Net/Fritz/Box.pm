package Net::Fritz::Box;

use Class::Tiny qw ( username password upnp_url );

use Net::Fritz::Device;

sub discover() {
    my $self = shift;

    return Net::Fritz::Device->new();
}

1;
