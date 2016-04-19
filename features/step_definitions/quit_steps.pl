#!perl

use strict;
use warnings;

use Test::More;
use Test::BDD::Cucumber::StepFile;

use Expect;

Given qr/a running fritzdial/, sub {
    my $expect = Expect->new();
    isa_ok($expect, 'Expect', 'Expect->new');

    $expect->log_stdout(0);
    $expect->spawn('./fritzdial', ())
	|| fail("cannot spawn command: $!");

    $expect->expect(5, '-re', 'configuration file\.\.\.OK')
	|| fail("configuration file error on startup");
    
    $expect->expect(5, '-re', 'connection\.\.\.OK')
	|| fail("connection failure on startup");
    
    S->{'child'} = $expect;
};

When qr/I enter "(.+)"/, sub {
    S->{'child'}->send("$1\n");
};

When qr/I close stdin/, sub {
    close(S->{'child'}) || fail("cannot close command stdin: $!");
};

Then qr/fritzdial should quit/, sub {
    my $expect = S->{'child'};
    
    my $match = $expect->expect(1, '-re', 'exiting');
    is($match, 1, 'exit message');

    # FIXME: check child status
#    $match = $expect->expect(1, 'eof', sub {});
#    my $error = $expect->error();
#    is($error, '2:EOF,' 'close child');
    
#    is($expect->exp_exitstatus(), 0, 'exit status');
};


sub enter_command {
    my ($text) = (@_);
    print S->{'input'}, "$text\n";
}
