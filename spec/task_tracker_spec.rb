require 'task_tracker'

RSpec.describe 'task_tracker' do
    it "has an option to add to do task" do
        tracker = Reminder.new
        tracker.task_tracker("task1")
        result = tracker.task_list
        expect(result).to eq "task1"
    end 

    it "returns multiple tasks" do
        tracker = Reminder.new
        tracker.task_tracker("task1")
        tracker.task_tracker("task2")
        result = tracker.task_list
        expect(result).to eq "task1, task2"
    end 

    it "returns empty string when marked tasks as complete" do
        tracker = Reminder.new
        tracker.task_tracker("task1")
        tracker.task_tracker("task2")
        tracker.complete
        result = tracker.task_list
        expect(result).to eq ""
    end

    it "returns one task  " do
        tracker = Reminder.new
        tracker.task_tracker("task1")
        tracker.task_tracker("task2")
        tracker.complete
        tracker.task_tracker("task3")
        result = tracker.task_list
        expect(result).to eq "task3"
    end

    



end
