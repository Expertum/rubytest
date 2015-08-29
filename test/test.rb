require 'date'
puts "Start"
puts
     @h =[]
     @files = Dir.glob('test/parse_files/U*_*_*.*')

     @files.each_with_index{|x,i| @e = {:id => x.to_s.split('/').last.to_s.split('_')[0], :type => x.to_s.split('/').last.to_s.split('_')[1], :date => x.to_s.split('/').last.to_s.split('_')[2].to_s.split('.')[0], :url => x.to_s}; @h.push(@e) }

   @h.chunk{ |hash| hash[:id] }.map(&:last).each do |x|
      puts x.first[:id]
      x.group_by{ |hash| hash[:date] }.each do |y|
       d = Date.parse( y[0].gsub(/, */, '-') )
       puts '****** ' + d.to_s
         y[1].each do |c|
           puts '******** ' + c[:type].to_s
                @ff=''
                       File.open(c[:url], 'r') do |f|
                         f.each_line do |line|
                          @ff = @ff + line
                          end
                       end
         end
    end
  end
puts
puts "End"
