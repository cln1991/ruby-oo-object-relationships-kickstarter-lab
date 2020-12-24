class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backer_array = ProjectBacker.all.select do |proj|
            proj.backer == self
                
            end
            project_backer_array.map do |proj|
                proj.project
        end
    end


end