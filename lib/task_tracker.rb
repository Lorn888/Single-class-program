class Reminder

    def initialize
    @tasks = []
    end

    def complete
        @tasks = []
    end
    
    def task_tracker(task)
        @tasks.push(task)
    end

    def task_list
        return @tasks.join(", ")
    end



end

 ok = Reminder.new

 ok.task_tracker("task2")
 ok.task_tracker("task1")
 ok.complete
 p ok.task_list