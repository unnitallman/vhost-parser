require 'vhostfile_parser'

VHOST_PATH = "/etc/apache2/sites-available/"

open(ARGV[0]).each_line do |line|
	rebrand_name = line.chomp	
	file = File.join(VHOST_PATH,rebrand_name)
	domains = vhost_parse file
	
	arr  = [rebrand_name] + domains
	puts arr.join(',')
end
