package Net::Fritz::Device;

use Class::Tiny qw ( needs_at_leat_one_attribute );

use Net::Fritz::Service;

sub error() {
    return 0;
}

sub find_service() {
    my ($self, $service) = (@_);
    return Net::Fritz::Service->new( name => $service );
}

1;
