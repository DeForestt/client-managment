/*
 * class name:  Client
 * description: Represents a client in the system
 * properties:  id, name, address, phone, email, balance
 * methods:     getters and setters
 */

class Client {
    private int id;
    private adr name;
    private adr address;
    private adr phone;
    private adr email;
    public int balance;

    public int init(int id, adr name, adr address, adr phone, adr email);

    public int getId();
    public adr getName();
    public adr getAddress();
    public adr getPhone();
    public adr getEmail();
    public int getBalance(adr buffer);

    public int setName(adr name);
    public int setAddress(adr address);
    public int setPhone(adr phone);
    public int setEmail(adr email);

    public adr bill(adr amt);
    public adr pay(adr amt);

    public int deSerialize();
    public int serialize();
};

Client cliFromSerial(adr input);
Client newClient(adr name, adr address, adr phone, adr email);