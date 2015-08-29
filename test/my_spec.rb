
    describe "ParseFileExist" do
        it "Should be in public folder" do
        @files = Dir.glob('test/parse_files/U*_*_*.*')
        @files.each{ |x| 
          if File.exist?(x) == true
              puts x.to_s
              puts "File exist!"
          else
              puts"failed"
          end
       }


    end
  end
