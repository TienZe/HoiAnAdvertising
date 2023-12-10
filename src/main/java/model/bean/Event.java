package model.bean;

public class Event {
    private int id;
    private String name;
    private String timeZone;
    private String location;

    public Event() {
        // Default constructor
    }

    public Event(int id, String name, String timeZone, String location) {
        this.id = id;
        this.name = name;
        this.timeZone = timeZone;
        this.location = location;
    }
    
    public Event(String name, String timeZone, String location) {
        this(0, name, timeZone, location);
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

    public String getTimeZone() {
        return timeZone;
    }

    public void setTimeZone(String timeZone) {
        this.timeZone = timeZone;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}