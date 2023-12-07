package model.bean;

public class Restaurant {
    private String id;
    private String name;
    private String contact;
    private String owner;
    private String address;

    public Restaurant() {
        // Default constructor
    }

    public Restaurant(String id, String name, String contact, String owner, String address) {
        this.id = id;
        this.name = name;
        this.contact = contact;
        this.owner = owner;
        this.address = address;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
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
}