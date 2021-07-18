class MP3Importer
    attr_accessor :path, :artist, :song
   
    def initialize(path)
     @path = path
    end
   
    def files
        Dir.glob("#{path}/*.mp3").collect do |file|
            file.gsub("#{path}/", "")
        end
    end
  
    def import
        files.collect do |file|
            song = Song.new_by_filename(file)
      end
    end
   
   end