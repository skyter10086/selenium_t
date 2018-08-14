use Selenium::Remote::Driver;
use Selenium::ActionChains;
use utf8::all;
use MIME::Base64 qw( encode_base64 decode_base64);
use Data::Printer;
 
my $driver = Selenium::Remote::Driver->new;
$driver->is_webdriver3 ;
my $action_chains = Selenium::ActionChains->new(driver => $driver);

=pod
$driver->get("http://www.tonow.cn/office");
my $elt_1 = $driver->find_element("//*[\@id='username']");
my $elt_2 = $driver->find_element("//*[\@id='password1']");
my $img_64 = $driver->find_element("//img[\@title='没有看清？点击换一个...']");
$img_64->capture_screenshot('./code.jpg');
my $elt_3 = $driver->find_element("//input[\@id='getcode']");
$action_chains->send_keys_to_element($elt_1,'曾理')->send_keys_to_element($elt_2,'123456')->click($elt_3)->perform;
$driver->pause(5000);
#my $msg = $driver->get_text("//*[\@id='showMsg']");

#print "$msg\n";
#my ($cookie) = grep {$_->{name} eq 'GGPT'} @{$driver->get_all_cookies}; 
if  ( my $cookie = $driver->get_cookie_named('GGPT') ) {
    #my $el_sd18 = $driver->find_element("//a[\@id='sd18']")->get_attribute();
    $driver->get("http://www.tonow.cn/office/yanglaoyw/zzrycbyw/zdryyw/zdyw_hzll.asp");
    #$driver->switch_to_frame($driver->find_element("//iframe[\@src='yanglaoyw/zzrycbyw/zdryyw/zdyw_hzll.asp']"));
    my $el_sele = $driver->find_element("//select[\@id='dwbm']");
    my $el_opt = $driver->find_child_elements($el_sele,"./option");
    #my @in = grep {$_->value ne ""} @{$el_opt};
    foreach my $it (@$el_opt) {
        print $it->get_text,"\n";
    }
    
}
#p $cookie;
#$driver->close;
=cut

