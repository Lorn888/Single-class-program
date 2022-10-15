class Reminder

    def initialize
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
 p ok.task_tracker("task1")