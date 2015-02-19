#!usr/bin/perl
use IO::Socket::INET; 
system("\@echo off & color a & cls");
print "
   ======================= Ashiyane Port Scanner =======================
   +								       +
   +               ..:: Ashiyane Digital Security Team ::..            +
   +				Perl Edition			       +
   +                               By Hror                             +
   + Greetingz:  						       +
   +								       +
   + Maziar,Evil Shadow,Milad Hackng,Ramin,Mr Tekide,Black Sky,MehdiYar+
   +    4L1R3Z4,AC3S,Acid,Mahdi Hidden,SHD.N3T,S!Y0U.T4r.6T,D3STR0Y3R  +
   + 	      arshiya la,sc13nt15t,™AsAs4242,Alireza Attacker	       +
   =====================================================================
   
";
print " This Program will Scan Ur target,\n  you can whether enter a site or an IP address.\n\n";
print " Enter Ur Address :";
$host = <STDIN>;
chomp( $host ); 
print "\n Choose Scan mode! Enter Q for Quick mode or C for Complete mode. Q\C?";
$mode = <STDIN>;
$fail=0;
if ($mode == "C"){
	print "\n Ashiyane Port Scanner Starts To proccess Ur Request :\n\n";
	for ($i=1;$i<65535;$i++){
		
		$socket = IO::Socket::INET->new( PeerAddr => $host,PeerPort => "$i",Proto => "tcp",Timeout  => "0.3") || $fail++;
		close $socket; 
		
			if ($fail == 0){
				print "Open Port found! : ";
				print $i;
				print "\n";
				}
				$fail = 0;
	}}
if ($mode=="Q"){
	@ports=(20,21,22,23,24,25,35,37,53,80,88,161,162,530,546,547,561,443,1433,1434,1701,1723,3389);
	foreach $i (@ports){
		$socket = IO::Socket::INET->new( PeerAddr => $host,PeerPort => "$i",Proto => "tcp",Timeout  => "0.5") || $fail++;
		close $socket; 
	if ($fail == 0){
				print "Open Port found! : ";
				print $i;
				print "\n";
				}
				$fail = 0;
				
}
}
