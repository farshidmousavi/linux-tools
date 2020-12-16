#!/user/bin/perl
#Coded by D4rkC0d3
#
#
#
use Term::ANSIColor;
print '          _______________________________________________________________________________'."\n";
print '         |                                                                               |'."\n";
print '         |                        D4rkC0d3 password list maker                           |'."\n";
print '         |                           ----------------------                              |'."\n";
print '         |                                  END WORLD                                    |'."\n";
print '         |                           ----------------------                              |'."\n";
print '         |                             What is END WORLD?                                |'."\n";
print '         |   END WORLD is an collection of applications writen by D4rkC0d3 for hacking   |'."\n";
print '          _______________________________________________________________________________'."\n";
print "\nTypes.";
print "\n  1 (Your word)+Numbers.";
print "\n  2 Numbers+(Your word).";
print "\n  3 (Your word)+Numbers+(Your word).";
print "\n  4 Numbers+(Your word)+Numbers.";
print "\n  5 Just numbers.";
print "\nWhat type you need?:";
$type = <STDIN>;
chomp($type);
print "\nType your word for combat:";
$word = <STDIN>;
chomp($word);
print "\nHow long you want?\nfrom :";
$longfrom = <STDIN>;
chomp($longfrom);
print "To :";
$longto = <STDIN>;
chomp($longto);
print "\nPassword list name:";
$name = <STDIN>;
chomp($name);
for($i=$longfrom ; $i<= $longto ; $i++){
  if($type == '1'){
  $list = "$word$i\n";
  }elsif($type == '2'){
  $list = "$i$word\n";
  }elsif($type == '3'){
  $list = "$word$i$word\n";
  }elsif($type == '4'){
  $list = "$i$word$i\n";
  }elsif($type == '5'){
  $list = "$i\n";
  }
open(output,">>$name.txt") or print "Sory cant make...";
print output $list;
}
print "\n".colored ("Password list created...", 'green'), "\n";