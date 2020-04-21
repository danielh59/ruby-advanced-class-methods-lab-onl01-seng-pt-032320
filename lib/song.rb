class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
  song = self.new 
song.save 
song 
end 

def self.new_by_name(name)
song = self.new 
song.name = name 
song 
end 

def self.create_by_name(name)
song = self.new 
song.name =  name 
song.save 
song 
end 

def self.find_by_name(name)
  self.all.find{|song| song.name == name}
end 

def self.find_or_create_by_name(name)
 xyz = self.find_by_name(name)
if xyz
  xyz
else
  self.create_by_name(name)
end 
end 

def self.alphabetical 
self.all.sort_by {|xyz| xyz.name}
end 

<<<<<<< HEAD
 def self.new_from_filename(name)
    song = self.new 
    song.name = (name.split(" - ")[1].chomp(".mp3"))
    song.artist_name = (name.split(" - ")[0])
    song
  end
  
  def self.create_from_filename(name)
    song = self.new
    song.name = (name.split(" - ")[1].chomp(".mp3"))
    song.artist_name = (name.split(" - ")[0])
    @@all << song
    song
  end
def self.destroy_all
=======
def self.new_from_filename(name)
  first_step = name.split(" - ")
  first_step[1] = first_step[1].chomp(".mp3")
 song = self.new
 song.name = first_step[0]
 song.artist_name = first_step[1]
end 

def self.ceate_from_filename(name)
song = self.new 
 first_step = name.split(" - ")
  first_step[1] = first_step[1].chomp(".mp3")
  song.name = first_step[0]
   song.artist_name = first_step[1] 
   song.save
end 

def self.destry_all()
>>>>>>> a46453c02aad81063b6e3e6f7e8ca1e06b843b9f
  @@all.clear
end 
end 