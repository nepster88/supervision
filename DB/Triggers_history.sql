
--Trigger for history table of users
CREATE OR REPLACE TRIGGER t_users AFTER
INSERT OR
UPDATE ON users FOR EACH ROW BEGIN
INSERT
INTO history_users
  (
    user_id,
    first_name,
    last_name,
    login_name,
    password,
    email,
    type,
    mobile,
    is_active,
    created_date,
    modified_date,
    DATE_OF_BIRTH
  )
  VALUES
  (
    :NEW.user_id,
    :NEW.first_name,
    :NEW.last_name,
    :NEW.login_name,
    :NEW.password,
    :NEW.email,
    :NEW.type,
    :NEW.mobile,
    :NEW.is_active,
    :NEW.created_date,
    :NEW.modified_date,
    :NEW.DATE_OF_BIRTH
  );
END;
/
--Trigger for history table of courses
CREATE OR REPLACE TRIGGER t_courses AFTER
  INSERT OR
  UPDATE ON courses FOR EACH ROW BEGIN
  INSERT
  INTO history_courses
    (
      course_id,
      name,
      description,
      is_active,
      created_date,
      modified_date
    )
    VALUES
    (
      :NEW.course_id,
      :NEW.name,
      :NEW.description,
      :NEW.is_active,
      :NEW.created_date,
      :NEW.modified_date
    );
END;
/
--Trigger for history table of assignments
CREATE OR REPLACE TRIGGER t_assignments AFTER
  INSERT OR
  UPDATE ON assignments FOR EACH ROW BEGIN
  INSERT
  INTO history_assignments
    (
      asg_id,
      name,
      description,
      course_id,
      is_active,
      created_date,
      modified_date
    )
    VALUES
    (
      :NEW.asg_id,
      :NEW.name,
      :NEW.description,
      :NEW.course_id,
      :NEW.is_active,
      :NEW.created_date,
      :NEW.modified_date
    );
END;
/
--Trigger for history table of std_crs_asg
CREATE OR REPLACE TRIGGER t_std_crs_asg AFTER
  INSERT OR
  UPDATE ON std_crs_asg FOR EACH ROW BEGIN
  INSERT
  INTO history_std_crs_asg
    (
      student_id,
      course_id,
      asg_id,
      super_id,
      status,
      file_path,
      is_active,
      created_date,
      modified_date
    )
    VALUES
    (
      :NEW.student_id,
      :NEW.course_id,
      :NEW.asg_id,
      :NEW.super_id,
      :NEW.status,
      :NEW.file_path,
      :NEW.is_active,
      :NEW.created_date,
      :NEW.modified_date
    );
END;
/
--Trigger for history table of enrollments
CREATE OR REPLACE TRIGGER t_enrollments AFTER
  INSERT OR
  UPDATE ON enrollments FOR EACH ROW BEGIN
  INSERT
  INTO history_enrollments
    (
      student_id,
      course_id,
      super_id,
      status,
      is_active,
      created_date,
      modified_date
    )
    VALUES
    (
      :NEW.student_id,
      :NEW.course_id,
      :NEW.super_id,
      :NEW.status,
      :NEW.is_active,
      :NEW.created_date,
      :NEW.modified_date
    );
END;
/
--Trigger for history table of comments
CREATE OR REPLACE TRIGGER t_comments AFTER
  INSERT OR
  UPDATE ON comments FOR EACH ROW BEGIN
  INSERT
  INTO history_comments
    (
      student_id,
      course_id,
      asg_id,
      super_id,
      text,
      is_active,
      created_date,
      modified_date
    )
    VALUES
    (
      :NEW.student_id,
      :NEW.course_id,
      :NEW.asg_id,
      :NEW.super_id,
      :NEW.text,
      :NEW.is_active,
      :NEW.created_date,
      :NEW.modified_date
    );
END;
/
--Trigger for history table of sup_crs
CREATE OR REPLACE TRIGGER t_sup_crs AFTER
  INSERT OR
  UPDATE ON sup_crs FOR EACH ROW BEGIN
  INSERT
  INTO history_sup_crs
    (
      super_id,
      course_id,
      is_active,
      created_date,
      modified_date
    )
    VALUES
    (
      :NEW.super_id,
      :NEW.course_id,
      :NEW.is_active,
      :NEW.created_date,
      :NEW.modified_date
    );
END;
/
