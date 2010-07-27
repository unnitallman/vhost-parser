def vhost_parse(file)
	domains = []
	open(file).each_line do |line|
		if line.include?("ServerName")	
			domains << line.split("ServerName").last.strip
		elsif line.include?("ServerAlias")
			domains << line.split("ServerAlias").last.strip
		end
	end
	domains
end

#puts vhost_parse(ARGV[0])
