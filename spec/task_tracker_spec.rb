require 'task_tracker'

RSpec.describe 'task_tracker' do
    it "has an option to add to do task" do
        tracker = Reminder.new
        tracker.task_tracker("task1")
        result = tracker.task_list
        expect(result).to eq "task1"
    end 
end