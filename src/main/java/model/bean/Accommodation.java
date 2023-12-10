package model.bean;

public class Accommodation {
    private int id;
    private String name;
    private String contact;
    private String owner;
    private String address;
    private String website;

    public Accommodation() {
        // Default constructor
    }

    public Accommodation(int id, String name, String contact, String owner, String address, String website) {
        this.id = id;
        this.name = name;
        this.contact = contact;
        this.owner = owner;
        this.address = address;
        this.website = website;
    }
    
    public Accommodation(String name, String contact, String owner, String address, String website) {
        this(0, name, contact, owner, address, website);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }
}