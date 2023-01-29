#!/bin/perl
use LWP::UserAgent;
system("clear");
my $ua = LWP::UserAgent->new;
$ua->timeout(10);
my $response = $ua->get('http://www.google.com');
if ($response->is_success) {
    print "Connected to the internet!\n";
} else {
    print "Not connected to the internet.\n";
    exit;
}
system("clear");
print "Enter Your Domain Name : ";
$name = <STDIN>;
chomp $name;
