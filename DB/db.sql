SET FEEDBACK 1
SET NUMWIDTH 10
SET LINESIZE 132
SET TRIMSPOOL ON
SET TAB OFF
SET PAGESIZE 999
SET ECHO OFF
SEt VERIFY OFF


SPOOL s3_Install.log


DEFINE DEMO_SCHEMA = s3
DEFINE DEMO_SCHEMA_PASSWORD = s3
DEFINE OVERRIDE_EMAIL_ADDRESS = my.name@oracle.com
DEFINE SMTP_SERVER = stmail.oracle.com

REM Create the schema owner - this can fail if the 
REM Script has already been run, but that's OK as the first 
REM Step of the createSchemaObjects is to drop the existing objects just in case

@@creates3Schema &&DEMO_SCHEMA &&DEMO_SCHEMA_PASSWORD

REM  connect to user account and invoke the scripts that create schema objects.

CONNECT &&DEMO_SCHEMA/&&DEMO_SCHEMA_PASSWORD@xe

@@creates3SchemaObjects

REM Add the triggers needed 
@@createSequenceTriggers

@@Triggers_history
REM Add the sample data to the tables

--@@populateFODSchemaTables &&OVERRIDE_EMAIL_ADDRESS &&SMTP_SERVER
--@@Insert_data --not working

REM And Commit all that

commit;

REM Report Back 
Prompt What OBJECTS were created?
column object_name format a30
column object_type format a30

select   object_type,
         object_name 
from     user_objects 
group by object_type, object_name
order by object_type desc, object_name
/

Prompt ------------------------------------------------------
Prompt 
Prompt Are there any INVALID OBJECTS?

select 	 object_type,
         object_name 
from     user_objects 
where    status='INVALID'
group by object_type, object_name
order by object_type desc, object_name
/


REM Add package for setting up user for UI Training
REM @@UI_Training_User_Setup

Prompt Disconnecting....
disconnect

spool off
