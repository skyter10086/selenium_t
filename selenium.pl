use WWW::Selenium;
 
my $sel = WWW::Selenium->new( host => "localhost",
                              port => 5544,
                              browser => "*firefox",
                              browser_url => "http://baidu.com",
                            );
 
$sel->start;
$sel->open("http://www.baidu.com");
$sel->type("q", "hello world");
$sel->click("btnG");
$sel->wait_for_page_to_load(5000);
print $sel->get_title;
$sel->stop;