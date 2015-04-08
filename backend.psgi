use JSON;
use Plack::Request;
my $app = sub {
    my $env = shift;
    my $req = Plack::Request->new($env);
    return [
        200,
        [
            'Content-Type' => 'application/json',
        ],
        [
            JSON->new->pretty->encode(
                {
                    http_method  => $req->method,
                    request_body => $req->content,
                }
            ),
        ]
    ],
}
