INSERT
INTO Users
  (
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
    date_of_birth
  )
  VALUES
  (
    'Margaret',
    'Mitchell',
    'mmitchell1',
    'y23gGzBcjfkF',
    'mmitchell1@sphinn.com',
    1,
    '9999999999',
    1,
    '30-Aug-2015',
    '30-Aug-2015',
    '25-Oct-1955'
  );
INSERT
INTO Users
  (
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
    date_of_birth
  )
  VALUES
  (
    'Jennifer',
    'Gutierrez',
    'jgutierrez2',
    '6QJwqb',
    'jgutierrez2@symantec.com',
    1,
    '9999999999',
    1,
    '13-Aug-2016',
    '13-Aug-2016',
    '25-Oct-1955'
  );
INSERT
INTO Users
  (
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
    date_of_birth
  )
  VALUES
  (
    'Donald',
    'Oliver',
    'doliver3',
    'Xx7UCHNJ1',
    'doliver3@illinois.edu',
    2,
    '9999999999',
    1,
    '22-Dec-2015',
    '22-Dec-2015',
    '25-Oct-1955'
  );
INSERT
INTO Users
  (
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
    date_of_birth
  )
  VALUES
  (
    'Patricia',
    'Cunningham',
    'pcunningham4',
    'QmISLpb7tb',
    'pcunningham4@state.tx.us',
    2,
    '9999999999',
    1,
    '24-Dec-2015',
    '24-Dec-2015',
    '25-Oct-1955'
  );
INSERT
INTO Users
  (
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
    date_of_birth
  )
  VALUES
  (
    'Jacqueline',
    'Hamilton',
    'jhamilton5',
    'cmaJ37fAfeLE',
    'jhamilton5@mtv.com',
    2,
    '9999999999',
    1,
    '06-Dec-2015',
    '06-Dec-2015',
    '25-Oct-1955'
  );
INSERT
INTO Users
  (
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
    date_of_birth
  )
  VALUES
  (
    'Steve',
    'Cooper',
    'scooper6',
    'd0UkCDXruW',
    'scooper6@nsw.gov.au',
    2,
    '9999999999',
    1,
    '25-Oct-2015',
    '25-Oct-2015',
    '25-Oct-1955'
  );

--insert courses

insert into Courses (name, description, created_date, modified_date, is_active) values ('SQL', 'Basics of SQL', '13-Feb-2016', '13-Feb-2016', 1);
insert into Courses (name, description, created_date, modified_date, is_active) values ('PL/SQL', 'Programming with PL/SQL', '15-Oct-2015', '15-Oct-2015', 1);

--insert assignments
insert into Assignments (name, description, course_id, is_active, created_date, modified_date) values (1, 'DML and DDL', 300, 1, '17-Nov-2015', '17-Nov-2015');
insert into Assignments (name, description, course_id, is_active, created_date, modified_date) values (2, 'SubQuery', 300, 1, '03-Mar-2016', '03-Mar-2016');
insert into Assignments (name, description, course_id, is_active, created_date, modified_date) values (3, 'Join and Set Operations',301, 1, '08-Jun-2016', '08-Jun-2016');
insert into Assignments (name, description, course_id, is_active, created_date, modified_date) values (4, 'Packages', 301, 1, '19-Sep-2015', '19-Sep-2015');
insert into Assignments (name, description, course_id, is_active, created_date, modified_date) values (5, 'Functions and Procedures', 301, 1, '13-Apr-2016', '13-Apr-2016');
insert into Assignments (name, description, course_id, is_active, created_date, modified_date) values (6, 'Triggers', 301, 1, '23-Nov-2015', '23-Nov-2015');
