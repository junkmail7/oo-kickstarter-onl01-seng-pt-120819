class Project
  attr_accessor :title, :backers
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    if !backer.backers.include?(self)
      project.add_backer(self)
    end
  end
    
end