TRUNCATE TABLE students, cohorts RESTART IDENTITY;

INSERT INTO cohorts (name, starting_date) VALUES ('April 2022', '1/4/2022');
INSERT INTO cohorts (name, starting_date) VALUES ('May 2022', '1/5/2022');

INSERT INTO students (name, cohort_id) VALUES ('David', '1');
INSERT INTO students (name, cohort_id) VALUES ('Anna', '2');