my $app = sub {
    my $env = shift;
    return [
        200,
        [
            'Content-Type'     => 'application/json',
            'X-Accel-Redirect' => '/reproxy',
            'X-Reproxy-URL'    => 'http://127.0.0.1:5001',
        ],
        [
            'Hello World.'
        ],
    ],
};
