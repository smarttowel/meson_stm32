#!/bin/ruby

require 'pathname'

if(ARGV[0] == 'sources')
    srcs = Dir.glob('../cube/**/*.c')
    for src in srcs do
        puts src
    end
elsif(ARGV[0] == 'headers')
    incs = []
    headers = Dir.glob('../cube/**/*.h')
    for header in headers do
        incs.push(Pathname.new(header).dirname)
    end
    incs.uniq!
    for inc in incs do
        puts inc
    end
end
