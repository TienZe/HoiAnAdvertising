package model.bean;

public class Accomodation {
    private String id;
    private String name;
    private String contact;
    private String owner;
    private String address;
    private String website;

    public Accomodation() {
        // Default constructor
    }

    public Accomodation(String id, String name, String contact, String owner, String address, String website) {
        this.id = id;
        this.name = name;
        this.contact = contact;
        this.owner = owner;
        this.address = address;
        this.website = website;
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

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }
}