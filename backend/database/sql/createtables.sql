-- Creates tables for the dataset
-- Creates relevent schemas and datatypes for each column


CREATE TABLE term (
    term_id INT NOT NULL PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    term_date DATE NOT NULL,
    additional_info TEXT
);

CREATE TABLE subject (
    subject_code INT PRIMARY KEY NOT NULL,
    subject_name TEXT NOT NULL,
    num_of_courses INT NOT NULL,
    course_level CHAR NOT NULL,
    avg_rating DECIMAL(3,2) NOT NULL
);

CREATE TABLE rating (
    course_code INT PRIMARY KEY NOT NULL,
    rating INT NOT NULL,
    uid INT NOT NULL,
    FOREIGN KEY (uid) REFERENCES user (uid)
);

CREATE TABLE courses (
    course_code INT PRIMARY KEY NOT NULL,
    course_name TEXT NOT NULL,
    subject_code INT,
    rating INT,
    enroll_cap INT NOT NULL,
    term_avail INT NOT NULL,
    prereqs TEXT,
    leads_to INT,
    anti_reqs TEXT,
    FOREIGN KEY (subject_code) REFERENCES subject (subject_code),
    FOREIGN KEY (leads_to) REFERENCES courses (course_code)
);

CREATE TABLE user (
    uid INT PRIMARY KEY NOT NULL,
    first_name TEXT,
    last_name TEXT,
    friends TEXT,
    start_year INT NOT NULL,
    taken_courses TEXT,
    planned_courses TEXT
);