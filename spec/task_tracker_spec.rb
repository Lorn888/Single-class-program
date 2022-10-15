require 'task_tracker'

RSpec.describe 'task_tracker' do
    it "has an option to add to do task" do
        result = task_tracker("task1")
        expect(result).to eq "task1"
    end 
end