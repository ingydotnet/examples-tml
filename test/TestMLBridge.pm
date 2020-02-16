package TestMLBridge;
use base 'TestML::Bridge';

sub divide_then_multiply {
    my ($self, $x, $y) = @_;

    ($x / $y) * $y;
}

1;
