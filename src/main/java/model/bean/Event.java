package model.bean;

public class Event {
    private int slotLine;
    private String name;
    private String timeZone;
    private String location;

    public Event() {
        // Default constructor
    }

    public Event(int slotLine, String name, String timeZone, String location) {
        this.slotLine = slotLine;
        this.name = name;
        this.timeZone = timeZone;
        this.location = location;
    }

    public int getSlotLine() {
        return slotLine;
    }

    public void setSlotLine(int slotLine) {
        this.slotLine = slotLine;
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