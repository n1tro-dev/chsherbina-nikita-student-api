package com.example.studentapi.model;

import jakarta.persistence.*;

@Entity
@Table(name = "students")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String surname;

    @Column(name = "student_group")
    private String group;

    private String studentId;

    public Student() {}

    public Student(String name, String surname, String group, String studentId) {
        this.name = name;
        this.surname = surname;
        this.group = group;
        this.studentId = studentId;
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getSurname() { return surname; }
    public void setSurname(String surname) { this.surname = surname; }

    public String getGroup() { return group; }
    public void setGroup(String group) { this.group = group; }

    public String getStudentId() { return studentId; }
    public void setStudentId(String studentId) { this.studentId = studentId; }
}