/*
 * class name: Task
 * description: a task that is associated with a project
 * 
 */
class Task{
    private int id;
    private int projectId;
    private adr name;
    private adr description;
    private int earlyStart;
    private int lateStart;
    private int earlyFinish;
    private int lateFinish;
    private int duration;

    public int init(int id, int projectId, adr name, description);
};