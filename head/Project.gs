/*
 * class name: Project
 * description: model of a project
 * properties: int id, adr name, adr description, int status, int clientId;
 */
class Project{
    private int id;
    private adr name;
    private adr description;
    private int status;
    private int clientId;

    public int init(int id, int clientId, adr name, adr description);
    public int getId();
    public adr getName();
    public adr getDescription();
    public int getStatus();
    public int getClientId();

    public int serialize(adr buffer);
    public int deserialize(adr input);
};

Project projFromSerial(adr input);
Project newProject(int id, int clientId, adr name, adr description);