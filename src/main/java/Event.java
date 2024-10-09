
public class Event {
    private int id;
    private String title;
    private java.sql.Date eventDate;
    private String description;

    // Constructor
    public Event(int id, String title, java.sql.Date eventDate, String description) {
        this.id = id;
        this.title = title;
        this.eventDate = eventDate;
        this.description = description;
    }

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public java.sql.Date getEventDate() {
        return eventDate;
    }

    public void setEventDate(java.sql.Date eventDate) {
        this.eventDate = eventDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
