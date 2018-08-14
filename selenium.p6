use v6;
use Selenium::WebDriver::PhantomJS;

my $driver = Selenium::WebDriver::PhantomJS.new;
$driver.url("http://hao123.com");
say "Title: "         ~ $driver.title;
say "URL: "           ~ $driver.url;
say "Source length: " ~ $driver.source.chars;
#$driver.save-screenshot('test.png');
LEAVE {
  $driver.quit if $driver.defined
};
