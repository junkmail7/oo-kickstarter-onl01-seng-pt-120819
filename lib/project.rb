class Project
  attr_accessor :title, :backers
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    if !backer.backed_projects.include?(self)
      backer.add_backer(self)
    end
  end
    
end