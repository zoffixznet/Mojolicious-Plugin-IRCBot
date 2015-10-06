package Mojolicious::Plugin::IRCBot;

# VERSION

use Mojo::Base 'Mojolicious::Plugin';
use Mojo::IRC;

sub register {
    my ($self, $app) = @_;

    state $irc = Mojo::IRC->new;

    $app->helper(
        irc_bot => sub {
            my $c = shift;
        },
    );
}

1;

__END__

=encoding utf8

=for stopwords

=head1 NAME

Mojolicious::Plugin::IRCBot - Make your app talk to an IRC bot

=head1 SYNOPSIS

    #!/usr/bin/env perl

    use Mojolicious::Lite;

    plugin 'IRCBot';

=head1 DESCRIPTION

Using this plugin, your app can connect to IRC to talk to an IRC bot. In
other words, this plugin provides a web interface to an IRC bot.

=head1 SEE ALSO

L<Mojo::IRC>, L<Mojolicious>

=for pod_spiffy hr

=head1 REPOSITORY

=for pod_spiffy start github section

Fork this module on GitHub:
L<https://github.com/zoffixznet/Mojolicious-Plugin-IRCBot>

=for pod_spiffy end github section

=head1 BUGS

=for pod_spiffy start bugs section

To report bugs or request features, please use
L<https://github.com/zoffixznet/Mojolicious-Plugin-IRCBot/issues>

If you can't access GitHub, you can email your request
to C<bug-Mojolicious-Plugin-IRCBot at rt.cpan.org>

=for pod_spiffy end bugs section

=head1 AUTHOR

=for pod_spiffy start author section

=for pod_spiffy author ZOFFIX

=for pod_spiffy end author section

=head1 LICENSE

You can use and distribute this module under the same terms as Perl itself.
See the C<LICENSE> file included in this distribution for complete
details.

=cut