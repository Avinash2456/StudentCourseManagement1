
package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "feedback_table")
public class Feedback {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "student_name", length = 100, nullable = false)
    private String studentName;

    @Column(name = "email", length = 100, nullable = false)
    private String email;

    @Column(name = "navigation_rating", length = 50, nullable = false)
    private String navigationRating;

    @Column(name = "content_rating", nullable = false)
    private String contentRating;

    @Column(name = "comments", length = 255)
    private String comments;

    // Getters and setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNavigationRating() {
        return navigationRating;
    }

    public void setNavigationRating(String navigationRating) {
        this.navigationRating = navigationRating;
    }

    public String getContentRating() {
        return contentRating;
    }

    public void setContentRating(String contentRating) {
        this.contentRating = contentRating;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }
}
