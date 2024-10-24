pragma solidity ^0.8.21;

contract TodoList {
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
        // Consider adding: address owner;
    }

    mapping(uint => Task) public tasks;

    event TaskCreated(
        uint id,
        string content,
        bool completed
        // Consider adding: address indexed owner
    );

    event TaskCompleted(
        uint id,
        bool completed
        // Consider adding: address indexed owner
    );

    // Add input validation
    modifier validTaskId(uint _id) {
        require(_id > 0 && _id <= taskCount, "Invalid task ID");
        _;
    }

    function createTask(string memory _content) public {
        // Add input validation
        require(bytes(_content).length > 0, "Content cannot be empty");
        
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
        // Consider adding: msg.sender as owner
        emit TaskCreated(taskCount, _content, false);
    }

    function completeTask(uint _id) public validTaskId(_id) {
        // Storage instead of Memory for direct state modification
        Task storage _task = tasks[_id];
        // Consider adding: require(msg.sender == _task.owner, "Not task owner");
        
        _task.completed = !_task.completed;
        // Remove this line as it's unnecessary with storage
        // tasks[_id] = _task;
        
        emit TaskCompleted(_id, _task.completed);
    }

    function getTask(uint _id) public view validTaskId(_id) returns (string memory content, bool completed) {
        Task memory task = tasks[_id];
        return (task.content, task.completed);
    }
}