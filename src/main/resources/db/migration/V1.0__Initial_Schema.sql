-- SEQUENCE: public.res_users_id_seq

-- DROP SEQUENCE public.res_users_id_seq;

CREATE SEQUENCE public.res_users_id_seq;

ALTER SEQUENCE public.res_users_id_seq
OWNER TO tom;

-- SEQUENCE: public.hr_employee_id_seq

-- DROP SEQUENCE public.hr_employee_id_seq;

CREATE SEQUENCE public.hr_employee_id_seq;

ALTER SEQUENCE public.hr_employee_id_seq
OWNER TO tom;

-- SEQUENCE: public.hr_department_id_seq

-- DROP SEQUENCE public.hr_department_id_seq;

CREATE SEQUENCE public.hr_department_id_seq;

ALTER SEQUENCE public.hr_department_id_seq
OWNER TO tom;

-- SEQUENCE: public.hr_attendance_id_seq

-- DROP SEQUENCE public.hr_attendance_id_seq;

CREATE SEQUENCE public.hr_attendance_id_seq;

ALTER SEQUENCE public.hr_attendance_id_seq
OWNER TO tom;

-- SEQUENCE: public.hr_timesheet_sheet_sheet_id_seq

-- DROP SEQUENCE public.hr_timesheet_sheet_sheet_id_seq;

CREATE SEQUENCE public.hr_timesheet_sheet_sheet_id_seq;

ALTER SEQUENCE public.hr_timesheet_sheet_sheet_id_seq
OWNER TO tom;

-- Table: public.res_users

-- DROP TABLE public.res_users;

CREATE TABLE public.res_users
(
    id integer NOT NULL DEFAULT nextval('res_users_id_seq'::regclass),
    active boolean DEFAULT true,
    login character varying(64) COLLATE pg_catalog."default" NOT NULL,
    password character varying(64) COLLATE pg_catalog."default" DEFAULT NULL::character varying,
    company_id integer NOT NULL,
    partner_id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    menu_id integer,
    login_date date,
    signature text COLLATE pg_catalog."default",
    action_id integer,
    alias_id integer NOT NULL,
    share boolean,
    pos_config integer,
    ean13 character varying(13) COLLATE pg_catalog."default",
    default_section_id integer,
    gmail_password character varying(64) COLLATE pg_catalog."default",
    gmail_user character varying(64) COLLATE pg_catalog."default",
    CONSTRAINT res_users_pkey PRIMARY KEY (id),
    CONSTRAINT res_users_login_key UNIQUE (login),
    CONSTRAINT res_users_login_uniq UNIQUE (login),
    CONSTRAINT res_users_create_uid_fkey FOREIGN KEY (create_uid)
    REFERENCES public.res_users (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE SET NULL,
    CONSTRAINT res_users_write_uid_fkey FOREIGN KEY (write_uid)
    REFERENCES public.res_users (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE SET NULL
)
WITH (
OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.res_users
OWNER to tom;

COMMENT ON COLUMN public.res_users.menu_id
IS 'Menu Action';

COMMENT ON COLUMN public.res_users.login_date
IS 'Latest connection';

COMMENT ON COLUMN public.res_users.signature
IS 'Signature';

COMMENT ON COLUMN public.res_users.action_id
IS 'Home Action';

COMMENT ON COLUMN public.res_users.alias_id
IS 'Alias';

COMMENT ON COLUMN public.res_users.share
IS 'Share User';

COMMENT ON COLUMN public.res_users.pos_config
IS 'Default Point of Sale';

COMMENT ON COLUMN public.res_users.ean13
IS 'EAN13';

COMMENT ON COLUMN public.res_users.default_section_id
IS 'Default Sales Team';

COMMENT ON COLUMN public.res_users.gmail_password
IS 'Password';

COMMENT ON COLUMN public.res_users.gmail_user
IS 'Username';

-- Index: res_users_login_date_index

-- DROP INDEX public.res_users_login_date_index;

CREATE INDEX res_users_login_date_index
ON public.res_users USING btree
(login_date)
TABLESPACE pg_default;

CREATE TABLE public.hr_employee
(
    id integer NOT NULL DEFAULT nextval('hr_employee_id_seq'::regclass),
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    address_id integer,
    coach_id integer,
    resource_id integer NOT NULL,
    color integer,
    image bytea,
    marital character varying COLLATE pg_catalog."default",
    identification_id character varying(32) COLLATE pg_catalog."default",
    bank_account_id integer,
    job_id integer,
    work_phone character varying(32) COLLATE pg_catalog."default",
    country_id integer,
    parent_id integer,
    notes text COLLATE pg_catalog."default",
    department_id integer,
    otherid character varying(64) COLLATE pg_catalog."default",
    mobile_phone character varying(32) COLLATE pg_catalog."default",
    birthday date,
    sinid character varying(32) COLLATE pg_catalog."default",
    work_email character varying(240) COLLATE pg_catalog."default",
    work_location character varying(32) COLLATE pg_catalog."default",
    image_medium bytea,
    name_related character varying COLLATE pg_catalog."default",
    ssnid character varying(32) COLLATE pg_catalog."default",
    image_small bytea,
    address_home_id integer,
    gender character varying COLLATE pg_catalog."default",
    passport_id character varying(64) COLLATE pg_catalog."default",
    uom_id integer,
    journal_id integer,
    product_id integer,
    public_info text COLLATE pg_catalog."default",
    visibility character varying COLLATE pg_catalog."default",
    CONSTRAINT hr_employee_pkey PRIMARY KEY (id),
    CONSTRAINT hr_employee_create_uid_fkey FOREIGN KEY (create_uid)
        REFERENCES public.res_users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE SET NULL,
    CONSTRAINT hr_employee_parent_id_fkey FOREIGN KEY (parent_id)
        REFERENCES public.hr_employee (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE SET NULL,
    CONSTRAINT hr_employee_write_uid_fkey FOREIGN KEY (write_uid)
        REFERENCES public.res_users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE SET NULL
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.hr_employee
    OWNER to tom;

-- Table: public.hr_department

-- DROP TABLE public.hr_department;

CREATE TABLE public.hr_department
(
  id integer NOT NULL DEFAULT nextval('hr_department_id_seq'::regclass),
  create_uid integer,
  create_date timestamp without time zone,
  write_date timestamp without time zone,
  write_uid integer,
  name character varying(64) COLLATE pg_catalog."default" NOT NULL,
  company_id integer,
  note text COLLATE pg_catalog."default",
  parent_id integer,
  manager_id integer,
  CONSTRAINT hr_department_pkey PRIMARY KEY (id),
  CONSTRAINT hr_department_create_uid_fkey FOREIGN KEY (create_uid)
  REFERENCES public.res_users (id) MATCH SIMPLE
  ON UPDATE NO ACTION
  ON DELETE SET NULL,
  CONSTRAINT hr_department_manager_id_fkey FOREIGN KEY (manager_id)
  REFERENCES public.hr_employee (id) MATCH SIMPLE
  ON UPDATE NO ACTION
  ON DELETE SET NULL,
  CONSTRAINT hr_department_parent_id_fkey FOREIGN KEY (parent_id)
  REFERENCES public.hr_department (id) MATCH SIMPLE
  ON UPDATE NO ACTION
  ON DELETE SET NULL,
  CONSTRAINT hr_department_write_uid_fkey FOREIGN KEY (write_uid)
  REFERENCES public.res_users (id) MATCH SIMPLE
  ON UPDATE NO ACTION
  ON DELETE SET NULL
)
WITH (
OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.hr_department
OWNER to tom;
COMMENT ON TABLE public.hr_department
IS 'Department';

COMMENT ON COLUMN public.hr_department.name
IS 'Department Name';

COMMENT ON COLUMN public.hr_department.company_id
IS 'Company';

COMMENT ON COLUMN public.hr_department.note
IS 'Note';

COMMENT ON COLUMN public.hr_department.parent_id
IS 'Parent Department';

COMMENT ON COLUMN public.hr_department.manager_id
IS 'Manager';

-- Index: hr_department_company_id_index

-- DROP INDEX public.hr_department_company_id_index;

CREATE INDEX hr_department_company_id_index
ON public.hr_department USING btree
(company_id)
TABLESPACE pg_default;

-- Index: hr_department_parent_id_index

-- DROP INDEX public.hr_department_parent_id_index;

CREATE INDEX hr_department_parent_id_index
ON public.hr_department USING btree
(parent_id)
TABLESPACE pg_default;

-- Table: public.hr_attendance

-- DROP TABLE public.hr_attendance;

CREATE TABLE public.hr_attendance
(
    id integer NOT NULL DEFAULT nextval('hr_attendance_id_seq'::regclass),
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    action character varying COLLATE pg_catalog."default" NOT NULL,
    employee_id integer NOT NULL,
    action_desc integer,
    name timestamp without time zone NOT NULL,
    day character varying(32) COLLATE pg_catalog."default",
    sheet_id integer,
    CONSTRAINT hr_attendance_pkey PRIMARY KEY (id),
    CONSTRAINT hr_attendance_create_uid_fkey FOREIGN KEY (create_uid)
    REFERENCES public.res_users (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE SET NULL,
    CONSTRAINT hr_attendance_employee_id_fkey FOREIGN KEY (employee_id)
    REFERENCES public.hr_employee (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE SET NULL,
    CONSTRAINT hr_attendance_write_uid_fkey FOREIGN KEY (write_uid)
    REFERENCES public.res_users (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE SET NULL
)
WITH (
OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.hr_attendance
OWNER to tom;
COMMENT ON TABLE public.hr_attendance
IS 'Attendance';

COMMENT ON COLUMN public.hr_attendance.action
IS 'Action';

COMMENT ON COLUMN public.hr_attendance.employee_id
IS 'Employee';

COMMENT ON COLUMN public.hr_attendance.action_desc
IS 'Action Reason';

COMMENT ON COLUMN public.hr_attendance.name
IS 'Date';

COMMENT ON COLUMN public.hr_attendance.day
IS 'Day';

COMMENT ON COLUMN public.hr_attendance.sheet_id
IS 'Sheet';

-- Index: hr_attendance_day_index

-- DROP INDEX public.hr_attendance_day_index;

CREATE INDEX hr_attendance_day_index
ON public.hr_attendance USING btree
(day COLLATE pg_catalog."default")
TABLESPACE pg_default;

-- Index: hr_attendance_employee_id_index

-- DROP INDEX public.hr_attendance_employee_id_index;

CREATE INDEX hr_attendance_employee_id_index
ON public.hr_attendance USING btree
(employee_id)
TABLESPACE pg_default;

-- Index: hr_attendance_name_index

-- DROP INDEX public.hr_attendance_name_index;

CREATE INDEX hr_attendance_name_index
ON public.hr_attendance USING btree
(name)
TABLESPACE pg_default;

-- Table: public.hr_timesheet_sheet_sheet

-- DROP TABLE public.hr_timesheet_sheet_sheet;

CREATE TABLE public.hr_timesheet_sheet_sheet
(
    id integer NOT NULL DEFAULT nextval('hr_timesheet_sheet_sheet_id_seq'::regclass),
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    date_to date NOT NULL,
    employee_id integer NOT NULL,
    user_id integer,
    name character varying(64) COLLATE pg_catalog."default",
    date_from date NOT NULL,
    company_id integer,
    state character varying COLLATE pg_catalog."default" NOT NULL,
    department_id integer,
    CONSTRAINT hr_timesheet_sheet_sheet_pkey PRIMARY KEY (id),
    CONSTRAINT hr_timesheet_sheet_sheet_create_uid_fkey FOREIGN KEY (create_uid)
    REFERENCES public.res_users (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE SET NULL,
    CONSTRAINT hr_timesheet_sheet_sheet_department_id_fkey FOREIGN KEY (department_id)
    REFERENCES public.hr_department (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE SET NULL,
    CONSTRAINT hr_timesheet_sheet_sheet_employee_id_fkey FOREIGN KEY (employee_id)
    REFERENCES public.hr_employee (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE SET NULL,
    CONSTRAINT hr_timesheet_sheet_sheet_write_uid_fkey FOREIGN KEY (write_uid)
    REFERENCES public.res_users (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE SET NULL
)
WITH (
OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.hr_timesheet_sheet_sheet
OWNER to tom;
COMMENT ON TABLE public.hr_timesheet_sheet_sheet
IS 'Timesheet';

COMMENT ON COLUMN public.hr_timesheet_sheet_sheet.date_to
IS 'Date to';

COMMENT ON COLUMN public.hr_timesheet_sheet_sheet.employee_id
IS 'Employee';

COMMENT ON COLUMN public.hr_timesheet_sheet_sheet.user_id
IS 'User';

COMMENT ON COLUMN public.hr_timesheet_sheet_sheet.name
IS 'Note';

COMMENT ON COLUMN public.hr_timesheet_sheet_sheet.date_from
IS 'Date from';

COMMENT ON COLUMN public.hr_timesheet_sheet_sheet.company_id
IS 'Company';

COMMENT ON COLUMN public.hr_timesheet_sheet_sheet.state
IS 'Status';

COMMENT ON COLUMN public.hr_timesheet_sheet_sheet.department_id
IS 'Department';

-- Index: hr_timesheet_sheet_sheet_date_from_index

-- DROP INDEX public.hr_timesheet_sheet_sheet_date_from_index;

CREATE INDEX hr_timesheet_sheet_sheet_date_from_index
ON public.hr_timesheet_sheet_sheet USING btree
(date_from)
TABLESPACE pg_default;

-- Index: hr_timesheet_sheet_sheet_date_to_index

-- DROP INDEX public.hr_timesheet_sheet_sheet_date_to_index;

CREATE INDEX hr_timesheet_sheet_sheet_date_to_index
ON public.hr_timesheet_sheet_sheet USING btree
(date_to)
TABLESPACE pg_default;

-- Index: hr_timesheet_sheet_sheet_name_index

-- DROP INDEX public.hr_timesheet_sheet_sheet_name_index;

CREATE INDEX hr_timesheet_sheet_sheet_name_index
ON public.hr_timesheet_sheet_sheet USING btree
(name COLLATE pg_catalog."default")
TABLESPACE pg_default;

-- Index: hr_timesheet_sheet_sheet_state_index

-- DROP INDEX public.hr_timesheet_sheet_sheet_state_index;

CREATE INDEX hr_timesheet_sheet_sheet_state_index
ON public.hr_timesheet_sheet_sheet USING btree
(state COLLATE pg_catalog."default")
TABLESPACE pg_default;