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

    public int getId();
    public int getProjectId();
    public adr getName();
    public adr getDescription();
    public int getEarlyStart();
    public int getLateStart();
    public int getEarlyFinish();
    public int getLateFinish();
    public int getDuration();

    public void setId(int id);
    public void setProjectId(int projectId);
    public void setName(adr name);
    public void setDescription(adr description);
    public void setEarlyStart(int earlyStart);
    public void setLateStart(int lateStart);
    public void setEarlyFinish(int earlyFinish);
    public void setLateFinish(int lateFinish);
    public void setDuration(int duration);
};