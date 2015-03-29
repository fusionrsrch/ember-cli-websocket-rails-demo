class TaskController < WebsocketRails::BaseController

    def create
        # The `message` method contains the data received
        task = Task.new message
        if task.save
            trigger_success id: task.id, task: task, message: 'Task has been created' 
        else
            trigger_failure id: null, message: 'Task creation failed' 
        end
    end

end
