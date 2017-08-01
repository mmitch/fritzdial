package Net::Fritz::Box;

use Class::Tiny qw ( username password upnp_url );

use Net::Fritz::Device;

$Net::Fritz::Box::VERSION = 'v0.0.9';

sub discover() {
    my $self = shift;

    return Net::Fritz::Device->new();
}

1;
