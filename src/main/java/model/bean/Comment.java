package model.bean;

public class Comment {
    private String guestName;
    private String comment;

    public Comment() {
        // Default constructor
    }

    public Comment(String guestName, String comment) {
        this.guestName = guestName;
        this.comment = comment;
    }

    public String getGuestName() {
        return guestName;
    }

    public void setGuestName(String guestName) {
        this.guestName = guestName;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}