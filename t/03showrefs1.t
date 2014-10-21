use strict;
use Test::More tests => 1;
use Devel::SimpleTrace 'showrefs';

my $text = "Advice from Klortho #11901: You cant just make shit up and expect the computer to know what you mean, Retardo!";

eval {
    die bless {
        ($] <= 5.005 ? (text => $text)
                     : (type => 'error', text => $text)
        )
    }, 'Exception'
};

like( $@, 
      qq|/^Caught exception object: Exception=HASH\\(0x[0-9a-fA-F]+\\): bless\\( \\{\n|.
      qq|\\s+'text' => '\Q$text\E',?\n|.
      ($] <= 5.005 ? '' : qq|\\s+'type' => 'error',?\n|) .
      qq|\\}, 'Exception' \\)/|, 
      "checking the trace"
);
