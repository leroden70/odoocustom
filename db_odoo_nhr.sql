--
-- PostgreSQL database dump
--

\restrict xPQNj0bb1JcPCkSnZTGOmTJ0gE89fk9hwEg8Irie32yQX4GicnLRsYyfrAsCs5o

-- Dumped from database version 18.6 (Ubuntu 18.6-0ubuntu0.26.04.1)
-- Dumped by pg_dump version 18.6 (Ubuntu 18.6-0ubuntu0.26.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: nhr_absence_types; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.nhr_absence_types (
    id integer NOT NULL,
    create_uid integer,
    write_uid integer,
    absence_type character varying NOT NULL,
    absence_description character varying,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    active boolean
);


ALTER TABLE public.nhr_absence_types OWNER TO odoo;

--
-- Name: TABLE nhr_absence_types; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.nhr_absence_types IS 'Absence Types';


--
-- Name: COLUMN nhr_absence_types.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absence_types.create_uid IS 'Created by';


--
-- Name: COLUMN nhr_absence_types.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absence_types.write_uid IS 'Last Updated by';


--
-- Name: COLUMN nhr_absence_types.absence_type; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absence_types.absence_type IS 'Absence Type';


--
-- Name: COLUMN nhr_absence_types.absence_description; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absence_types.absence_description IS 'Description';


--
-- Name: COLUMN nhr_absence_types.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absence_types.create_date IS 'Created on';


--
-- Name: COLUMN nhr_absence_types.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absence_types.write_date IS 'Last Updated on';


--
-- Name: COLUMN nhr_absence_types.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absence_types.active IS 'Active';


--
-- Name: nhr_absence_types_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.nhr_absence_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nhr_absence_types_id_seq OWNER TO odoo;

--
-- Name: nhr_absence_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.nhr_absence_types_id_seq OWNED BY public.nhr_absence_types.id;


--
-- Name: nhr_absences; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.nhr_absences (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    absence_type integer NOT NULL,
    create_uid integer,
    write_uid integer,
    description character varying,
    start_date date NOT NULL,
    estimated_end_date date NOT NULL,
    end_date date,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    active boolean
);


ALTER TABLE public.nhr_absences OWNER TO odoo;

--
-- Name: TABLE nhr_absences; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.nhr_absences IS 'Entitlement to Holidays';


--
-- Name: COLUMN nhr_absences.employee_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absences.employee_id IS 'Employee';


--
-- Name: COLUMN nhr_absences.absence_type; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absences.absence_type IS 'Absence Type';


--
-- Name: COLUMN nhr_absences.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absences.create_uid IS 'Created by';


--
-- Name: COLUMN nhr_absences.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absences.write_uid IS 'Last Updated by';


--
-- Name: COLUMN nhr_absences.description; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absences.description IS 'Description';


--
-- Name: COLUMN nhr_absences.start_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absences.start_date IS 'Start Date';


--
-- Name: COLUMN nhr_absences.estimated_end_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absences.estimated_end_date IS 'End Date';


--
-- Name: COLUMN nhr_absences.end_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absences.end_date IS 'End Date';


--
-- Name: COLUMN nhr_absences.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absences.create_date IS 'Created on';


--
-- Name: COLUMN nhr_absences.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absences.write_date IS 'Last Updated on';


--
-- Name: COLUMN nhr_absences.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_absences.active IS 'Active';


--
-- Name: nhr_absences_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.nhr_absences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nhr_absences_id_seq OWNER TO odoo;

--
-- Name: nhr_absences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.nhr_absences_id_seq OWNED BY public.nhr_absences.id;


--
-- Name: nhr_departments; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.nhr_departments (
    id integer NOT NULL,
    manager_id integer,
    create_uid integer,
    write_uid integer,
    department_name jsonb NOT NULL,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    location_id integer,
    active boolean
);


ALTER TABLE public.nhr_departments OWNER TO odoo;

--
-- Name: TABLE nhr_departments; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.nhr_departments IS 'Departments';


--
-- Name: COLUMN nhr_departments.manager_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_departments.manager_id IS 'Manager';


--
-- Name: COLUMN nhr_departments.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_departments.create_uid IS 'Created by';


--
-- Name: COLUMN nhr_departments.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_departments.write_uid IS 'Last Updated by';


--
-- Name: COLUMN nhr_departments.department_name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_departments.department_name IS 'Department Name';


--
-- Name: COLUMN nhr_departments.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_departments.create_date IS 'Created on';


--
-- Name: COLUMN nhr_departments.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_departments.write_date IS 'Last Updated on';


--
-- Name: COLUMN nhr_departments.location_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_departments.location_id IS 'Location';


--
-- Name: COLUMN nhr_departments.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_departments.active IS 'Active';


--
-- Name: nhr_departments_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.nhr_departments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nhr_departments_id_seq OWNER TO odoo;

--
-- Name: nhr_departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.nhr_departments_id_seq OWNED BY public.nhr_departments.id;


--
-- Name: nhr_employees; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.nhr_employees (
    id integer NOT NULL,
    create_uid integer,
    write_uid integer,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    job_id integer NOT NULL,
    manager_id integer,
    department_id integer,
    email character varying NOT NULL,
    phone_number character varying NOT NULL,
    photo character varying,
    hire_date date NOT NULL,
    salary double precision NOT NULL,
    commission_pct double precision,
    active boolean
);


ALTER TABLE public.nhr_employees OWNER TO odoo;

--
-- Name: TABLE nhr_employees; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.nhr_employees IS 'Employees';


--
-- Name: COLUMN nhr_employees.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_employees.create_uid IS 'Created by';


--
-- Name: COLUMN nhr_employees.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_employees.write_uid IS 'Last Updated by';


--
-- Name: COLUMN nhr_employees.first_name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_employees.first_name IS 'First Name';


--
-- Name: COLUMN nhr_employees.last_name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_employees.last_name IS 'Last Name';


--
-- Name: COLUMN nhr_employees.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_employees.create_date IS 'Created on';


--
-- Name: COLUMN nhr_employees.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_employees.write_date IS 'Last Updated on';


--
-- Name: COLUMN nhr_employees.job_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_employees.job_id IS 'Job';


--
-- Name: COLUMN nhr_employees.manager_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_employees.manager_id IS 'Manager';


--
-- Name: COLUMN nhr_employees.department_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_employees.department_id IS 'Department';


--
-- Name: COLUMN nhr_employees.email; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_employees.email IS 'e-mail';


--
-- Name: COLUMN nhr_employees.phone_number; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_employees.phone_number IS 'Phone Number';


--
-- Name: COLUMN nhr_employees.photo; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_employees.photo IS 'Photo';


--
-- Name: COLUMN nhr_employees.hire_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_employees.hire_date IS 'Hire Date';


--
-- Name: COLUMN nhr_employees.salary; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_employees.salary IS 'Salary';


--
-- Name: COLUMN nhr_employees.commission_pct; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_employees.commission_pct IS 'Commission Percentage';


--
-- Name: COLUMN nhr_employees.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_employees.active IS 'Active';


--
-- Name: nhr_employees_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.nhr_employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nhr_employees_id_seq OWNER TO odoo;

--
-- Name: nhr_employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.nhr_employees_id_seq OWNED BY public.nhr_employees.id;


--
-- Name: nhr_ent_holidays; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.nhr_ent_holidays (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    absence_type integer NOT NULL,
    entitlement integer NOT NULL,
    balance integer NOT NULL,
    create_uid integer,
    write_uid integer,
    start_date date NOT NULL,
    end_date date NOT NULL,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    active boolean
);


ALTER TABLE public.nhr_ent_holidays OWNER TO odoo;

--
-- Name: TABLE nhr_ent_holidays; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.nhr_ent_holidays IS 'Entitlement to Holidays';


--
-- Name: COLUMN nhr_ent_holidays.employee_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_ent_holidays.employee_id IS 'Employee';


--
-- Name: COLUMN nhr_ent_holidays.absence_type; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_ent_holidays.absence_type IS 'Absence Type';


--
-- Name: COLUMN nhr_ent_holidays.entitlement; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_ent_holidays.entitlement IS 'Entitlement';


--
-- Name: COLUMN nhr_ent_holidays.balance; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_ent_holidays.balance IS 'Balance';


--
-- Name: COLUMN nhr_ent_holidays.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_ent_holidays.create_uid IS 'Created by';


--
-- Name: COLUMN nhr_ent_holidays.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_ent_holidays.write_uid IS 'Last Updated by';


--
-- Name: COLUMN nhr_ent_holidays.start_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_ent_holidays.start_date IS 'Start Date';


--
-- Name: COLUMN nhr_ent_holidays.end_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_ent_holidays.end_date IS 'End Date';


--
-- Name: COLUMN nhr_ent_holidays.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_ent_holidays.create_date IS 'Created on';


--
-- Name: COLUMN nhr_ent_holidays.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_ent_holidays.write_date IS 'Last Updated on';


--
-- Name: COLUMN nhr_ent_holidays.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_ent_holidays.active IS 'Active';


--
-- Name: nhr_ent_holidays_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.nhr_ent_holidays_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nhr_ent_holidays_id_seq OWNER TO odoo;

--
-- Name: nhr_ent_holidays_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.nhr_ent_holidays_id_seq OWNED BY public.nhr_ent_holidays.id;


--
-- Name: nhr_job_history; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.nhr_job_history (
    id integer NOT NULL,
    employee_id integer,
    job_id integer,
    department_id integer,
    create_uid integer,
    write_uid integer,
    start_date date,
    end_date date,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    active boolean
);


ALTER TABLE public.nhr_job_history OWNER TO odoo;

--
-- Name: TABLE nhr_job_history; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.nhr_job_history IS 'Job History';


--
-- Name: COLUMN nhr_job_history.employee_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_job_history.employee_id IS 'Employee';


--
-- Name: COLUMN nhr_job_history.job_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_job_history.job_id IS 'Job';


--
-- Name: COLUMN nhr_job_history.department_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_job_history.department_id IS 'Department';


--
-- Name: COLUMN nhr_job_history.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_job_history.create_uid IS 'Created by';


--
-- Name: COLUMN nhr_job_history.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_job_history.write_uid IS 'Last Updated by';


--
-- Name: COLUMN nhr_job_history.start_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_job_history.start_date IS 'Start Date';


--
-- Name: COLUMN nhr_job_history.end_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_job_history.end_date IS 'End Date';


--
-- Name: COLUMN nhr_job_history.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_job_history.create_date IS 'Created on';


--
-- Name: COLUMN nhr_job_history.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_job_history.write_date IS 'Last Updated on';


--
-- Name: COLUMN nhr_job_history.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_job_history.active IS 'Active';


--
-- Name: nhr_job_history_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.nhr_job_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nhr_job_history_id_seq OWNER TO odoo;

--
-- Name: nhr_job_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.nhr_job_history_id_seq OWNED BY public.nhr_job_history.id;


--
-- Name: nhr_jobs; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.nhr_jobs (
    id integer NOT NULL,
    create_uid integer,
    write_uid integer,
    job_title jsonb NOT NULL,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    min_salary double precision NOT NULL,
    max_salary double precision NOT NULL,
    active boolean
);


ALTER TABLE public.nhr_jobs OWNER TO odoo;

--
-- Name: TABLE nhr_jobs; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.nhr_jobs IS 'Jobs';


--
-- Name: COLUMN nhr_jobs.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_jobs.create_uid IS 'Created by';


--
-- Name: COLUMN nhr_jobs.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_jobs.write_uid IS 'Last Updated by';


--
-- Name: COLUMN nhr_jobs.job_title; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_jobs.job_title IS 'Job Title';


--
-- Name: COLUMN nhr_jobs.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_jobs.create_date IS 'Created on';


--
-- Name: COLUMN nhr_jobs.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_jobs.write_date IS 'Last Updated on';


--
-- Name: COLUMN nhr_jobs.min_salary; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_jobs.min_salary IS 'Minimum Salary';


--
-- Name: COLUMN nhr_jobs.max_salary; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_jobs.max_salary IS 'Maximum Salary';


--
-- Name: COLUMN nhr_jobs.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_jobs.active IS 'Active';


--
-- Name: nhr_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.nhr_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nhr_jobs_id_seq OWNER TO odoo;

--
-- Name: nhr_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.nhr_jobs_id_seq OWNED BY public.nhr_jobs.id;


--
-- Name: nhr_locations; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.nhr_locations (
    id integer NOT NULL,
    country_id integer,
    create_uid integer,
    write_uid integer,
    street_address character varying NOT NULL,
    postal_code character varying NOT NULL,
    city character varying NOT NULL,
    state_province character varying,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    active boolean
);


ALTER TABLE public.nhr_locations OWNER TO odoo;

--
-- Name: TABLE nhr_locations; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.nhr_locations IS 'Locations';


--
-- Name: COLUMN nhr_locations.country_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_locations.country_id IS 'Country';


--
-- Name: COLUMN nhr_locations.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_locations.create_uid IS 'Created by';


--
-- Name: COLUMN nhr_locations.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_locations.write_uid IS 'Last Updated by';


--
-- Name: COLUMN nhr_locations.street_address; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_locations.street_address IS 'Street Address';


--
-- Name: COLUMN nhr_locations.postal_code; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_locations.postal_code IS 'Postal Code';


--
-- Name: COLUMN nhr_locations.city; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_locations.city IS 'City';


--
-- Name: COLUMN nhr_locations.state_province; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_locations.state_province IS 'State Province';


--
-- Name: COLUMN nhr_locations.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_locations.create_date IS 'Created on';


--
-- Name: COLUMN nhr_locations.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_locations.write_date IS 'Last Updated on';


--
-- Name: COLUMN nhr_locations.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_locations.active IS 'Active';


--
-- Name: nhr_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.nhr_locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nhr_locations_id_seq OWNER TO odoo;

--
-- Name: nhr_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.nhr_locations_id_seq OWNED BY public.nhr_locations.id;


--
-- Name: nhr_public_holidays; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.nhr_public_holidays (
    id integer NOT NULL,
    country_id integer,
    create_uid integer,
    write_uid integer,
    holiday_description character varying,
    holiday_date date NOT NULL,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    active boolean
);


ALTER TABLE public.nhr_public_holidays OWNER TO odoo;

--
-- Name: TABLE nhr_public_holidays; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.nhr_public_holidays IS 'Public Holidayss';


--
-- Name: COLUMN nhr_public_holidays.country_id; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_public_holidays.country_id IS 'Country';


--
-- Name: COLUMN nhr_public_holidays.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_public_holidays.create_uid IS 'Created by';


--
-- Name: COLUMN nhr_public_holidays.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_public_holidays.write_uid IS 'Last Updated by';


--
-- Name: COLUMN nhr_public_holidays.holiday_description; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_public_holidays.holiday_description IS 'Description';


--
-- Name: COLUMN nhr_public_holidays.holiday_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_public_holidays.holiday_date IS 'Holiday Date';


--
-- Name: COLUMN nhr_public_holidays.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_public_holidays.create_date IS 'Created on';


--
-- Name: COLUMN nhr_public_holidays.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_public_holidays.write_date IS 'Last Updated on';


--
-- Name: COLUMN nhr_public_holidays.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_public_holidays.active IS 'Active';


--
-- Name: nhr_public_holidays_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.nhr_public_holidays_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nhr_public_holidays_id_seq OWNER TO odoo;

--
-- Name: nhr_public_holidays_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.nhr_public_holidays_id_seq OWNED BY public.nhr_public_holidays.id;


--
-- Name: nhr_regions; Type: TABLE; Schema: public; Owner: odoo
--

CREATE TABLE public.nhr_regions (
    id integer NOT NULL,
    create_uid integer,
    write_uid integer,
    name character varying NOT NULL,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    active boolean
);


ALTER TABLE public.nhr_regions OWNER TO odoo;

--
-- Name: TABLE nhr_regions; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON TABLE public.nhr_regions IS 'Regions';


--
-- Name: COLUMN nhr_regions.create_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_regions.create_uid IS 'Created by';


--
-- Name: COLUMN nhr_regions.write_uid; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_regions.write_uid IS 'Last Updated by';


--
-- Name: COLUMN nhr_regions.name; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_regions.name IS 'Region Name';


--
-- Name: COLUMN nhr_regions.create_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_regions.create_date IS 'Created on';


--
-- Name: COLUMN nhr_regions.write_date; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_regions.write_date IS 'Last Updated on';


--
-- Name: COLUMN nhr_regions.active; Type: COMMENT; Schema: public; Owner: odoo
--

COMMENT ON COLUMN public.nhr_regions.active IS 'Active';


--
-- Name: nhr_regions_id_seq; Type: SEQUENCE; Schema: public; Owner: odoo
--

CREATE SEQUENCE public.nhr_regions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nhr_regions_id_seq OWNER TO odoo;

--
-- Name: nhr_regions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoo
--

ALTER SEQUENCE public.nhr_regions_id_seq OWNED BY public.nhr_regions.id;


--
-- Name: nhr_absence_types id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_absence_types ALTER COLUMN id SET DEFAULT nextval('public.nhr_absence_types_id_seq'::regclass);


--
-- Name: nhr_absences id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_absences ALTER COLUMN id SET DEFAULT nextval('public.nhr_absences_id_seq'::regclass);


--
-- Name: nhr_departments id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_departments ALTER COLUMN id SET DEFAULT nextval('public.nhr_departments_id_seq'::regclass);


--
-- Name: nhr_employees id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_employees ALTER COLUMN id SET DEFAULT nextval('public.nhr_employees_id_seq'::regclass);


--
-- Name: nhr_ent_holidays id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_ent_holidays ALTER COLUMN id SET DEFAULT nextval('public.nhr_ent_holidays_id_seq'::regclass);


--
-- Name: nhr_job_history id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_job_history ALTER COLUMN id SET DEFAULT nextval('public.nhr_job_history_id_seq'::regclass);


--
-- Name: nhr_jobs id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_jobs ALTER COLUMN id SET DEFAULT nextval('public.nhr_jobs_id_seq'::regclass);


--
-- Name: nhr_locations id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_locations ALTER COLUMN id SET DEFAULT nextval('public.nhr_locations_id_seq'::regclass);


--
-- Name: nhr_public_holidays id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_public_holidays ALTER COLUMN id SET DEFAULT nextval('public.nhr_public_holidays_id_seq'::regclass);


--
-- Name: nhr_regions id; Type: DEFAULT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_regions ALTER COLUMN id SET DEFAULT nextval('public.nhr_regions_id_seq'::regclass);


--
-- Data for Name: nhr_absence_types; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.nhr_absence_types (id, create_uid, write_uid, absence_type, absence_description, create_date, write_date, active) FROM stdin;
8	2	2	Family Emergency	Family Emergency	2026-07-16 06:42:34.29663	2026-07-16 06:42:34.29663	t
11	2	2	Overtime Recuperation	Overtime Recuperation	2026-07-16 06:45:54.267677	2026-07-16 06:45:54.267677	t
1	2	2	Annual Leave	Standard accrued paid time off for rest and recreation.	2026-07-16 06:42:34.29663	2026-07-16 06:46:15.640852	t
5	2	2	Public Holiday	Country-specific official days off (e.g., Christmas, Labor Day).	2026-07-16 06:42:34.29663	2026-07-16 06:46:44.333454	t
12	2	2	Seniority Leave	Seniority Leave	2026-07-16 06:47:53.582264	2026-07-16 06:47:53.582264	t
2	2	2	Parental Leave	Time off for the birth, adoption, or fostering of a child (can be paid or unpaid depending on jurisdiction).	2026-07-16 06:42:34.29663	2026-07-16 06:48:17.340207	t
3	2	2	Personal Leave	Flexible paid days off that employees can use at their discretion.	2026-07-16 06:42:34.29663	2026-07-16 06:48:40.283703	t
4	2	2	Sabbatical	An extended career break (often paid or partially paid) for research, travel, or skill acquisition.	2026-07-16 06:42:34.29663	2026-07-16 06:49:07.126245	t
13	2	2	Study Leave	Time off to prepare for or sit professional examinations.	2026-07-16 06:49:17.854224	2026-07-16 06:49:26.447929	t
10	2	2	Unexcused Absence	An unauthorised, unexcused absence from work (a disciplinary infraction).	2026-07-16 06:42:34.29663	2026-07-16 06:50:00.324564	t
14	2	2	Leave Without Pay	Authorised absence where the employee does not receive a salary but retains their job.	2026-07-16 06:50:17.036813	2026-07-16 06:50:25.611924	t
9	2	2	Civic Duty	Mandatory absence when summoned to serve on a legal jury.	2026-07-16 06:42:34.29663	2026-07-16 06:50:54.148438	t
15	2	2	Military Leave	Time off for active duty, deployment, or mandatory military reserve training.	2026-07-16 06:51:32.74027	2026-07-16 06:51:32.74027	t
16	2	2	Voting Leave	Short, legally mandated absence to cast a ballot on election days.	2026-07-16 06:51:53.46955	2026-07-16 06:51:53.46955	t
7	2	2	Bereavement	Paid or unpaid time off following the death of a family member.	2026-07-16 06:42:34.29663	2026-07-16 06:52:18.252069	t
6	2	2	Medical Leave	Extended time off for significant health treatments or surgeries.	2026-07-16 06:42:34.29663	2026-07-16 06:52:58.140503	t
17	2	2	Long-Term Disability Leave	Multi-month or multi-year absence for chronic or severe health conditions.	2026-07-16 06:53:16.356001	2026-07-16 06:53:16.356001	t
\.


--
-- Data for Name: nhr_absences; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.nhr_absences (id, employee_id, absence_type, create_uid, write_uid, description, start_date, estimated_end_date, end_date, create_date, write_date, active) FROM stdin;
\.


--
-- Data for Name: nhr_departments; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.nhr_departments (id, manager_id, create_uid, write_uid, department_name, create_date, write_date, location_id, active) FROM stdin;
5	137	2	2	{"en_US": "Shipping"}	2026-07-13 11:50:51.131608	2026-07-16 13:57:31.765377	7	t
12	\N	2	2	{"en_US": "Treasury"}	2026-07-13 11:53:13.953726	2026-07-13 11:53:13.953726	9	t
13	\N	2	2	{"en_US": "Corporate Tax"}	2026-07-13 11:53:23.458597	2026-07-13 11:53:23.458597	9	t
14	\N	2	2	{"en_US": "Control And Credit"}	2026-07-13 11:53:34.081333	2026-07-13 11:53:34.081333	9	t
15	\N	2	2	{"en_US": "Shareholder Services"}	2026-07-13 11:53:41.609374	2026-07-13 11:53:41.609374	9	t
16	\N	2	2	{"en_US": "Benefits"}	2026-07-13 11:53:51.841467	2026-07-13 11:53:51.841467	9	t
17	\N	2	2	{"en_US": "Manufacturing"}	2026-07-13 11:54:00.158999	2026-07-13 11:54:00.158999	9	t
18	\N	2	2	{"en_US": "Construction"}	2026-07-13 11:54:08.297413	2026-07-13 11:54:08.297413	9	t
19	\N	2	2	{"en_US": "Contracting"}	2026-07-13 11:54:17.154208	2026-07-13 11:54:17.154208	9	t
20	\N	2	2	{"en_US": "Operations"}	2026-07-13 11:54:24.848665	2026-07-13 11:54:24.848665	9	t
21	\N	2	2	{"en_US": "IT Support"}	2026-07-13 11:54:33.393058	2026-07-13 11:54:33.393058	9	t
22	\N	2	2	{"en_US": "NOC"}	2026-07-13 11:54:43.242546	2026-07-13 11:54:43.242546	9	t
23	\N	2	2	{"en_US": "IT Helpdesk"}	2026-07-13 11:54:52.709628	2026-07-13 11:54:52.709628	9	t
24	\N	2	2	{"en_US": "Government Sales"}	2026-07-13 11:55:01.341333	2026-07-13 11:55:01.341333	9	t
25	\N	2	2	{"en_US": "Retail Sales"}	2026-07-13 11:55:08.666291	2026-07-13 11:55:08.666291	9	t
26	\N	2	2	{"en_US": "Recruiting"}	2026-07-13 11:55:16.544634	2026-07-13 11:55:16.544634	9	t
27	\N	2	2	{"en_US": "Payroll"}	2026-07-13 11:55:28.846059	2026-07-13 11:55:28.846059	9	t
11	151	2	2	{"en_US": "Accounting"}	2026-07-13 11:53:03.505874	2026-07-16 13:52:16.080824	9	t
1	148	2	2	{"en_US": "Administration"}	2026-07-13 10:10:48.394565	2026-07-16 13:53:36.00704	9	t
9	132	2	2	{"en_US": "Executive"}	2026-07-13 11:52:37.128626	2026-07-16 13:53:51.554141	9	t
10	147	2	2	{"en_US": "Finance"}	2026-07-13 11:52:54.23731	2026-07-16 13:54:12.809294	9	t
4	149	2	2	{"en_US": "Human Resources"}	2026-07-13 11:50:18.133201	2026-07-16 13:54:48.59503	16	t
6	152	2	2	{"en_US": "IT"}	2026-07-13 11:51:20.128049	2026-07-16 13:55:30.458333	6	t
2	146	2	2	{"en_US": "Marketing"}	2026-07-13 11:48:59.131077	2026-07-16 13:55:57.911935	10	t
7	150	2	2	{"en_US": "Public Relations"}	2026-07-13 11:51:49.128137	2026-07-16 13:56:27.018207	19	t
3	135	2	2	{"en_US": "Purchasing"}	2026-07-13 11:49:57.840921	2026-07-16 13:56:47.715684	9	t
8	141	2	2	{"en_US": "Sales"}	2026-07-13 11:52:18.12921	2026-07-16 13:57:07.447444	17	t
\.


--
-- Data for Name: nhr_employees; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.nhr_employees (id, create_uid, write_uid, first_name, last_name, create_date, write_date, job_id, manager_id, department_id, email, phone_number, photo, hire_date, salary, commission_pct, active) FROM stdin;
132	\N	2	Steven	King	\N	2026-07-16 13:37:43.440458	1	\N	9	SKING	515.123.4567	\N	1987-06-17	24000	\N	t
134	\N	2	Lex	De Haan	\N	2026-08-31 06:56:56.247853	2	132	9	LDEHAAN	515.123.4569	\N	1993-01-13	17000	\N	t
133	\N	2	Neena	Kochhar	\N	2026-07-16 07:13:39.671813	2	132	9	NKOCHHAR	515.123.4568	\N	1989-09-21	17000	\N	t
135	\N	2	Den	Raphaely	\N	2026-07-16 07:22:04.425982	10	132	3	DRAPHEAL	515.127.4561	\N	1994-12-07	11000	\N	t
136	\N	2	Matthew	Weiss	\N	2026-07-16 11:59:33.373629	12	132	5	MWEISS	650.123.1234	\N	1996-07-18	8000	\N	t
137	\N	2	Adam	Fripp	\N	2026-07-16 11:59:52.028458	12	132	5	AFRIPP	650.123.2234	\N	1997-04-10	8200	\N	t
138	\N	2	Payam	Kaufling	\N	2026-07-16 12:00:13.30363	12	132	5	PKAUFLIN	650.123.3234	\N	1995-05-01	7900	\N	t
139	\N	2	Shanta	Vollman	\N	2026-07-16 12:00:50.297391	12	132	5	SVOLLMAN	650.123.4234	\N	1997-10-10	6500	\N	t
140	\N	2	Kevin	Mourgos	\N	2026-07-16 12:15:41.301751	12	132	5	KMOURGOS	650.123.5234	\N	1999-11-16	5800	\N	t
147	\N	2	Nancy	Greenberg	\N	2026-09-01 14:52:43.636209	16	133	10	NGREENBE	515.124.4569	\N	1994-08-17	12000	\N	t
141	\N	\N	John	Russell	\N	\N	8	132	8	JRUSSEL	011.44.1344.429268	\N	1996-10-01	14000	\N	t
142	\N	\N	Karen	Partners	\N	\N	8	132	8	KPARTNER	011.44.1344.467268	\N	1997-01-05	13500	\N	t
143	\N	\N	Alberto	Errazuriz	\N	\N	8	132	8	AERRAZUR	011.44.1344.429278	\N	1997-03-10	12000	\N	t
144	\N	\N	Gerald	Cambrault	\N	\N	8	132	8	GCAMBRAU	011.44.1344.619268	\N	1999-10-15	11000	\N	t
145	\N	\N	Eleni	Zlotkey	\N	\N	8	132	8	EZLOTKEY	011.44.1344.429018	\N	2000-01-29	10500	\N	t
146	\N	\N	Michael	Hartstein	\N	\N	16	132	2	MHARTSTE	515.123.5555	\N	1996-02-17	13000	\N	t
148	\N	\N	Jennifer	Whalen	\N	\N	3	133	1	JWHALEN	515.123.4444	\N	1987-09-17	4400	\N	t
149	\N	\N	Susan	Mavris	\N	\N	18	133	4	SMAVRIS	515.123.7777	\N	1994-06-07	6500	\N	t
150	\N	\N	Hermann	Baer	\N	\N	19	133	7	HBAER	515.123.8888	\N	1994-06-07	10000	\N	t
151	\N	\N	Shelley	Higgins	\N	\N	6	133	11	SHIGGINS	515.123.8080	\N	1994-06-07	12000	\N	t
153	\N	\N	Alexander	Khoo	\N	\N	11	135	3	AKHOO	515.127.4562	\N	1995-05-18	3100	\N	t
152	\N	\N	Alexander	Hunold	\N	\N	15	134	6	AHUNOLD	590.423.4567	\N	1990-01-03	9000	\N	t
154	\N	\N	Shelli	Baida	\N	\N	11	135	3	SBAIDA	515.127.4563	\N	1997-12-24	2900	\N	t
155	\N	\N	Sigal	Tobias	\N	\N	11	135	3	STOBIAS	515.127.4564	\N	1997-07-24	2800	\N	t
156	\N	\N	Guy	Himuro	\N	\N	11	135	3	GHIMURO	515.127.4565	\N	1998-11-15	2600	\N	t
157	\N	\N	Karen	Colmenares	\N	\N	11	135	3	KCOLMENA	515.127.4566	\N	1999-08-10	2500	\N	t
158	\N	\N	Julia	Nayer	\N	\N	13	136	5	JNAYER	650.124.1214	\N	1997-07-16	3200	\N	t
159	\N	\N	Irene	Mikkilineni	\N	\N	13	136	5	IMIKKILI	650.124.1224	\N	1998-09-28	2700	\N	t
160	\N	\N	James	Landry	\N	\N	13	136	5	JLANDRY	650.124.1334	\N	1999-01-14	2400	\N	t
161	\N	\N	Steven	Markle	\N	\N	13	136	5	S03KLE	650.124.1434	\N	2000-03-08	2200	\N	t
162	\N	\N	Winston	Taylor	\N	\N	14	136	5	WTAYLOR	650.507.9876	\N	1998-01-24	3200	\N	t
163	\N	\N	Jean	Fleaur	\N	\N	14	136	5	JFLEAUR	650.507.9877	\N	1998-02-23	3100	\N	t
164	\N	\N	Martha	Sullivan	\N	\N	14	136	5	MSULLIVA	650.507.9878	\N	1999-06-21	2500	\N	t
165	\N	\N	Girard	Geoni	\N	\N	14	136	5	GGEONI	650.507.9879	\N	2000-02-03	2800	\N	t
166	\N	\N	Laura	Bissot	\N	\N	13	137	5	LBISSOT	650.124.5234	\N	1997-08-20	3300	\N	t
167	\N	\N	Mozhe	Atkinson	\N	\N	13	137	5	MATKINSO	650.124.6234	\N	1997-10-30	2800	\N	t
168	\N	\N	James	Marlow	\N	\N	13	137	5	JAMRLOW	650.124.7234	\N	1997-02-16	2500	\N	t
169	\N	\N	TJ	Olson	\N	\N	13	137	5	TJOLSON	650.124.8234	\N	1999-04-10	2100	\N	t
170	\N	\N	Nandita	Sarchand	\N	\N	14	137	5	NSARCHAN	650.509.1876	\N	1996-01-27	4200	\N	t
171	\N	\N	Alexis	Bull	\N	\N	14	137	5	ABULL	650.509.2876	\N	1997-02-20	4100	\N	t
172	\N	\N	Julia	Dellinger	\N	\N	14	137	5	JDELLING	650.509.3876	\N	1998-06-24	3400	\N	t
173	\N	\N	Anthony	Cabrio	\N	\N	14	137	5	ACABRIO	650.509.4876	\N	1999-02-07	3000	\N	t
174	\N	\N	Jason	Mallin	\N	\N	13	138	5	JMALLIN	650.127.1934	\N	1996-06-14	3300	\N	t
175	\N	\N	Michael	Rogers	\N	\N	13	138	5	MROGERS	650.127.1834	\N	1998-08-26	2900	\N	t
176	\N	\N	Ki	Gee	\N	\N	13	138	5	KGEE	650.127.1734	\N	1999-12-12	2400	\N	t
177	\N	\N	Hazel	Philtanker	\N	\N	13	138	5	HPHILTAN	650.127.1634	\N	2000-02-06	2200	\N	t
178	\N	\N	Kelly	Chung	\N	\N	14	138	5	KCHUNG	650.505.1876	\N	1997-06-14	3800	\N	t
179	\N	\N	Jennifer	Dilly	\N	\N	14	138	5	JDILLY	650.505.2876	\N	1997-08-13	3600	\N	t
180	\N	\N	Timothy	Gates	\N	\N	14	138	5	TGATES	650.505.3876	\N	1998-07-11	2900	\N	t
181	\N	\N	Randall	Perkins	\N	\N	14	138	5	RPERKINS	650.505.4876	\N	1999-12-19	2500	\N	t
182	\N	\N	Renske	Ladwig	\N	\N	13	139	5	RLADWIG	650.121.1234	\N	1995-07-14	3600	\N	t
183	\N	\N	Stephen	Stiles	\N	\N	13	139	5	SSTILES	650.121.2034	\N	1997-10-26	3200	\N	t
184	\N	\N	John	Seo	\N	\N	13	139	5	JSEO	650.121.2019	\N	1998-02-12	2700	\N	t
185	\N	\N	Joshua	Patel	\N	\N	13	139	5	JPATEL	650.121.1834	\N	1998-04-06	2500	\N	t
186	\N	\N	Sarah	Bell	\N	\N	14	139	5	SBELL	650.501.1876	\N	1996-02-04	4000	\N	t
187	\N	\N	Britney	Everett	\N	\N	14	139	5	BEVERETT	650.501.2876	\N	1997-03-03	3900	\N	t
188	\N	\N	Samuel	McCain	\N	\N	14	139	5	SMCCAIN	650.501.3876	\N	1998-07-01	3200	\N	t
189	\N	\N	Vance	Jones	\N	\N	14	139	5	VJONES	650.501.4876	\N	1999-03-17	2800	\N	t
190	\N	\N	Trenna	Rajs	\N	\N	13	140	5	TRAJS	650.121.8009	\N	1995-10-17	3500	\N	t
191	\N	\N	Curtis	Davies	\N	\N	13	140	5	CDAVIES	650.121.2994	\N	1997-01-29	3100	\N	t
192	\N	\N	Randall	Matos	\N	\N	13	140	5	RMATOS	650.121.2874	\N	1998-03-15	2600	\N	t
193	\N	\N	Peter	Vargas	\N	\N	13	140	5	PVARGAS	650.121.2004	\N	1998-07-09	2500	\N	t
194	\N	\N	Alana	Walsh	\N	\N	14	140	5	AWALSH	650.507.9811	\N	1998-04-24	3100	\N	t
195	\N	\N	Kevin	Feeney	\N	\N	14	140	5	KFEENEY	650.507.9822	\N	1998-05-23	3000	\N	t
196	\N	\N	Donald	OConnell	\N	\N	14	140	5	DOCONNEL	650.507.9833	\N	1999-06-21	2600	\N	t
197	\N	\N	Douglas	Grant	\N	\N	14	140	5	DGRANT	650.507.9844	\N	2000-01-13	2600	\N	t
198	\N	\N	Peter	Tucker	\N	\N	9	141	8	PTUCKER	011.44.1344.129268	\N	1997-01-30	10000	\N	t
199	\N	\N	David	Bernstein	\N	\N	9	141	8	DBERNSTE	011.44.1344.345268	\N	1997-03-24	9500	\N	t
200	\N	\N	Peter	Hall	\N	\N	9	141	8	PHALL	011.44.1344.478968	\N	1997-08-20	9000	\N	t
201	\N	\N	Christopher	Olsen	\N	\N	9	141	8	COLSEN	011.44.1344.498718	\N	1998-03-30	8000	\N	t
202	\N	\N	Nanette	Cambrault	\N	\N	9	141	8	NCAMBRAU	011.44.1344.987668	\N	1998-12-09	7500	\N	t
203	\N	\N	Oliver	Tuvault	\N	\N	9	141	8	OTUVAULT	011.44.1344.486508	\N	1999-11-23	7000	\N	t
204	\N	\N	01ette	King	\N	\N	9	142	8	JKING	011.44.1345.429268	\N	1996-01-30	10000	\N	t
205	\N	\N	Patrick	Sully	\N	\N	9	142	8	PSULLY	011.44.1345.929268	\N	1996-03-04	9500	\N	t
206	\N	\N	Allan	McEwen	\N	\N	9	142	8	AMCEWEN	011.44.1345.829268	\N	1996-08-01	9000	\N	t
207	\N	\N	Lindsey	Smith	\N	\N	9	142	8	LSMITH	011.44.1345.729268	\N	1997-03-10	8000	\N	t
208	\N	\N	Louise	Doran	\N	\N	9	142	8	LDORAN	011.44.1345.629268	\N	1997-12-15	7500	\N	t
209	\N	\N	Sarath	Sewall	\N	\N	9	142	8	SSEWALL	011.44.1345.529268	\N	1998-11-03	7000	\N	t
210	\N	\N	Clara	Vishney	\N	\N	9	143	8	CVISHNEY	011.44.1346.129268	\N	1997-11-11	10500	\N	t
211	\N	\N	Danielle	Greene	\N	\N	9	143	8	DGREENE	011.44.1346.229268	\N	1999-03-19	9500	\N	t
212	\N	\N	Mattea	Marvins	\N	\N	9	143	8	M03VINS	011.44.1346.329268	\N	2000-01-24	7200	\N	t
213	\N	\N	David	Lee	\N	\N	9	143	8	DLEE	011.44.1346.529268	\N	2000-02-23	6800	\N	t
214	\N	\N	Sundar	Ande	\N	\N	9	143	8	SANDE	011.44.1346.629268	\N	2000-03-24	6400	\N	t
215	\N	\N	Amit	Banda	\N	\N	9	143	8	ABANDA	011.44.1346.729268	\N	2000-04-21	6200	\N	t
216	\N	\N	Lisa	Ozer	\N	\N	9	144	8	LOZER	011.44.1343.929268	\N	1997-03-11	11500	\N	t
217	\N	\N	Harrison	Bloom	\N	\N	9	144	8	HBLOOM	011.44.1343.829268	\N	1998-03-23	10000	\N	t
218	\N	\N	Tayler	Fox	\N	\N	9	144	8	TFOX	011.44.1343.729268	\N	1998-01-24	9600	\N	t
219	\N	\N	William	Smith	\N	\N	9	144	8	WSMITH	011.44.1343.629268	\N	1999-02-23	7400	\N	t
220	\N	\N	Elizabeth	Bates	\N	\N	9	144	8	EBATES	011.44.1343.529268	\N	1999-03-24	7300	\N	t
221	\N	\N	Sundita	Kumar	\N	\N	9	144	8	SKU03	011.44.1343.329268	\N	2000-04-21	6100	\N	t
222	\N	\N	Ellen	Abel	\N	\N	9	145	8	EABEL	011.44.1644.429267	\N	1996-05-11	11000	\N	t
223	\N	\N	Alyssa	Hutton	\N	\N	9	145	8	AHUTTON	011.44.1644.429266	\N	1997-03-19	8800	\N	t
224	\N	\N	Jonathon	Taylor	\N	\N	9	145	8	JTAYLOR	011.44.1644.429265	\N	1998-03-24	8600	\N	t
225	\N	\N	Jack	Livingston	\N	\N	9	145	8	JLIVINGS	011.44.1644.429264	\N	1998-04-23	8400	\N	t
226	\N	\N	Kimberely	Grant	\N	\N	9	145	\N	KGRANT	011.44.1644.429263	\N	1999-05-24	7000	\N	t
227	\N	\N	Charles	Johnson	\N	\N	9	145	8	CJOHNSON	011.44.1644.429262	\N	2000-01-04	6200	\N	t
228	\N	\N	Pat	Fay	\N	\N	17	146	2	PFAY	603.123.6666	\N	1997-08-17	6000	\N	t
299	2	2	Daniel	Faviet	2026-07-16 13:19:00.960328	2026-07-16 13:19:00.960328	7	147	10	DFAVIET	515.124.4169	\N	1994-08-16	9000	0	t
300	2	2	John	Chen	2026-07-16 13:20:13.465896	2026-07-16 13:20:13.465896	7	147	10	JCHEN	515.124.4269	\N	1997-09-28	8200	0	t
301	2	2	Ismael	Sciarra	2026-07-16 13:21:12.594236	2026-07-16 13:21:12.594236	7	147	10	ISCIARRA	515.124.4369	\N	1997-09-30	7700	0	t
302	2	2	Jose Manuel	Urman	2026-07-16 13:22:12.054716	2026-07-16 13:22:12.054716	7	147	10	JMURMAN	515.124.4469	\N	1998-03-07	7800	0	t
303	2	2	Luis	Popp	2026-07-16 13:23:08.558384	2026-07-16 13:23:08.558384	7	147	10	LPOPP	515.124.4567	\N	1999-12-07	6900	0	t
304	2	2	William	Gietz	2026-07-16 13:24:08.763828	2026-07-16 13:24:08.763828	5	205	15	WGIETZ	515.123.8181	\N	1994-06-07	8300	0	t
306	2	2	Bruce	Ernst	2026-07-16 13:26:09.147774	2026-07-16 13:26:09.147774	15	152	6	BERNST	590.423.4568	\N	1991-05-21	6000	0	t
307	2	2	David	Austin	2026-07-16 13:27:07.571548	2026-07-16 13:27:35.59401	15	152	6	DAUSTIN	590.423.4569	\N	1997-06-25	4800	0	t
308	2	2	Diana	Lorentz	2026-07-16 13:28:43.16916	2026-07-16 13:28:43.16916	15	152	6	DLORENTZ	590.423.5567	\N	1999-02-07	4200	0	t
305	2	2	Valli	Pataballa	2026-07-16 13:25:14.871127	2026-07-16 13:32:01.985544	15	152	6	VPATABAL	590.423.4560	\N	1998-02-05	4800	0	t
\.


--
-- Data for Name: nhr_ent_holidays; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.nhr_ent_holidays (id, employee_id, absence_type, entitlement, balance, create_uid, write_uid, start_date, end_date, create_date, write_date, active) FROM stdin;
1	133	1	20	20	2	2	1989-01-01	9999-12-31	2026-07-16 07:13:39.671813	2026-07-16 07:13:39.671813	t
2	132	1	20	20	2	2	1990-01-01	9999-12-31	2026-07-16 13:37:43.440458	2026-07-16 13:37:43.440458	t
3	134	1	20	0	2	2	2026-01-01	9999-12-31	2026-08-31 06:56:56.247853	2026-08-31 06:56:56.247853	t
\.


--
-- Data for Name: nhr_job_history; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.nhr_job_history (id, employee_id, job_id, department_id, create_uid, write_uid, start_date, end_date, create_date, write_date, active) FROM stdin;
\.


--
-- Data for Name: nhr_jobs; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.nhr_jobs (id, create_uid, write_uid, job_title, create_date, write_date, min_salary, max_salary, active) FROM stdin;
1	2	2	{"en_US": "President"}	2026-07-13 09:37:28.149679	2026-07-13 09:37:28.149679	20000	40000	t
2	2	2	{"en_US": "Administration Vice President"}	2026-07-13 10:00:06.03452	2026-07-13 10:00:16.17763	15000	30000	t
3	2	2	{"en_US": "Administration Assistant"}	2026-07-13 10:00:23.529681	2026-07-13 10:00:28.936817	3000	6000	t
4	2	2	{"en_US": "Finance Manager"}	2026-07-13 10:00:49.415431	2026-07-13 10:00:49.415431	8200	16000	t
5	2	2	{"en_US": "Accountant"}	2026-07-13 10:01:03.352792	2026-07-13 10:01:03.352792	4200	9000	t
6	2	2	{"en_US": "Accounting Manager"}	2026-07-13 10:01:27.175237	2026-07-13 10:01:27.175237	8200	16000	t
7	2	2	{"en_US": "Public Accountant"}	2026-07-13 10:01:40.97036	2026-07-13 10:01:40.97036	4200	9000	t
8	2	2	{"en_US": "Sales Manager"}	2026-07-13 10:01:57.640644	2026-07-13 10:01:57.640644	10000	20000	t
9	2	2	{"en_US": "Sales Representative"}	2026-07-13 10:02:13.623369	2026-07-13 10:02:13.623369	6000	12000	t
10	2	2	{"en_US": "Purchasing Manager"}	2026-07-13 10:02:27.948931	2026-07-13 10:02:27.948931	8000	15000	t
11	2	2	{"en_US": "Purchasing Clerk"}	2026-07-13 10:02:47.471611	2026-07-13 10:02:47.471611	2500	5500	t
12	2	2	{"en_US": "Stock Manager"}	2026-07-13 10:03:07.857024	2026-07-13 10:03:07.857024	5500	8500	t
13	2	2	{"en_US": "Stock Clerk"}	2026-07-13 10:03:20.231624	2026-07-13 10:03:20.231624	2000	5000	t
14	2	2	{"en_US": "Shipping Clerk"}	2026-07-13 10:03:41.680621	2026-07-13 10:03:41.680621	2500	5500	t
15	2	2	{"en_US": "Programmer"}	2026-07-13 10:03:52.899248	2026-07-13 10:03:52.899248	4000	10000	t
16	2	2	{"en_US": "Marketing Manager"}	2026-07-13 10:04:07.455255	2026-07-13 10:04:14.233181	9000	15000	t
17	2	2	{"en_US": "Marketing Representative"}	2026-07-13 10:04:24.057205	2026-07-13 10:04:24.057205	4000	9000	t
18	2	2	{"en_US": "Human Resources Representative"}	2026-07-13 10:04:39.107473	2026-07-13 10:04:39.107473	4000	9000	t
19	2	2	{"en_US": "Public Relations Representative"}	2026-07-13 10:04:55.895523	2026-07-13 10:04:55.895523	4500	10500	t
\.


--
-- Data for Name: nhr_locations; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.nhr_locations (id, country_id, create_uid, write_uid, street_address, postal_code, city, state_province, create_date, write_date, active) FROM stdin;
2	109	2	2	1297 Via Cola di Rie	00989	Roma	\N	2026-07-13 09:08:56.618641	2026-07-13 09:08:56.618641	t
3	109	2	2	93091 Calle della Testa	10934	Venice	\N	2026-07-13 09:09:37.273708	2026-07-13 09:09:37.273708	t
4	113	2	2	2017 Shinjuku-ku	1689	Tokyo	Tokyo Prefecture	2026-07-13 09:17:07.350106	2026-07-13 09:17:26.318079	t
5	113	2	2	9450 Kamiya-cho	6823	Hiroshima	\N	2026-07-13 09:17:59.706646	2026-07-13 09:17:59.706646	t
6	233	2	2	2014 Jabberwocky Rd	26192	Southlake	Texas	2026-07-13 09:18:29.907744	2026-07-13 09:18:43.414752	t
7	233	2	2	2011 Interiors Blvd	99236	South San Francisco	California	2026-07-13 09:19:07.490235	2026-07-13 09:19:16.847638	t
8	233	2	2	2007 Zagora St	50090	South Brunswick	New Jersey	2026-07-13 09:19:43.25977	2026-07-13 09:20:02.364016	t
9	233	2	2	2004 Charade Rd	98199	Seattle	Washington	2026-07-13 09:20:30.114365	2026-07-13 09:20:39.343051	t
10	38	2	2	147 Spadina Ave	M5V 2L7	Toronto	Ontario	2026-07-13 09:21:09.073492	2026-07-13 09:21:18.95981	t
11	38	2	2	6092 Boxwood St	YSW 9T2	Whitehorse	Yukon	2026-07-13 09:21:42.376355	2026-07-13 09:21:48.758127	t
12	48	2	2	40-5-12 Laogianggen	190518	Beijing	\N	2026-07-13 09:22:19.145071	2026-07-13 09:22:19.145071	t
13	104	2	2	1298 Vileparle (E)	490231	Bombay	Maharashtra	2026-07-13 09:22:40.288216	2026-07-13 09:22:51.703447	t
14	13	2	2	12-98 Victoria Street	2901	Sydney	New South Wales	2026-07-13 09:23:11.416733	2026-07-13 09:23:21.231082	t
15	197	2	2	198 Clementi North	540198	Singapore	\N	2026-07-13 09:23:50.555895	2026-07-13 09:23:50.555895	t
16	231	2	2	8204 Arthur St	SW1A 1AA	London	\N	2026-07-13 09:24:57.602787	2026-07-13 09:24:57.602787	t
17	231	2	2	Magdalen Centre, The Oxford Science Park	OX9 9ZB	Oxford	Oxford	2026-07-13 09:25:32.864304	2026-07-13 09:25:32.864304	t
18	231	2	2	9702 Chester Road	09629850293	Stretford	Manchester	2026-07-13 09:26:02.631136	2026-07-13 09:26:02.631136	t
19	57	2	2	Schwanthalerstr. 7031	80925	Munich	Bavaria	2026-07-13 09:26:23.08429	2026-07-13 09:26:30.834375	t
20	31	2	2	Rua Frei Caneca 1360	01307-002	Sao Paulo	Sao Paulo	2026-07-13 09:27:01.894652	2026-07-13 09:27:01.894652	t
21	43	2	2	20 Rue des Corps-Saints	1730	Geneva	Geneve	2026-07-13 09:27:19.274531	2026-07-13 09:27:29.208104	t
22	43	2	2	Murtenstrasse 921	3095	Bern	Bern	2026-07-13 09:28:11.103343	2026-07-13 09:28:11.103343	t
23	165	2	2	Pieter Breughelstraat 837	3029SK	Utrecht	Utrecht	2026-07-13 09:28:38.827617	2026-07-13 09:28:38.827617	t
24	156	2	2	Mariano Escobedo 9991	11932	Mexico City	Distrito Federal	2026-07-13 09:29:02.504705	2026-07-13 09:29:11.648313	t
\.


--
-- Data for Name: nhr_public_holidays; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.nhr_public_holidays (id, country_id, create_uid, write_uid, holiday_description, holiday_date, create_date, write_date, active) FROM stdin;
10045	20	2	2	New Years Day	2026-01-01	2026-07-15 14:49:39.195459	2026-07-15 14:49:39.195459	t
10046	20	2	2	Nouvel An	1991-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10047	20	2	2	Lundi de Pâques	1991-04-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10048	20	2	2	Fête du Travail	1991-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10049	20	2	2	Ascension	1991-05-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10050	20	2	2	Lundi de Pentecôte	1991-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10051	20	2	2	Fête Nationale	1991-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10052	20	2	2	Assomption	1991-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10053	20	2	2	Toussaint	1991-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10054	20	2	2	Armistice	1991-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10055	20	2	2	Noël	1991-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10056	20	2	2	Nouvel An	1992-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10057	20	2	2	Lundi de Pâques	1992-04-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10058	20	2	2	Fête du Travail	1992-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10059	20	2	2	Ascension	1992-05-28	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10060	20	2	2	Lundi de Pentecôte	1992-06-08	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10061	20	2	2	Fête Nationale	1992-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10062	20	2	2	Assomption	1992-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10063	20	2	2	Toussaint	1992-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10064	20	2	2	Armistice	1992-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10065	20	2	2	Noël	1992-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10066	20	2	2	Nouvel An	1993-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10067	20	2	2	Lundi de Pâques	1993-04-12	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10068	20	2	2	Fête du Travail	1993-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10069	20	2	2	Ascension	1993-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10070	20	2	2	Lundi de Pentecôte	1993-05-31	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10071	20	2	2	Fête Nationale	1993-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10072	20	2	2	Assomption	1993-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10073	20	2	2	Toussaint	1993-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10074	20	2	2	Armistice	1993-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10075	20	2	2	Noël	1993-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10076	20	2	2	Nouvel An	1994-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10077	20	2	2	Lundi de Pâques	1994-04-04	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10078	20	2	2	Fête du Travail	1994-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10079	20	2	2	Ascension	1994-05-12	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10080	20	2	2	Lundi de Pentecôte	1994-05-23	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10081	20	2	2	Fête Nationale	1994-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10082	20	2	2	Assomption	1994-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10083	20	2	2	Toussaint	1994-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10084	20	2	2	Armistice	1994-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10085	20	2	2	Noël	1994-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10086	20	2	2	Nouvel An	1995-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10087	20	2	2	Lundi de Pâques	1995-04-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10088	20	2	2	Fête du Travail	1995-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10089	20	2	2	Ascension	1995-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10090	20	2	2	Lundi de Pentecôte	1995-06-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10091	20	2	2	Fête Nationale	1995-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10092	20	2	2	Assomption	1995-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10093	20	2	2	Toussaint	1995-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10094	20	2	2	Armistice	1995-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10095	20	2	2	Noël	1995-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10096	20	2	2	Nouvel An	1996-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10097	20	2	2	Lundi de Pâques	1996-04-08	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10098	20	2	2	Fête du Travail	1996-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10099	20	2	2	Ascension	1996-05-16	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10100	20	2	2	Lundi de Pentecôte	1996-05-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10101	20	2	2	Fête Nationale	1996-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10102	20	2	2	Assomption	1996-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10103	20	2	2	Toussaint	1996-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10104	20	2	2	Armistice	1996-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10105	20	2	2	Noël	1996-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10106	20	2	2	Nouvel An	1997-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10107	20	2	2	Lundi de Pâques	1997-03-31	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10108	20	2	2	Fête du Travail	1997-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10109	20	2	2	Ascension	1997-05-08	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10110	20	2	2	Lundi de Pentecôte	1997-05-19	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10111	20	2	2	Fête Nationale	1997-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10112	20	2	2	Assomption	1997-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10113	20	2	2	Toussaint	1997-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10114	20	2	2	Armistice	1997-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10115	20	2	2	Noël	1997-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10116	20	2	2	Nouvel An	1998-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10117	20	2	2	Lundi de Pâques	1998-04-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10118	20	2	2	Fête du Travail	1998-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10119	20	2	2	Ascension	1998-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10120	20	2	2	Lundi de Pentecôte	1998-06-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10121	20	2	2	Fête Nationale	1998-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10122	20	2	2	Assomption	1998-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10123	20	2	2	Toussaint	1998-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10124	20	2	2	Armistice	1998-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10125	20	2	2	Noël	1998-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10126	20	2	2	Nouvel An	1999-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10127	20	2	2	Lundi de Pâques	1999-04-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10128	20	2	2	Fête du Travail	1999-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10129	20	2	2	Ascension	1999-05-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10130	20	2	2	Lundi de Pentecôte	1999-05-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10131	20	2	2	Fête Nationale	1999-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10132	20	2	2	Assomption	1999-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10133	20	2	2	Toussaint	1999-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10134	20	2	2	Armistice	1999-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10135	20	2	2	Noël	1999-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10136	20	2	2	Nouvel An	2000-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10137	20	2	2	Lundi de Pâques	2000-04-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10138	20	2	2	Fête du Travail	2000-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10139	20	2	2	Ascension	2000-06-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10140	20	2	2	Lundi de Pentecôte	2000-06-12	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10141	20	2	2	Fête Nationale	2000-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10142	20	2	2	Assomption	2000-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10143	20	2	2	Toussaint	2000-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10144	20	2	2	Armistice	2000-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10145	20	2	2	Noël	2000-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10146	20	2	2	Nouvel An	2001-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10147	20	2	2	Lundi de Pâques	2001-04-16	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10148	20	2	2	Fête du Travail	2001-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10149	20	2	2	Ascension	2001-05-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10150	20	2	2	Lundi de Pentecôte	2001-06-04	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10151	20	2	2	Fête Nationale	2001-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10152	20	2	2	Assomption	2001-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10153	20	2	2	Toussaint	2001-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10154	20	2	2	Armistice	2001-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10155	20	2	2	Noël	2001-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10156	20	2	2	Nouvel An	2002-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10157	20	2	2	Lundi de Pâques	2002-04-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10158	20	2	2	Fête du Travail	2002-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10159	20	2	2	Ascension	2002-05-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10160	20	2	2	Lundi de Pentecôte	2002-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10161	20	2	2	Fête Nationale	2002-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10162	20	2	2	Assomption	2002-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10163	20	2	2	Toussaint	2002-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10164	20	2	2	Armistice	2002-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10165	20	2	2	Noël	2002-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10166	20	2	2	Nouvel An	2003-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10167	20	2	2	Lundi de Pâques	2003-04-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10168	20	2	2	Fête du Travail	2003-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10169	20	2	2	Ascension	2003-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10170	20	2	2	Lundi de Pentecôte	2003-06-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10171	20	2	2	Fête Nationale	2003-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10172	20	2	2	Assomption	2003-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10173	20	2	2	Toussaint	2003-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10174	20	2	2	Armistice	2003-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10175	20	2	2	Noël	2003-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10176	20	2	2	Nouvel An	2004-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10177	20	2	2	Lundi de Pâques	2004-04-12	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10178	20	2	2	Fête du Travail	2004-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10179	20	2	2	Ascension	2004-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10180	20	2	2	Lundi de Pentecôte	2004-05-31	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10181	20	2	2	Fête Nationale	2004-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10182	20	2	2	Assomption	2004-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10183	20	2	2	Toussaint	2004-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10184	20	2	2	Armistice	2004-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10185	20	2	2	Noël	2004-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10186	20	2	2	Nouvel An	2005-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10187	20	2	2	Lundi de Pâques	2005-03-28	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10188	20	2	2	Fête du Travail	2005-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10189	20	2	2	Ascension	2005-05-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10190	20	2	2	Lundi de Pentecôte	2005-05-16	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10191	20	2	2	Fête Nationale	2005-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10192	20	2	2	Assomption	2005-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10193	20	2	2	Toussaint	2005-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10194	20	2	2	Armistice	2005-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10195	20	2	2	Noël	2005-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10196	20	2	2	Nouvel An	2006-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10197	20	2	2	Lundi de Pâques	2006-04-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10198	20	2	2	Fête du Travail	2006-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10199	20	2	2	Ascension	2006-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10200	20	2	2	Lundi de Pentecôte	2006-06-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10201	20	2	2	Fête Nationale	2006-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10202	20	2	2	Assomption	2006-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10203	20	2	2	Toussaint	2006-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10204	20	2	2	Armistice	2006-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10205	20	2	2	Noël	2006-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10206	20	2	2	Nouvel An	2007-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10207	20	2	2	Lundi de Pâques	2007-04-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10208	20	2	2	Fête du Travail	2007-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10209	20	2	2	Ascension	2007-05-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10210	20	2	2	Lundi de Pentecôte	2007-05-28	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10211	20	2	2	Fête Nationale	2007-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10212	20	2	2	Assomption	2007-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10213	20	2	2	Toussaint	2007-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10214	20	2	2	Armistice	2007-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10215	20	2	2	Noël	2007-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10216	20	2	2	Nouvel An	2008-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10217	20	2	2	Lundi de Pâques	2008-03-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10218	20	2	2	Fête du Travail	2008-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10219	20	2	2	Ascension	2008-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10220	20	2	2	Lundi de Pentecôte	2008-05-12	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10221	20	2	2	Fête Nationale	2008-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10222	20	2	2	Assomption	2008-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10223	20	2	2	Toussaint	2008-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10224	20	2	2	Armistice	2008-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10225	20	2	2	Noël	2008-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10226	20	2	2	Nouvel An	2009-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10227	20	2	2	Lundi de Pâques	2009-04-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10228	20	2	2	Fête du Travail	2009-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10229	20	2	2	Ascension	2009-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10230	20	2	2	Lundi de Pentecôte	2009-06-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10231	20	2	2	Fête Nationale	2009-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10232	20	2	2	Assomption	2009-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10233	20	2	2	Toussaint	2009-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10234	20	2	2	Armistice	2009-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10235	20	2	2	Noël	2009-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10236	20	2	2	Nouvel An	2010-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10237	20	2	2	Lundi de Pâques	2010-04-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10238	20	2	2	Fête du Travail	2010-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10239	20	2	2	Ascension	2010-05-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10240	20	2	2	Lundi de Pentecôte	2010-05-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10241	20	2	2	Fête Nationale	2010-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10242	20	2	2	Assomption	2010-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10243	20	2	2	Toussaint	2010-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10244	20	2	2	Armistice	2010-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10245	20	2	2	Noël	2010-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10246	20	2	2	Nouvel An	2011-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10247	20	2	2	Lundi de Pâques	2011-04-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10248	20	2	2	Fête du Travail	2011-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10249	20	2	2	Ascension	2011-06-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10250	20	2	2	Lundi de Pentecôte	2011-06-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10251	20	2	2	Fête Nationale	2011-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10252	20	2	2	Assomption	2011-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10253	20	2	2	Toussaint	2011-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10254	20	2	2	Armistice	2011-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10255	20	2	2	Noël	2011-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10256	20	2	2	Nouvel An	2012-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10257	20	2	2	Lundi de Pâques	2012-04-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10258	20	2	2	Fête du Travail	2012-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10259	20	2	2	Ascension	2012-05-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10260	20	2	2	Lundi de Pentecôte	2012-05-28	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10261	20	2	2	Fête Nationale	2012-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10262	20	2	2	Assomption	2012-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10263	20	2	2	Toussaint	2012-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10264	20	2	2	Armistice	2012-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10265	20	2	2	Noël	2012-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10266	20	2	2	Nouvel An	2013-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10267	20	2	2	Lundi de Pâques	2013-04-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10268	20	2	2	Fête du Travail	2013-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10269	20	2	2	Ascension	2013-05-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10270	20	2	2	Lundi de Pentecôte	2013-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10271	20	2	2	Fête Nationale	2013-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10272	20	2	2	Assomption	2013-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10273	20	2	2	Toussaint	2013-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10274	20	2	2	Armistice	2013-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10275	20	2	2	Noël	2013-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10276	20	2	2	Nouvel An	2014-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10277	20	2	2	Lundi de Pâques	2014-04-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10278	20	2	2	Fête du Travail	2014-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10279	20	2	2	Ascension	2014-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10280	20	2	2	Lundi de Pentecôte	2014-06-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10281	20	2	2	Fête Nationale	2014-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10282	20	2	2	Assomption	2014-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10283	20	2	2	Toussaint	2014-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10284	20	2	2	Armistice	2014-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10285	20	2	2	Noël	2014-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10286	20	2	2	Nouvel An	2015-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10287	20	2	2	Lundi de Pâques	2015-04-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10288	20	2	2	Fête du Travail	2015-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10289	20	2	2	Ascension	2015-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10290	20	2	2	Lundi de Pentecôte	2015-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10291	20	2	2	Fête Nationale	2015-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10292	20	2	2	Assomption	2015-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10293	20	2	2	Toussaint	2015-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10294	20	2	2	Armistice	2015-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10295	20	2	2	Noël	2015-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10296	20	2	2	Nouvel An	2016-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10297	20	2	2	Lundi de Pâques	2016-03-28	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10298	20	2	2	Fête du Travail	2016-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10299	20	2	2	Ascension	2016-05-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10300	20	2	2	Lundi de Pentecôte	2016-05-16	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10301	20	2	2	Fête Nationale	2016-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10302	20	2	2	Assomption	2016-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10303	20	2	2	Toussaint	2016-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10304	20	2	2	Armistice	2016-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10305	20	2	2	Noël	2016-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10306	20	2	2	Nouvel An	2017-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10307	20	2	2	Lundi de Pâques	2017-04-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10308	20	2	2	Fête du Travail	2017-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10309	20	2	2	Ascension	2017-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10310	20	2	2	Lundi de Pentecôte	2017-06-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10311	20	2	2	Fête Nationale	2017-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10312	20	2	2	Assomption	2017-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10313	20	2	2	Toussaint	2017-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10314	20	2	2	Armistice	2017-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10315	20	2	2	Noël	2017-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10316	20	2	2	Nouvel An	2018-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10317	20	2	2	Lundi de Pâques	2018-04-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10318	20	2	2	Fête du Travail	2018-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10319	20	2	2	Ascension	2018-05-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10320	20	2	2	Lundi de Pentecôte	2018-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10321	20	2	2	Fête Nationale	2018-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10322	20	2	2	Assomption	2018-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10323	20	2	2	Toussaint	2018-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10324	20	2	2	Armistice	2018-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10325	20	2	2	Noël	2018-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10326	20	2	2	Nouvel An	2019-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10327	20	2	2	Lundi de Pâques	2019-04-22	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10328	20	2	2	Fête du Travail	2019-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10329	20	2	2	Ascension	2019-05-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10330	20	2	2	Lundi de Pentecôte	2019-06-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10331	20	2	2	Fête Nationale	2019-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10332	20	2	2	Assomption	2019-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10333	20	2	2	Toussaint	2019-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10334	20	2	2	Armistice	2019-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10335	20	2	2	Noël	2019-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10336	20	2	2	Nouvel An	2020-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10337	20	2	2	Lundi de Pâques	2020-04-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10338	20	2	2	Fête du Travail	2020-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10339	20	2	2	Ascension	2020-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10340	20	2	2	Lundi de Pentecôte	2020-06-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10341	20	2	2	Fête Nationale	2020-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10342	20	2	2	Assomption	2020-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10343	20	2	2	Toussaint	2020-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10344	20	2	2	Armistice	2020-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10345	20	2	2	Noël	2020-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10346	20	2	2	Nouvel An	2021-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10347	20	2	2	Lundi de Pâques	2021-04-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10348	20	2	2	Fête du Travail	2021-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10349	20	2	2	Ascension	2021-05-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10350	20	2	2	Lundi de Pentecôte	2021-05-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10351	20	2	2	Fête Nationale	2021-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10352	20	2	2	Assomption	2021-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10353	20	2	2	Toussaint	2021-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10354	20	2	2	Armistice	2021-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10355	20	2	2	Noël	2021-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10356	20	2	2	Nouvel An	2022-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10357	20	2	2	Lundi de Pâques	2022-04-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10358	20	2	2	Fête du Travail	2022-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10359	20	2	2	Ascension	2022-05-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10360	20	2	2	Lundi de Pentecôte	2022-06-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10361	20	2	2	Fête Nationale	2022-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10362	20	2	2	Assomption	2022-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10363	20	2	2	Toussaint	2022-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10364	20	2	2	Armistice	2022-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10365	20	2	2	Noël	2022-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10366	20	2	2	Nouvel An	2023-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10367	20	2	2	Lundi de Pâques	2023-04-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10368	20	2	2	Fête du Travail	2023-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10369	20	2	2	Ascension	2023-05-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10370	20	2	2	Lundi de Pentecôte	2023-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10371	20	2	2	Fête Nationale	2023-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10372	20	2	2	Assomption	2023-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10373	20	2	2	Toussaint	2023-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10374	20	2	2	Armistice	2023-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10375	20	2	2	Noël	2023-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10376	20	2	2	Nouvel An	2024-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10377	20	2	2	Lundi de Pâques	2024-04-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10378	20	2	2	Fête du Travail	2024-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10379	20	2	2	Ascension	2024-05-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10380	20	2	2	Lundi de Pentecôte	2024-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10381	20	2	2	Fête Nationale	2024-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10382	20	2	2	Assomption	2024-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10383	20	2	2	Toussaint	2024-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10384	20	2	2	Armistice	2024-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10385	20	2	2	Noël	2024-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10386	20	2	2	Nouvel An	2025-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10387	20	2	2	Lundi de Pâques	2025-04-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10388	20	2	2	Fête du Travail	2025-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10389	20	2	2	Ascension	2025-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10390	20	2	2	Lundi de Pentecôte	2025-06-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10391	20	2	2	Fête Nationale	2025-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10392	20	2	2	Assomption	2025-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10393	20	2	2	Toussaint	2025-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10394	20	2	2	Armistice	2025-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10395	20	2	2	Noël	2025-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10396	20	2	2	Nouvel An	2026-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10397	20	2	2	Lundi de Pâques	2026-04-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10398	20	2	2	Fête du Travail	2026-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10399	20	2	2	Ascension	2026-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10400	20	2	2	Lundi de Pentecôte	2026-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10401	20	2	2	Fête Nationale	2026-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10402	20	2	2	Assomption	2026-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10403	20	2	2	Toussaint	2026-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10404	20	2	2	Armistice	2026-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10405	20	2	2	Noël	2026-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10406	20	2	2	Nouvel An	2027-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10407	20	2	2	Lundi de Pâques	2027-03-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10408	20	2	2	Fête du Travail	2027-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10409	20	2	2	Ascension	2027-06-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10410	20	2	2	Lundi de Pentecôte	2027-05-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10411	20	2	2	Fête Nationale	2027-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10412	20	2	2	Assomption	2027-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10413	20	2	2	Toussaint	2027-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10414	20	2	2	Armistice	2027-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10415	20	2	2	Noël	2027-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10416	20	2	2	Nouvel An	2028-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10417	20	2	2	Lundi de Pâques	2028-04-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10418	20	2	2	Fête du Travail	2028-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10419	20	2	2	Ascension	2028-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10420	20	2	2	Lundi de Pentecôte	2028-06-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10421	20	2	2	Fête Nationale	2028-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10422	20	2	2	Assomption	2028-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10423	20	2	2	Toussaint	2028-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10424	20	2	2	Armistice	2028-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10425	20	2	2	Noël	2028-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10426	20	2	2	Nouvel An	2029-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10427	20	2	2	Lundi de Pâques	2029-04-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10428	20	2	2	Fête du Travail	2029-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10429	20	2	2	Ascension	2029-05-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10430	20	2	2	Lundi de Pentecôte	2029-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10431	20	2	2	Fête Nationale	2029-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10432	20	2	2	Assomption	2029-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10433	20	2	2	Toussaint	2029-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10434	20	2	2	Armistice	2029-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10435	20	2	2	Noël	2029-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10436	20	2	2	Nouvel An	2030-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10437	20	2	2	Lundi de Pâques	2030-04-22	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10438	20	2	2	Fête du Travail	2030-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10439	20	2	2	Ascension	2030-05-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10440	20	2	2	Lundi de Pentecôte	2030-06-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10441	20	2	2	Fête Nationale	2030-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10442	20	2	2	Assomption	2030-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10443	20	2	2	Toussaint	2030-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10444	20	2	2	Armistice	2030-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10445	20	2	2	Noël	2030-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10446	20	2	2	Nouvel An	2031-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10447	20	2	2	Lundi de Pâques	2031-04-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10448	20	2	2	Fête du Travail	2031-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10449	20	2	2	Ascension	2031-05-22	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10450	20	2	2	Lundi de Pentecôte	2031-06-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10451	20	2	2	Fête Nationale	2031-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10452	20	2	2	Assomption	2031-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10453	20	2	2	Toussaint	2031-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10454	20	2	2	Armistice	2031-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10455	20	2	2	Noël	2031-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10456	20	2	2	Nouvel An	2032-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10457	20	2	2	Lundi de Pâques	2032-03-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10458	20	2	2	Fête du Travail	2032-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10459	20	2	2	Ascension	2032-05-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10460	20	2	2	Lundi de Pentecôte	2032-05-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10461	20	2	2	Fête Nationale	2032-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10462	20	2	2	Assomption	2032-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10463	20	2	2	Toussaint	2032-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10464	20	2	2	Armistice	2032-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10465	20	2	2	Noël	2032-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10466	20	2	2	Nouvel An	2033-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10467	20	2	2	Lundi de Pâques	2033-04-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10468	20	2	2	Fête du Travail	2033-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10469	20	2	2	Ascension	2033-05-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10470	20	2	2	Lundi de Pentecôte	2033-06-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10471	20	2	2	Fête Nationale	2033-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10472	20	2	2	Assomption	2033-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10473	20	2	2	Toussaint	2033-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10474	20	2	2	Armistice	2033-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10475	20	2	2	Noël	2033-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10476	20	2	2	Nouvel An	2034-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10477	20	2	2	Lundi de Paques	2034-04-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10478	20	2	2	Fete du Travail	2034-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10479	20	2	2	Ascension	2034-05-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10480	20	2	2	Lundi de Pentecote	2034-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10481	20	2	2	Fete de la Communaute flamande	2034-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10482	20	2	2	Fete Nationale	2034-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10483	20	2	2	Assomption	2034-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10484	20	2	2	Fete de la Communaute francaise	2034-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10485	20	2	2	Toussaint	2034-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10486	20	2	2	Jour des Morts	2034-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10487	20	2	2	Armistice	2034-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10488	20	2	2	Fete du Roi / Communaute germanophone	2034-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10489	20	2	2	Noel	2034-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10490	20	2	2	Nouvel An	2035-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10491	20	2	2	Lundi de Paques	2035-03-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10492	20	2	2	Fete du Travail	2035-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10493	20	2	2	Ascension	2035-05-03	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10494	20	2	2	Lundi de Pentecote	2035-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10495	20	2	2	Fete de la Communaute flamande	2035-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10496	20	2	2	Fete Nationale	2035-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10497	20	2	2	Assomption	2035-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10498	20	2	2	Fete de la Communaute francaise	2035-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10499	20	2	2	Toussaint	2035-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10500	20	2	2	Jour des Morts	2035-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10501	20	2	2	Armistice	2035-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10502	20	2	2	Fete du Roi / Communaute germanophone	2035-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10503	20	2	2	Noel	2035-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10504	20	2	2	Nouvel An	2036-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10505	20	2	2	Lundi de Paques	2036-04-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10506	20	2	2	Fete du Travail	2036-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10507	20	2	2	Ascension	2036-05-22	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10508	20	2	2	Lundi de Pentecote	2036-06-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10509	20	2	2	Fete de la Communaute flamande	2036-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10510	20	2	2	Fete Nationale	2036-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10511	20	2	2	Assomption	2036-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10512	20	2	2	Fete de la Communaute francaise	2036-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10513	20	2	2	Toussaint	2036-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10514	20	2	2	Jour des Morts	2036-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10515	20	2	2	Armistice	2036-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10516	20	2	2	Fete du Roi / Communaute germanophone	2036-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10517	20	2	2	Noel	2036-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10518	20	2	2	Nouvel An	2037-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10519	20	2	2	Lundi de Paques	2037-04-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10520	20	2	2	Fete du Travail	2037-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10521	20	2	2	Ascension	2037-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10522	20	2	2	Lundi de Pentecote	2037-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10523	20	2	2	Fete de la Communaute flamande	2037-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10524	20	2	2	Fete Nationale	2037-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10525	20	2	2	Assomption	2037-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10526	20	2	2	Fete de la Communaute francaise	2037-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10527	20	2	2	Toussaint	2037-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10528	20	2	2	Jour des Morts	2037-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10529	20	2	2	Armistice	2037-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10530	20	2	2	Fete du Roi / Communaute germanophone	2037-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10531	20	2	2	Noel	2037-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10532	20	2	2	Nouvel An	2038-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10533	20	2	2	Lundi de Paques	2038-04-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10534	20	2	2	Fete du Travail	2038-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10535	20	2	2	Ascension	2038-06-03	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10536	20	2	2	Lundi de Pentecote	2038-06-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10537	20	2	2	Fete de la Communaute flamande	2038-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10538	20	2	2	Fete Nationale	2038-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10539	20	2	2	Assomption	2038-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10540	20	2	2	Fete de la Communaute francaise	2038-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10541	20	2	2	Toussaint	2038-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10542	20	2	2	Jour des Morts	2038-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10543	20	2	2	Armistice	2038-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10544	20	2	2	Fete du Roi / Communaute germanophone	2038-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10545	20	2	2	Noel	2038-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10546	20	2	2	Nouvel An	2039-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10547	20	2	2	Lundi de Paques	2039-04-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10548	20	2	2	Fete du Travail	2039-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10549	20	2	2	Ascension	2039-05-19	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10550	20	2	2	Lundi de Pentecote	2039-05-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10551	20	2	2	Fete de la Communaute flamande	2039-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10552	20	2	2	Fete Nationale	2039-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10553	20	2	2	Assomption	2039-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10554	20	2	2	Fete de la Communaute francaise	2039-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10555	20	2	2	Toussaint	2039-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10556	20	2	2	Jour des Morts	2039-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10557	20	2	2	Armistice	2039-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10558	20	2	2	Fete du Roi / Communaute germanophone	2039-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10559	20	2	2	Noel	2039-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10560	20	2	2	Nouvel An	2040-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10561	20	2	2	Lundi de Paques	2040-04-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10562	20	2	2	Fete du Travail	2040-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10563	20	2	2	Ascension	2040-05-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10564	20	2	2	Lundi de Pentecote	2040-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10565	20	2	2	Fete de la Communaute flamande	2040-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10566	20	2	2	Fete Nationale	2040-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10567	20	2	2	Assomption	2040-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10568	20	2	2	Fete de la Communaute francaise	2040-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10569	20	2	2	Toussaint	2040-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10570	20	2	2	Jour des Morts	2040-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10571	20	2	2	Armistice	2040-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10572	20	2	2	Fete du Roi / Communaute germanophone	2040-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10573	20	2	2	Noel	2040-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10574	20	2	2	Nouvel An	2041-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10575	20	2	2	Lundi de Paques	2041-04-22	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10576	20	2	2	Fete du Travail	2041-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10577	20	2	2	Ascension	2041-05-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10578	20	2	2	Lundi de Pentecote	2041-06-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10579	20	2	2	Fete de la Communaute flamande	2041-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10580	20	2	2	Fete Nationale	2041-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10581	20	2	2	Assomption	2041-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10582	20	2	2	Fete de la Communaute francaise	2041-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10583	20	2	2	Toussaint	2041-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10584	20	2	2	Jour des Morts	2041-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10585	20	2	2	Armistice	2041-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10586	20	2	2	Fete du Roi / Communaute germanophone	2041-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10587	20	2	2	Noel	2041-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10588	20	2	2	Nouvel An	2042-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10589	20	2	2	Lundi de Paques	2042-04-07	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10590	20	2	2	Fete du Travail	2042-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10591	20	2	2	Ascension	2042-05-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10592	20	2	2	Lundi de Pentecote	2042-05-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10593	20	2	2	Fete de la Communaute flamande	2042-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10594	20	2	2	Fete Nationale	2042-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10595	20	2	2	Assomption	2042-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10596	20	2	2	Fete de la Communaute francaise	2042-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10597	20	2	2	Toussaint	2042-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10598	20	2	2	Jour des Morts	2042-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10599	20	2	2	Armistice	2042-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10600	20	2	2	Fete du Roi / Communaute germanophone	2042-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10601	20	2	2	Noel	2042-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10602	20	2	2	Nouvel An	2043-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10603	20	2	2	Lundi de Paques	2043-03-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10604	20	2	2	Fete du Travail	2043-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10605	20	2	2	Ascension	2043-05-07	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10606	20	2	2	Lundi de Pentecote	2043-05-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10607	20	2	2	Fete de la Communaute flamande	2043-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10608	20	2	2	Fete Nationale	2043-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10609	20	2	2	Assomption	2043-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10610	20	2	2	Fete de la Communaute francaise	2043-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10611	20	2	2	Toussaint	2043-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10612	20	2	2	Jour des Morts	2043-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10613	20	2	2	Armistice	2043-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10614	20	2	2	Fete du Roi / Communaute germanophone	2043-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10615	20	2	2	Noel	2043-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10616	20	2	2	Nouvel An	2044-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10617	20	2	2	Lundi de Paques	2044-04-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10618	20	2	2	Fete du Travail	2044-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10619	20	2	2	Ascension	2044-05-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10620	20	2	2	Lundi de Pentecote	2044-06-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10621	20	2	2	Fete de la Communaute flamande	2044-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10622	20	2	2	Fete Nationale	2044-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10623	20	2	2	Assomption	2044-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10624	20	2	2	Fete de la Communaute francaise	2044-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10625	20	2	2	Toussaint	2044-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10626	20	2	2	Jour des Morts	2044-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10627	20	2	2	Armistice	2044-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10628	20	2	2	Fete du Roi / Communaute germanophone	2044-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10629	20	2	2	Noel	2044-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10630	20	2	2	Nouvel An	2045-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10631	20	2	2	Lundi de Paques	2045-04-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10632	20	2	2	Fete du Travail	2045-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10633	20	2	2	Ascension	2045-05-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10634	20	2	2	Lundi de Pentecote	2045-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10635	20	2	2	Fete de la Communaute flamande	2045-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10636	20	2	2	Fete Nationale	2045-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10637	20	2	2	Assomption	2045-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10638	20	2	2	Fete de la Communaute francaise	2045-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10639	20	2	2	Toussaint	2045-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10640	20	2	2	Jour des Morts	2045-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10641	20	2	2	Armistice	2045-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10642	20	2	2	Fete du Roi / Communaute germanophone	2045-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10643	20	2	2	Noel	2045-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10644	20	2	2	Nouvel An	2046-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10645	20	2	2	Lundi de Paques	2046-03-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10646	20	2	2	Fete du Travail	2046-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10647	20	2	2	Ascension	2046-05-03	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10648	20	2	2	Lundi de Pentecote	2046-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10649	20	2	2	Fete de la Communaute flamande	2046-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10650	20	2	2	Fete Nationale	2046-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10651	20	2	2	Assomption	2046-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10652	20	2	2	Fete de la Communaute francaise	2046-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10653	20	2	2	Toussaint	2046-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10654	20	2	2	Jour des Morts	2046-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10655	20	2	2	Armistice	2046-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10656	20	2	2	Fete du Roi / Communaute germanophone	2046-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10657	20	2	2	Noel	2046-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10658	20	2	2	Nouvel An	2047-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10659	20	2	2	Lundi de Paques	2047-04-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10660	20	2	2	Fete du Travail	2047-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10661	20	2	2	Ascension	2047-05-23	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10662	20	2	2	Lundi de Pentecote	2047-06-03	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10663	20	2	2	Fete de la Communaute flamande	2047-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10664	20	2	2	Fete Nationale	2047-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10665	20	2	2	Assomption	2047-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10666	20	2	2	Fete de la Communaute francaise	2047-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10667	20	2	2	Toussaint	2047-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10668	20	2	2	Jour des Morts	2047-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10669	20	2	2	Armistice	2047-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10670	20	2	2	Fete du Roi / Communaute germanophone	2047-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10671	20	2	2	Noel	2047-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10672	20	2	2	Nouvel An	2048-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10673	20	2	2	Lundi de Paques	2048-04-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10674	20	2	2	Fete du Travail	2048-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10675	20	2	2	Ascension	2048-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10676	20	2	2	Lundi de Pentecote	2048-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10677	20	2	2	Fete de la Communaute flamande	2048-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10678	20	2	2	Fete Nationale	2048-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10679	20	2	2	Assomption	2048-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10680	20	2	2	Fete de la Communaute francaise	2048-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10681	20	2	2	Toussaint	2048-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10682	20	2	2	Jour des Morts	2048-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10683	20	2	2	Armistice	2048-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10684	20	2	2	Fete du Roi / Communaute germanophone	2048-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10685	20	2	2	Noel	2048-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10686	20	2	2	Nouvel An	2049-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10687	20	2	2	Lundi de Paques	2049-04-19	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10688	20	2	2	Fete du Travail	2049-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10689	20	2	2	Ascension	2049-05-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10690	20	2	2	Lundi de Pentecote	2049-06-07	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10691	20	2	2	Fete de la Communaute flamande	2049-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10692	20	2	2	Fete Nationale	2049-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10693	20	2	2	Assomption	2049-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10694	20	2	2	Fete de la Communaute francaise	2049-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10695	20	2	2	Toussaint	2049-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10696	20	2	2	Jour des Morts	2049-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10697	20	2	2	Armistice	2049-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10698	20	2	2	Fete du Roi / Communaute germanophone	2049-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10699	20	2	2	Noel	2049-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10700	20	2	2	Nouvel An	2050-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10701	20	2	2	Lundi de Paques	2050-04-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10702	20	2	2	Fete du Travail	2050-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10703	20	2	2	Ascension	2050-05-19	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10704	20	2	2	Lundi de Pentecote	2050-05-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10705	20	2	2	Fete de la Communaute flamande	2050-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10706	20	2	2	Fete Nationale	2050-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10707	20	2	2	Assomption	2050-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10708	20	2	2	Fete de la Communaute francaise	2050-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10709	20	2	2	Toussaint	2050-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10710	20	2	2	Jour des Morts	2050-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10711	20	2	2	Armistice	2050-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10712	20	2	2	Fete du Roi / Communaute germanophone	2050-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10713	20	2	2	Noel	2050-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10714	13	2	2	Nouvel An	1991-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10715	13	2	2	Lundi de Pâques	1991-04-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10716	13	2	2	Fête du Travail	1991-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10717	13	2	2	Ascension	1991-05-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10718	13	2	2	Lundi de Pentecôte	1991-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10719	13	2	2	Fête Nationale	1991-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10720	13	2	2	Assomption	1991-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10721	13	2	2	Toussaint	1991-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10722	13	2	2	Armistice	1991-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10723	13	2	2	Noël	1991-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10724	13	2	2	Nouvel An	1992-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10725	13	2	2	Lundi de Pâques	1992-04-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10726	13	2	2	Fête du Travail	1992-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10727	13	2	2	Ascension	1992-05-28	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10728	13	2	2	Lundi de Pentecôte	1992-06-08	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10729	13	2	2	Fête Nationale	1992-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10730	13	2	2	Assomption	1992-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10731	13	2	2	Toussaint	1992-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10732	13	2	2	Armistice	1992-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10733	13	2	2	Noël	1992-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10734	13	2	2	Nouvel An	1993-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10735	13	2	2	Lundi de Pâques	1993-04-12	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10736	13	2	2	Fête du Travail	1993-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10737	13	2	2	Ascension	1993-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10738	13	2	2	Lundi de Pentecôte	1993-05-31	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10739	13	2	2	Fête Nationale	1993-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10740	13	2	2	Assomption	1993-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10741	13	2	2	Toussaint	1993-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10742	13	2	2	Armistice	1993-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10743	13	2	2	Noël	1993-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10744	13	2	2	Nouvel An	1994-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10745	13	2	2	Lundi de Pâques	1994-04-04	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10746	13	2	2	Fête du Travail	1994-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10747	13	2	2	Ascension	1994-05-12	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10748	13	2	2	Lundi de Pentecôte	1994-05-23	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10749	13	2	2	Fête Nationale	1994-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10750	13	2	2	Assomption	1994-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10751	13	2	2	Toussaint	1994-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10752	13	2	2	Armistice	1994-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10753	13	2	2	Noël	1994-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10754	13	2	2	Nouvel An	1995-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10755	13	2	2	Lundi de Pâques	1995-04-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10756	13	2	2	Fête du Travail	1995-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10757	13	2	2	Ascension	1995-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10758	13	2	2	Lundi de Pentecôte	1995-06-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10759	13	2	2	Fête Nationale	1995-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10760	13	2	2	Assomption	1995-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10761	13	2	2	Toussaint	1995-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10762	13	2	2	Armistice	1995-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10763	13	2	2	Noël	1995-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10764	13	2	2	Nouvel An	1996-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10765	13	2	2	Lundi de Pâques	1996-04-08	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10766	13	2	2	Fête du Travail	1996-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10767	13	2	2	Ascension	1996-05-16	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10768	13	2	2	Lundi de Pentecôte	1996-05-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10769	13	2	2	Fête Nationale	1996-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10770	13	2	2	Assomption	1996-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10771	13	2	2	Toussaint	1996-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10772	13	2	2	Armistice	1996-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10773	13	2	2	Noël	1996-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10774	13	2	2	Nouvel An	1997-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10775	13	2	2	Lundi de Pâques	1997-03-31	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10776	13	2	2	Fête du Travail	1997-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10777	13	2	2	Ascension	1997-05-08	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10778	13	2	2	Lundi de Pentecôte	1997-05-19	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10779	13	2	2	Fête Nationale	1997-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10780	13	2	2	Assomption	1997-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10781	13	2	2	Toussaint	1997-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10782	13	2	2	Armistice	1997-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10783	13	2	2	Noël	1997-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10784	13	2	2	Nouvel An	1998-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10785	13	2	2	Lundi de Pâques	1998-04-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10786	13	2	2	Fête du Travail	1998-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10787	13	2	2	Ascension	1998-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10788	13	2	2	Lundi de Pentecôte	1998-06-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10789	13	2	2	Fête Nationale	1998-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10790	13	2	2	Assomption	1998-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10791	13	2	2	Toussaint	1998-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10792	13	2	2	Armistice	1998-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10793	13	2	2	Noël	1998-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10794	13	2	2	Nouvel An	1999-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10795	13	2	2	Lundi de Pâques	1999-04-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10796	13	2	2	Fête du Travail	1999-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10797	13	2	2	Ascension	1999-05-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10798	13	2	2	Lundi de Pentecôte	1999-05-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10799	13	2	2	Fête Nationale	1999-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10800	13	2	2	Assomption	1999-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10801	13	2	2	Toussaint	1999-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10802	13	2	2	Armistice	1999-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10803	13	2	2	Noël	1999-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10804	13	2	2	Nouvel An	2000-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10805	13	2	2	Lundi de Pâques	2000-04-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10806	13	2	2	Fête du Travail	2000-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10807	13	2	2	Ascension	2000-06-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10808	13	2	2	Lundi de Pentecôte	2000-06-12	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10809	13	2	2	Fête Nationale	2000-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10810	13	2	2	Assomption	2000-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10811	13	2	2	Toussaint	2000-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10812	13	2	2	Armistice	2000-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10813	13	2	2	Noël	2000-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10814	13	2	2	Nouvel An	2001-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10815	13	2	2	Lundi de Pâques	2001-04-16	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10816	13	2	2	Fête du Travail	2001-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10817	13	2	2	Ascension	2001-05-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10818	13	2	2	Lundi de Pentecôte	2001-06-04	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10819	13	2	2	Fête Nationale	2001-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10820	13	2	2	Assomption	2001-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10821	13	2	2	Toussaint	2001-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10822	13	2	2	Armistice	2001-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10823	13	2	2	Noël	2001-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10824	13	2	2	Nouvel An	2002-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10825	13	2	2	Lundi de Pâques	2002-04-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10826	13	2	2	Fête du Travail	2002-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10827	13	2	2	Ascension	2002-05-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10828	13	2	2	Lundi de Pentecôte	2002-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10829	13	2	2	Fête Nationale	2002-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10830	13	2	2	Assomption	2002-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10831	13	2	2	Toussaint	2002-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10832	13	2	2	Armistice	2002-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10833	13	2	2	Noël	2002-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10834	13	2	2	Nouvel An	2003-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10835	13	2	2	Lundi de Pâques	2003-04-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10836	13	2	2	Fête du Travail	2003-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10837	13	2	2	Ascension	2003-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10838	13	2	2	Lundi de Pentecôte	2003-06-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10839	13	2	2	Fête Nationale	2003-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10840	13	2	2	Assomption	2003-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10841	13	2	2	Toussaint	2003-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10842	13	2	2	Armistice	2003-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10843	13	2	2	Noël	2003-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10844	13	2	2	Nouvel An	2004-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10845	13	2	2	Lundi de Pâques	2004-04-12	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10846	13	2	2	Fête du Travail	2004-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10847	13	2	2	Ascension	2004-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10848	13	2	2	Lundi de Pentecôte	2004-05-31	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10849	13	2	2	Fête Nationale	2004-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10850	13	2	2	Assomption	2004-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10851	13	2	2	Toussaint	2004-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10852	13	2	2	Armistice	2004-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10853	13	2	2	Noël	2004-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10854	13	2	2	Nouvel An	2005-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10855	13	2	2	Lundi de Pâques	2005-03-28	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10856	13	2	2	Fête du Travail	2005-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10857	13	2	2	Ascension	2005-05-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10858	13	2	2	Lundi de Pentecôte	2005-05-16	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10859	13	2	2	Fête Nationale	2005-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10860	13	2	2	Assomption	2005-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10861	13	2	2	Toussaint	2005-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10862	13	2	2	Armistice	2005-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10863	13	2	2	Noël	2005-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10864	13	2	2	Nouvel An	2006-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10865	13	2	2	Lundi de Pâques	2006-04-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10866	13	2	2	Fête du Travail	2006-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10867	13	2	2	Ascension	2006-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10868	13	2	2	Lundi de Pentecôte	2006-06-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10869	13	2	2	Fête Nationale	2006-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10870	13	2	2	Assomption	2006-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10871	13	2	2	Toussaint	2006-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10872	13	2	2	Armistice	2006-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10873	13	2	2	Noël	2006-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10874	13	2	2	Nouvel An	2007-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10875	13	2	2	Lundi de Pâques	2007-04-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10876	13	2	2	Fête du Travail	2007-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10877	13	2	2	Ascension	2007-05-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10878	13	2	2	Lundi de Pentecôte	2007-05-28	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10879	13	2	2	Fête Nationale	2007-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10880	13	2	2	Assomption	2007-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10881	13	2	2	Toussaint	2007-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10882	13	2	2	Armistice	2007-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10883	13	2	2	Noël	2007-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10884	13	2	2	Nouvel An	2008-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10885	13	2	2	Lundi de Pâques	2008-03-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10886	13	2	2	Fête du Travail	2008-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10887	13	2	2	Ascension	2008-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10888	13	2	2	Lundi de Pentecôte	2008-05-12	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10889	13	2	2	Fête Nationale	2008-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10890	13	2	2	Assomption	2008-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10891	13	2	2	Toussaint	2008-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10892	13	2	2	Armistice	2008-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10893	13	2	2	Noël	2008-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10894	13	2	2	Nouvel An	2009-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10895	13	2	2	Lundi de Pâques	2009-04-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10896	13	2	2	Fête du Travail	2009-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10897	13	2	2	Ascension	2009-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10898	13	2	2	Lundi de Pentecôte	2009-06-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10899	13	2	2	Fête Nationale	2009-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10900	13	2	2	Assomption	2009-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10901	13	2	2	Toussaint	2009-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10902	13	2	2	Armistice	2009-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10903	13	2	2	Noël	2009-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10904	13	2	2	Nouvel An	2010-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10905	13	2	2	Lundi de Pâques	2010-04-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10906	13	2	2	Fête du Travail	2010-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10907	13	2	2	Ascension	2010-05-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10908	13	2	2	Lundi de Pentecôte	2010-05-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10909	13	2	2	Fête Nationale	2010-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10910	13	2	2	Assomption	2010-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10911	13	2	2	Toussaint	2010-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10912	13	2	2	Armistice	2010-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10913	13	2	2	Noël	2010-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10914	13	2	2	Nouvel An	2011-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10915	13	2	2	Lundi de Pâques	2011-04-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10916	13	2	2	Fête du Travail	2011-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10917	13	2	2	Ascension	2011-06-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10918	13	2	2	Lundi de Pentecôte	2011-06-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10919	13	2	2	Fête Nationale	2011-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10920	13	2	2	Assomption	2011-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10921	13	2	2	Toussaint	2011-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10922	13	2	2	Armistice	2011-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10923	13	2	2	Noël	2011-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10924	13	2	2	Nouvel An	2012-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10925	13	2	2	Lundi de Pâques	2012-04-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10926	13	2	2	Fête du Travail	2012-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10927	13	2	2	Ascension	2012-05-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10928	13	2	2	Lundi de Pentecôte	2012-05-28	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10929	13	2	2	Fête Nationale	2012-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10930	13	2	2	Assomption	2012-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10931	13	2	2	Toussaint	2012-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10932	13	2	2	Armistice	2012-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10933	13	2	2	Noël	2012-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10934	13	2	2	Nouvel An	2013-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10935	13	2	2	Lundi de Pâques	2013-04-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10936	13	2	2	Fête du Travail	2013-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10937	13	2	2	Ascension	2013-05-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10938	13	2	2	Lundi de Pentecôte	2013-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10939	13	2	2	Fête Nationale	2013-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10940	13	2	2	Assomption	2013-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10941	13	2	2	Toussaint	2013-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10942	13	2	2	Armistice	2013-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10943	13	2	2	Noël	2013-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10944	13	2	2	Nouvel An	2014-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10945	13	2	2	Lundi de Pâques	2014-04-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10946	13	2	2	Fête du Travail	2014-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10947	13	2	2	Ascension	2014-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10948	13	2	2	Lundi de Pentecôte	2014-06-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10949	13	2	2	Fête Nationale	2014-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10950	13	2	2	Assomption	2014-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10951	13	2	2	Toussaint	2014-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10952	13	2	2	Armistice	2014-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10953	13	2	2	Noël	2014-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10954	13	2	2	Nouvel An	2015-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10955	13	2	2	Lundi de Pâques	2015-04-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10956	13	2	2	Fête du Travail	2015-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10957	13	2	2	Ascension	2015-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10958	13	2	2	Lundi de Pentecôte	2015-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10959	13	2	2	Fête Nationale	2015-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10960	13	2	2	Assomption	2015-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10961	13	2	2	Toussaint	2015-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10962	13	2	2	Armistice	2015-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10963	13	2	2	Noël	2015-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10964	13	2	2	Nouvel An	2016-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10965	13	2	2	Lundi de Pâques	2016-03-28	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10966	13	2	2	Fête du Travail	2016-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10967	13	2	2	Ascension	2016-05-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10968	13	2	2	Lundi de Pentecôte	2016-05-16	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10969	13	2	2	Fête Nationale	2016-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10970	13	2	2	Assomption	2016-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10971	13	2	2	Toussaint	2016-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10972	13	2	2	Armistice	2016-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10973	13	2	2	Noël	2016-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10974	13	2	2	Nouvel An	2017-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10975	13	2	2	Lundi de Pâques	2017-04-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10976	13	2	2	Fête du Travail	2017-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10977	13	2	2	Ascension	2017-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10978	13	2	2	Lundi de Pentecôte	2017-06-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10979	13	2	2	Fête Nationale	2017-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10980	13	2	2	Assomption	2017-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10981	13	2	2	Toussaint	2017-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10982	13	2	2	Armistice	2017-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10983	13	2	2	Noël	2017-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10984	13	2	2	Nouvel An	2018-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10985	13	2	2	Lundi de Pâques	2018-04-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10986	13	2	2	Fête du Travail	2018-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10987	13	2	2	Ascension	2018-05-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10988	13	2	2	Lundi de Pentecôte	2018-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10989	13	2	2	Fête Nationale	2018-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10990	13	2	2	Assomption	2018-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10991	13	2	2	Toussaint	2018-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10992	13	2	2	Armistice	2018-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10993	13	2	2	Noël	2018-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10994	13	2	2	Nouvel An	2019-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10995	13	2	2	Lundi de Pâques	2019-04-22	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10996	13	2	2	Fête du Travail	2019-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10997	13	2	2	Ascension	2019-05-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10998	13	2	2	Lundi de Pentecôte	2019-06-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
10999	13	2	2	Fête Nationale	2019-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11000	13	2	2	Assomption	2019-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11001	13	2	2	Toussaint	2019-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11002	13	2	2	Armistice	2019-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11003	13	2	2	Noël	2019-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11004	13	2	2	Nouvel An	2020-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11005	13	2	2	Lundi de Pâques	2020-04-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11006	13	2	2	Fête du Travail	2020-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11007	13	2	2	Ascension	2020-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11008	13	2	2	Lundi de Pentecôte	2020-06-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11009	13	2	2	Fête Nationale	2020-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11010	13	2	2	Assomption	2020-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11011	13	2	2	Toussaint	2020-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11012	13	2	2	Armistice	2020-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11013	13	2	2	Noël	2020-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11014	13	2	2	Nouvel An	2021-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11015	13	2	2	Lundi de Pâques	2021-04-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11016	13	2	2	Fête du Travail	2021-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11017	13	2	2	Ascension	2021-05-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11018	13	2	2	Lundi de Pentecôte	2021-05-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11019	13	2	2	Fête Nationale	2021-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11020	13	2	2	Assomption	2021-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11021	13	2	2	Toussaint	2021-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11022	13	2	2	Armistice	2021-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11023	13	2	2	Noël	2021-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11024	13	2	2	Nouvel An	2022-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11025	13	2	2	Lundi de Pâques	2022-04-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11026	13	2	2	Fête du Travail	2022-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11027	13	2	2	Ascension	2022-05-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11028	13	2	2	Lundi de Pentecôte	2022-06-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11029	13	2	2	Fête Nationale	2022-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11030	13	2	2	Assomption	2022-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11031	13	2	2	Toussaint	2022-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11032	13	2	2	Armistice	2022-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11033	13	2	2	Noël	2022-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11034	13	2	2	Nouvel An	2023-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11035	13	2	2	Lundi de Pâques	2023-04-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11036	13	2	2	Fête du Travail	2023-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11037	13	2	2	Ascension	2023-05-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11038	13	2	2	Lundi de Pentecôte	2023-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11039	13	2	2	Fête Nationale	2023-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11040	13	2	2	Assomption	2023-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11041	13	2	2	Toussaint	2023-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11042	13	2	2	Armistice	2023-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11043	13	2	2	Noël	2023-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11044	13	2	2	Nouvel An	2024-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11045	13	2	2	Lundi de Pâques	2024-04-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11046	13	2	2	Fête du Travail	2024-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11047	13	2	2	Ascension	2024-05-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11048	13	2	2	Lundi de Pentecôte	2024-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11049	13	2	2	Fête Nationale	2024-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11050	13	2	2	Assomption	2024-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11051	13	2	2	Toussaint	2024-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11052	13	2	2	Armistice	2024-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11053	13	2	2	Noël	2024-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11054	13	2	2	Nouvel An	2025-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11055	13	2	2	Lundi de Pâques	2025-04-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11056	13	2	2	Fête du Travail	2025-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11057	13	2	2	Ascension	2025-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11058	13	2	2	Lundi de Pentecôte	2025-06-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11059	13	2	2	Fête Nationale	2025-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11060	13	2	2	Assomption	2025-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11061	13	2	2	Toussaint	2025-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11062	13	2	2	Armistice	2025-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11063	13	2	2	Noël	2025-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11064	13	2	2	Nouvel An	2026-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11065	13	2	2	Lundi de Pâques	2026-04-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11066	13	2	2	Fête du Travail	2026-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11067	13	2	2	Ascension	2026-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11068	13	2	2	Lundi de Pentecôte	2026-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11069	13	2	2	Fête Nationale	2026-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11070	13	2	2	Assomption	2026-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11071	13	2	2	Toussaint	2026-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11072	13	2	2	Armistice	2026-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11073	13	2	2	Noël	2026-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11074	13	2	2	Nouvel An	2027-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11075	13	2	2	Lundi de Pâques	2027-03-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11076	13	2	2	Fête du Travail	2027-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11077	13	2	2	Ascension	2027-06-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11078	13	2	2	Lundi de Pentecôte	2027-05-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11079	13	2	2	Fête Nationale	2027-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11080	13	2	2	Assomption	2027-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11081	13	2	2	Toussaint	2027-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11082	13	2	2	Armistice	2027-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11083	13	2	2	Noël	2027-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11084	13	2	2	Nouvel An	2028-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11085	13	2	2	Lundi de Pâques	2028-04-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11086	13	2	2	Fête du Travail	2028-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11087	13	2	2	Ascension	2028-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11088	13	2	2	Lundi de Pentecôte	2028-06-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11089	13	2	2	Fête Nationale	2028-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11090	13	2	2	Assomption	2028-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11091	13	2	2	Toussaint	2028-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11092	13	2	2	Armistice	2028-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11093	13	2	2	Noël	2028-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11094	13	2	2	Nouvel An	2029-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11095	13	2	2	Lundi de Pâques	2029-04-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11096	13	2	2	Fête du Travail	2029-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11097	13	2	2	Ascension	2029-05-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11098	13	2	2	Lundi de Pentecôte	2029-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11099	13	2	2	Fête Nationale	2029-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11100	13	2	2	Assomption	2029-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11101	13	2	2	Toussaint	2029-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11102	13	2	2	Armistice	2029-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11103	13	2	2	Noël	2029-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11104	13	2	2	Nouvel An	2030-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11105	13	2	2	Lundi de Pâques	2030-04-22	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11106	13	2	2	Fête du Travail	2030-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11107	13	2	2	Ascension	2030-05-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11108	13	2	2	Lundi de Pentecôte	2030-06-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11109	13	2	2	Fête Nationale	2030-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11110	13	2	2	Assomption	2030-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11111	13	2	2	Toussaint	2030-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11112	13	2	2	Armistice	2030-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11113	13	2	2	Noël	2030-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11114	13	2	2	Nouvel An	2031-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11115	13	2	2	Lundi de Pâques	2031-04-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11116	13	2	2	Fête du Travail	2031-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11117	13	2	2	Ascension	2031-05-22	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11118	13	2	2	Lundi de Pentecôte	2031-06-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11119	13	2	2	Fête Nationale	2031-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11120	13	2	2	Assomption	2031-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11121	13	2	2	Toussaint	2031-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11122	13	2	2	Armistice	2031-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11123	13	2	2	Noël	2031-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11124	13	2	2	Nouvel An	2032-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11125	13	2	2	Lundi de Pâques	2032-03-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11126	13	2	2	Fête du Travail	2032-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11127	13	2	2	Ascension	2032-05-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11128	13	2	2	Lundi de Pentecôte	2032-05-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11129	13	2	2	Fête Nationale	2032-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11130	13	2	2	Assomption	2032-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11131	13	2	2	Toussaint	2032-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11132	13	2	2	Armistice	2032-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11133	13	2	2	Noël	2032-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11134	13	2	2	Nouvel An	2033-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11135	13	2	2	Lundi de Pâques	2033-04-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11136	13	2	2	Fête du Travail	2033-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11137	13	2	2	Ascension	2033-05-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11138	13	2	2	Lundi de Pentecôte	2033-06-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11139	13	2	2	Fête Nationale	2033-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11140	13	2	2	Assomption	2033-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11141	13	2	2	Toussaint	2033-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11142	13	2	2	Armistice	2033-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11143	13	2	2	Noël	2033-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11144	13	2	2	Nouvel An	2034-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11145	13	2	2	Lundi de Paques	2034-04-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11146	13	2	2	Fete du Travail	2034-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11147	13	2	2	Ascension	2034-05-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11148	13	2	2	Lundi de Pentecote	2034-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11149	13	2	2	Fete de la Communaute flamande	2034-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11150	13	2	2	Fete Nationale	2034-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11151	13	2	2	Assomption	2034-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11152	13	2	2	Fete de la Communaute francaise	2034-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11153	13	2	2	Toussaint	2034-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11154	13	2	2	Jour des Morts	2034-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11155	13	2	2	Armistice	2034-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11156	13	2	2	Fete du Roi / Communaute germanophone	2034-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11157	13	2	2	Noel	2034-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11158	13	2	2	Nouvel An	2035-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11159	13	2	2	Lundi de Paques	2035-03-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11160	13	2	2	Fete du Travail	2035-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11161	13	2	2	Ascension	2035-05-03	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11162	13	2	2	Lundi de Pentecote	2035-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11163	13	2	2	Fete de la Communaute flamande	2035-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11164	13	2	2	Fete Nationale	2035-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11165	13	2	2	Assomption	2035-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11166	13	2	2	Fete de la Communaute francaise	2035-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11167	13	2	2	Toussaint	2035-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11168	13	2	2	Jour des Morts	2035-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11169	13	2	2	Armistice	2035-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11170	13	2	2	Fete du Roi / Communaute germanophone	2035-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11171	13	2	2	Noel	2035-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11172	13	2	2	Nouvel An	2036-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11173	13	2	2	Lundi de Paques	2036-04-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11174	13	2	2	Fete du Travail	2036-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11175	13	2	2	Ascension	2036-05-22	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11176	13	2	2	Lundi de Pentecote	2036-06-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11177	13	2	2	Fete de la Communaute flamande	2036-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11178	13	2	2	Fete Nationale	2036-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11179	13	2	2	Assomption	2036-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11180	13	2	2	Fete de la Communaute francaise	2036-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11181	13	2	2	Toussaint	2036-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11182	13	2	2	Jour des Morts	2036-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11183	13	2	2	Armistice	2036-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11184	13	2	2	Fete du Roi / Communaute germanophone	2036-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11185	13	2	2	Noel	2036-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11186	13	2	2	Nouvel An	2037-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11187	13	2	2	Lundi de Paques	2037-04-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11188	13	2	2	Fete du Travail	2037-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11189	13	2	2	Ascension	2037-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11190	13	2	2	Lundi de Pentecote	2037-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11191	13	2	2	Fete de la Communaute flamande	2037-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11192	13	2	2	Fete Nationale	2037-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11193	13	2	2	Assomption	2037-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11194	13	2	2	Fete de la Communaute francaise	2037-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11195	13	2	2	Toussaint	2037-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11196	13	2	2	Jour des Morts	2037-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11197	13	2	2	Armistice	2037-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11198	13	2	2	Fete du Roi / Communaute germanophone	2037-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11199	13	2	2	Noel	2037-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11200	13	2	2	Nouvel An	2038-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11201	13	2	2	Lundi de Paques	2038-04-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11202	13	2	2	Fete du Travail	2038-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11203	13	2	2	Ascension	2038-06-03	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11204	13	2	2	Lundi de Pentecote	2038-06-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11205	13	2	2	Fete de la Communaute flamande	2038-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11206	13	2	2	Fete Nationale	2038-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11207	13	2	2	Assomption	2038-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11208	13	2	2	Fete de la Communaute francaise	2038-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11209	13	2	2	Toussaint	2038-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11210	13	2	2	Jour des Morts	2038-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11211	13	2	2	Armistice	2038-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11212	13	2	2	Fete du Roi / Communaute germanophone	2038-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11213	13	2	2	Noel	2038-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11214	13	2	2	Nouvel An	2039-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11215	13	2	2	Lundi de Paques	2039-04-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11216	13	2	2	Fete du Travail	2039-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11217	13	2	2	Ascension	2039-05-19	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11218	13	2	2	Lundi de Pentecote	2039-05-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11219	13	2	2	Fete de la Communaute flamande	2039-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11220	13	2	2	Fete Nationale	2039-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11221	13	2	2	Assomption	2039-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11222	13	2	2	Fete de la Communaute francaise	2039-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11223	13	2	2	Toussaint	2039-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11224	13	2	2	Jour des Morts	2039-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11225	13	2	2	Armistice	2039-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11226	13	2	2	Fete du Roi / Communaute germanophone	2039-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11227	13	2	2	Noel	2039-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11228	13	2	2	Nouvel An	2040-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11229	13	2	2	Lundi de Paques	2040-04-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11230	13	2	2	Fete du Travail	2040-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11231	13	2	2	Ascension	2040-05-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11232	13	2	2	Lundi de Pentecote	2040-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11233	13	2	2	Fete de la Communaute flamande	2040-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11234	13	2	2	Fete Nationale	2040-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11235	13	2	2	Assomption	2040-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11236	13	2	2	Fete de la Communaute francaise	2040-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11237	13	2	2	Toussaint	2040-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11238	13	2	2	Jour des Morts	2040-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11239	13	2	2	Armistice	2040-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11240	13	2	2	Fete du Roi / Communaute germanophone	2040-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11241	13	2	2	Noel	2040-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11242	13	2	2	Nouvel An	2041-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11243	13	2	2	Lundi de Paques	2041-04-22	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11244	13	2	2	Fete du Travail	2041-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11245	13	2	2	Ascension	2041-05-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11246	13	2	2	Lundi de Pentecote	2041-06-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11247	13	2	2	Fete de la Communaute flamande	2041-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11248	13	2	2	Fete Nationale	2041-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11249	13	2	2	Assomption	2041-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11250	13	2	2	Fete de la Communaute francaise	2041-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11251	13	2	2	Toussaint	2041-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11252	13	2	2	Jour des Morts	2041-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11253	13	2	2	Armistice	2041-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11254	13	2	2	Fete du Roi / Communaute germanophone	2041-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11255	13	2	2	Noel	2041-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11256	13	2	2	Nouvel An	2042-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11257	13	2	2	Lundi de Paques	2042-04-07	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11258	13	2	2	Fete du Travail	2042-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11259	13	2	2	Ascension	2042-05-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11260	13	2	2	Lundi de Pentecote	2042-05-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11261	13	2	2	Fete de la Communaute flamande	2042-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11262	13	2	2	Fete Nationale	2042-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11263	13	2	2	Assomption	2042-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11264	13	2	2	Fete de la Communaute francaise	2042-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11265	13	2	2	Toussaint	2042-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11266	13	2	2	Jour des Morts	2042-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11267	13	2	2	Armistice	2042-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11268	13	2	2	Fete du Roi / Communaute germanophone	2042-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11269	13	2	2	Noel	2042-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11270	13	2	2	Nouvel An	2043-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11271	13	2	2	Lundi de Paques	2043-03-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11272	13	2	2	Fete du Travail	2043-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11273	13	2	2	Ascension	2043-05-07	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11274	13	2	2	Lundi de Pentecote	2043-05-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11275	13	2	2	Fete de la Communaute flamande	2043-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11276	13	2	2	Fete Nationale	2043-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11277	13	2	2	Assomption	2043-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11278	13	2	2	Fete de la Communaute francaise	2043-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11279	13	2	2	Toussaint	2043-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11280	13	2	2	Jour des Morts	2043-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11281	13	2	2	Armistice	2043-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11282	13	2	2	Fete du Roi / Communaute germanophone	2043-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11283	13	2	2	Noel	2043-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11284	13	2	2	Nouvel An	2044-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11285	13	2	2	Lundi de Paques	2044-04-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11286	13	2	2	Fete du Travail	2044-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11287	13	2	2	Ascension	2044-05-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11288	13	2	2	Lundi de Pentecote	2044-06-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11289	13	2	2	Fete de la Communaute flamande	2044-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11290	13	2	2	Fete Nationale	2044-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11291	13	2	2	Assomption	2044-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11292	13	2	2	Fete de la Communaute francaise	2044-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11293	13	2	2	Toussaint	2044-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11294	13	2	2	Jour des Morts	2044-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11295	13	2	2	Armistice	2044-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11296	13	2	2	Fete du Roi / Communaute germanophone	2044-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11297	13	2	2	Noel	2044-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11298	13	2	2	Nouvel An	2045-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11299	13	2	2	Lundi de Paques	2045-04-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11300	13	2	2	Fete du Travail	2045-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11301	13	2	2	Ascension	2045-05-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11302	13	2	2	Lundi de Pentecote	2045-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11303	13	2	2	Fete de la Communaute flamande	2045-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11304	13	2	2	Fete Nationale	2045-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11305	13	2	2	Assomption	2045-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11306	13	2	2	Fete de la Communaute francaise	2045-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11307	13	2	2	Toussaint	2045-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11308	13	2	2	Jour des Morts	2045-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11309	13	2	2	Armistice	2045-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11310	13	2	2	Fete du Roi / Communaute germanophone	2045-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11311	13	2	2	Noel	2045-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11312	13	2	2	Nouvel An	2046-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11313	13	2	2	Lundi de Paques	2046-03-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11314	13	2	2	Fete du Travail	2046-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11315	13	2	2	Ascension	2046-05-03	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11316	13	2	2	Lundi de Pentecote	2046-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11317	13	2	2	Fete de la Communaute flamande	2046-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11318	13	2	2	Fete Nationale	2046-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11319	13	2	2	Assomption	2046-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11320	13	2	2	Fete de la Communaute francaise	2046-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11321	13	2	2	Toussaint	2046-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11322	13	2	2	Jour des Morts	2046-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11323	13	2	2	Armistice	2046-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11324	13	2	2	Fete du Roi / Communaute germanophone	2046-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11325	13	2	2	Noel	2046-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11326	13	2	2	Nouvel An	2047-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11327	13	2	2	Lundi de Paques	2047-04-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11328	13	2	2	Fete du Travail	2047-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11329	13	2	2	Ascension	2047-05-23	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11330	13	2	2	Lundi de Pentecote	2047-06-03	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11331	13	2	2	Fete de la Communaute flamande	2047-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11332	13	2	2	Fete Nationale	2047-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11333	13	2	2	Assomption	2047-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11334	13	2	2	Fete de la Communaute francaise	2047-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11335	13	2	2	Toussaint	2047-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11336	13	2	2	Jour des Morts	2047-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11337	13	2	2	Armistice	2047-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11338	13	2	2	Fete du Roi / Communaute germanophone	2047-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11339	13	2	2	Noel	2047-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11340	13	2	2	Nouvel An	2048-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11341	13	2	2	Lundi de Paques	2048-04-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11342	13	2	2	Fete du Travail	2048-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11343	13	2	2	Ascension	2048-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11344	13	2	2	Lundi de Pentecote	2048-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11345	13	2	2	Fete de la Communaute flamande	2048-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11346	13	2	2	Fete Nationale	2048-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11347	13	2	2	Assomption	2048-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11348	13	2	2	Fete de la Communaute francaise	2048-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11349	13	2	2	Toussaint	2048-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11350	13	2	2	Jour des Morts	2048-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11351	13	2	2	Armistice	2048-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11352	13	2	2	Fete du Roi / Communaute germanophone	2048-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11353	13	2	2	Noel	2048-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11354	13	2	2	Nouvel An	2049-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11355	13	2	2	Lundi de Paques	2049-04-19	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11356	13	2	2	Fete du Travail	2049-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11357	13	2	2	Ascension	2049-05-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11358	13	2	2	Lundi de Pentecote	2049-06-07	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11359	13	2	2	Fete de la Communaute flamande	2049-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11360	13	2	2	Fete Nationale	2049-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11361	13	2	2	Assomption	2049-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11362	13	2	2	Fete de la Communaute francaise	2049-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11363	13	2	2	Toussaint	2049-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11364	13	2	2	Jour des Morts	2049-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11365	13	2	2	Armistice	2049-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11366	13	2	2	Fete du Roi / Communaute germanophone	2049-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11367	13	2	2	Noel	2049-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11368	13	2	2	Nouvel An	2050-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11369	13	2	2	Lundi de Paques	2050-04-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11370	13	2	2	Fete du Travail	2050-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11371	13	2	2	Ascension	2050-05-19	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11372	13	2	2	Lundi de Pentecote	2050-05-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11373	13	2	2	Fete de la Communaute flamande	2050-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11374	13	2	2	Fete Nationale	2050-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11375	13	2	2	Assomption	2050-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11376	13	2	2	Fete de la Communaute francaise	2050-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11377	13	2	2	Toussaint	2050-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11378	13	2	2	Jour des Morts	2050-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11379	13	2	2	Armistice	2050-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11380	13	2	2	Fete du Roi / Communaute germanophone	2050-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11381	13	2	2	Noel	2050-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11382	31	2	2	Nouvel An	1991-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11383	31	2	2	Lundi de Pâques	1991-04-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11384	31	2	2	Fête du Travail	1991-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11385	31	2	2	Ascension	1991-05-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11386	31	2	2	Lundi de Pentecôte	1991-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11387	31	2	2	Fête Nationale	1991-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11388	31	2	2	Assomption	1991-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11389	31	2	2	Toussaint	1991-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11390	31	2	2	Armistice	1991-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11391	31	2	2	Noël	1991-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11392	31	2	2	Nouvel An	1992-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11393	31	2	2	Lundi de Pâques	1992-04-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11394	31	2	2	Fête du Travail	1992-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11395	31	2	2	Ascension	1992-05-28	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11396	31	2	2	Lundi de Pentecôte	1992-06-08	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11397	31	2	2	Fête Nationale	1992-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11398	31	2	2	Assomption	1992-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11399	31	2	2	Toussaint	1992-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11400	31	2	2	Armistice	1992-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11401	31	2	2	Noël	1992-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11402	31	2	2	Nouvel An	1993-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11403	31	2	2	Lundi de Pâques	1993-04-12	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11404	31	2	2	Fête du Travail	1993-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11405	31	2	2	Ascension	1993-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11406	31	2	2	Lundi de Pentecôte	1993-05-31	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11407	31	2	2	Fête Nationale	1993-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11408	31	2	2	Assomption	1993-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11409	31	2	2	Toussaint	1993-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11410	31	2	2	Armistice	1993-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11411	31	2	2	Noël	1993-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11412	31	2	2	Nouvel An	1994-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11413	31	2	2	Lundi de Pâques	1994-04-04	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11414	31	2	2	Fête du Travail	1994-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11415	31	2	2	Ascension	1994-05-12	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11416	31	2	2	Lundi de Pentecôte	1994-05-23	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11417	31	2	2	Fête Nationale	1994-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11418	31	2	2	Assomption	1994-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11419	31	2	2	Toussaint	1994-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11420	31	2	2	Armistice	1994-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11421	31	2	2	Noël	1994-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11422	31	2	2	Nouvel An	1995-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11423	31	2	2	Lundi de Pâques	1995-04-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11424	31	2	2	Fête du Travail	1995-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11425	31	2	2	Ascension	1995-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11426	31	2	2	Lundi de Pentecôte	1995-06-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11427	31	2	2	Fête Nationale	1995-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11428	31	2	2	Assomption	1995-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11429	31	2	2	Toussaint	1995-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11430	31	2	2	Armistice	1995-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11431	31	2	2	Noël	1995-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11432	31	2	2	Nouvel An	1996-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11433	31	2	2	Lundi de Pâques	1996-04-08	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11434	31	2	2	Fête du Travail	1996-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11435	31	2	2	Ascension	1996-05-16	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11436	31	2	2	Lundi de Pentecôte	1996-05-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11437	31	2	2	Fête Nationale	1996-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11438	31	2	2	Assomption	1996-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11439	31	2	2	Toussaint	1996-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11440	31	2	2	Armistice	1996-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11441	31	2	2	Noël	1996-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11442	31	2	2	Nouvel An	1997-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11443	31	2	2	Lundi de Pâques	1997-03-31	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11444	31	2	2	Fête du Travail	1997-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11445	31	2	2	Ascension	1997-05-08	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11446	31	2	2	Lundi de Pentecôte	1997-05-19	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11447	31	2	2	Fête Nationale	1997-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11448	31	2	2	Assomption	1997-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11449	31	2	2	Toussaint	1997-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11450	31	2	2	Armistice	1997-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11451	31	2	2	Noël	1997-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11452	31	2	2	Nouvel An	1998-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11453	31	2	2	Lundi de Pâques	1998-04-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11454	31	2	2	Fête du Travail	1998-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11455	31	2	2	Ascension	1998-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11456	31	2	2	Lundi de Pentecôte	1998-06-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11457	31	2	2	Fête Nationale	1998-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11458	31	2	2	Assomption	1998-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11459	31	2	2	Toussaint	1998-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11460	31	2	2	Armistice	1998-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11461	31	2	2	Noël	1998-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11462	31	2	2	Nouvel An	1999-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11463	31	2	2	Lundi de Pâques	1999-04-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11464	31	2	2	Fête du Travail	1999-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11465	31	2	2	Ascension	1999-05-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11466	31	2	2	Lundi de Pentecôte	1999-05-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11467	31	2	2	Fête Nationale	1999-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11468	31	2	2	Assomption	1999-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11469	31	2	2	Toussaint	1999-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11470	31	2	2	Armistice	1999-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11471	31	2	2	Noël	1999-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11472	31	2	2	Nouvel An	2000-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11473	31	2	2	Lundi de Pâques	2000-04-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11474	31	2	2	Fête du Travail	2000-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11475	31	2	2	Ascension	2000-06-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11476	31	2	2	Lundi de Pentecôte	2000-06-12	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11477	31	2	2	Fête Nationale	2000-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11478	31	2	2	Assomption	2000-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11479	31	2	2	Toussaint	2000-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11480	31	2	2	Armistice	2000-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11481	31	2	2	Noël	2000-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11482	31	2	2	Nouvel An	2001-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11483	31	2	2	Lundi de Pâques	2001-04-16	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11484	31	2	2	Fête du Travail	2001-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11485	31	2	2	Ascension	2001-05-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11486	31	2	2	Lundi de Pentecôte	2001-06-04	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11487	31	2	2	Fête Nationale	2001-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11488	31	2	2	Assomption	2001-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11489	31	2	2	Toussaint	2001-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11490	31	2	2	Armistice	2001-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11491	31	2	2	Noël	2001-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11492	31	2	2	Nouvel An	2002-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11493	31	2	2	Lundi de Pâques	2002-04-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11494	31	2	2	Fête du Travail	2002-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11495	31	2	2	Ascension	2002-05-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11496	31	2	2	Lundi de Pentecôte	2002-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11497	31	2	2	Fête Nationale	2002-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11498	31	2	2	Assomption	2002-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11499	31	2	2	Toussaint	2002-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11500	31	2	2	Armistice	2002-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11501	31	2	2	Noël	2002-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11502	31	2	2	Nouvel An	2003-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11503	31	2	2	Lundi de Pâques	2003-04-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11504	31	2	2	Fête du Travail	2003-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11505	31	2	2	Ascension	2003-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11506	31	2	2	Lundi de Pentecôte	2003-06-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11507	31	2	2	Fête Nationale	2003-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11508	31	2	2	Assomption	2003-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11509	31	2	2	Toussaint	2003-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11510	31	2	2	Armistice	2003-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11511	31	2	2	Noël	2003-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11512	31	2	2	Nouvel An	2004-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11513	31	2	2	Lundi de Pâques	2004-04-12	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11514	31	2	2	Fête du Travail	2004-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11515	31	2	2	Ascension	2004-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11516	31	2	2	Lundi de Pentecôte	2004-05-31	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11517	31	2	2	Fête Nationale	2004-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11518	31	2	2	Assomption	2004-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11519	31	2	2	Toussaint	2004-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11520	31	2	2	Armistice	2004-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11521	31	2	2	Noël	2004-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11522	31	2	2	Nouvel An	2005-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11523	31	2	2	Lundi de Pâques	2005-03-28	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11524	31	2	2	Fête du Travail	2005-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11525	31	2	2	Ascension	2005-05-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11526	31	2	2	Lundi de Pentecôte	2005-05-16	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11527	31	2	2	Fête Nationale	2005-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11528	31	2	2	Assomption	2005-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11529	31	2	2	Toussaint	2005-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11530	31	2	2	Armistice	2005-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11531	31	2	2	Noël	2005-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11532	31	2	2	Nouvel An	2006-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11533	31	2	2	Lundi de Pâques	2006-04-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11534	31	2	2	Fête du Travail	2006-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11535	31	2	2	Ascension	2006-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11536	31	2	2	Lundi de Pentecôte	2006-06-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11537	31	2	2	Fête Nationale	2006-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11538	31	2	2	Assomption	2006-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11539	31	2	2	Toussaint	2006-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11540	31	2	2	Armistice	2006-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11541	31	2	2	Noël	2006-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11542	31	2	2	Nouvel An	2007-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11543	31	2	2	Lundi de Pâques	2007-04-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11544	31	2	2	Fête du Travail	2007-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11545	31	2	2	Ascension	2007-05-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11546	31	2	2	Lundi de Pentecôte	2007-05-28	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11547	31	2	2	Fête Nationale	2007-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11548	31	2	2	Assomption	2007-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11549	31	2	2	Toussaint	2007-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11550	31	2	2	Armistice	2007-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11551	31	2	2	Noël	2007-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11552	31	2	2	Nouvel An	2008-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11553	31	2	2	Lundi de Pâques	2008-03-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11554	31	2	2	Fête du Travail	2008-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11555	31	2	2	Ascension	2008-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11556	31	2	2	Lundi de Pentecôte	2008-05-12	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11557	31	2	2	Fête Nationale	2008-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11558	31	2	2	Assomption	2008-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11559	31	2	2	Toussaint	2008-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11560	31	2	2	Armistice	2008-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11561	31	2	2	Noël	2008-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11562	31	2	2	Nouvel An	2009-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11563	31	2	2	Lundi de Pâques	2009-04-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11564	31	2	2	Fête du Travail	2009-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11565	31	2	2	Ascension	2009-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11566	31	2	2	Lundi de Pentecôte	2009-06-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11567	31	2	2	Fête Nationale	2009-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11568	31	2	2	Assomption	2009-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11569	31	2	2	Toussaint	2009-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11570	31	2	2	Armistice	2009-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11571	31	2	2	Noël	2009-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11572	31	2	2	Nouvel An	2010-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11573	31	2	2	Lundi de Pâques	2010-04-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11574	31	2	2	Fête du Travail	2010-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11575	31	2	2	Ascension	2010-05-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11576	31	2	2	Lundi de Pentecôte	2010-05-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11577	31	2	2	Fête Nationale	2010-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11578	31	2	2	Assomption	2010-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11579	31	2	2	Toussaint	2010-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11580	31	2	2	Armistice	2010-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11581	31	2	2	Noël	2010-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11582	31	2	2	Nouvel An	2011-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11583	31	2	2	Lundi de Pâques	2011-04-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11584	31	2	2	Fête du Travail	2011-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11585	31	2	2	Ascension	2011-06-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11586	31	2	2	Lundi de Pentecôte	2011-06-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11587	31	2	2	Fête Nationale	2011-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11588	31	2	2	Assomption	2011-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11589	31	2	2	Toussaint	2011-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11590	31	2	2	Armistice	2011-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11591	31	2	2	Noël	2011-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11592	31	2	2	Nouvel An	2012-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11593	31	2	2	Lundi de Pâques	2012-04-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11594	31	2	2	Fête du Travail	2012-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11595	31	2	2	Ascension	2012-05-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11596	31	2	2	Lundi de Pentecôte	2012-05-28	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11597	31	2	2	Fête Nationale	2012-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11598	31	2	2	Assomption	2012-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11599	31	2	2	Toussaint	2012-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11600	31	2	2	Armistice	2012-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11601	31	2	2	Noël	2012-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11602	31	2	2	Nouvel An	2013-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11603	31	2	2	Lundi de Pâques	2013-04-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11604	31	2	2	Fête du Travail	2013-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11605	31	2	2	Ascension	2013-05-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11606	31	2	2	Lundi de Pentecôte	2013-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11607	31	2	2	Fête Nationale	2013-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11608	31	2	2	Assomption	2013-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11609	31	2	2	Toussaint	2013-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11610	31	2	2	Armistice	2013-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11611	31	2	2	Noël	2013-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11612	31	2	2	Nouvel An	2014-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11613	31	2	2	Lundi de Pâques	2014-04-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11614	31	2	2	Fête du Travail	2014-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11615	31	2	2	Ascension	2014-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11616	31	2	2	Lundi de Pentecôte	2014-06-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11617	31	2	2	Fête Nationale	2014-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11618	31	2	2	Assomption	2014-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11619	31	2	2	Toussaint	2014-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11620	31	2	2	Armistice	2014-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11621	31	2	2	Noël	2014-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11622	31	2	2	Nouvel An	2015-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11623	31	2	2	Lundi de Pâques	2015-04-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11624	31	2	2	Fête du Travail	2015-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11625	31	2	2	Ascension	2015-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11626	31	2	2	Lundi de Pentecôte	2015-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11627	31	2	2	Fête Nationale	2015-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11628	31	2	2	Assomption	2015-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11629	31	2	2	Toussaint	2015-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11630	31	2	2	Armistice	2015-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11631	31	2	2	Noël	2015-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11632	31	2	2	Nouvel An	2016-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11633	31	2	2	Lundi de Pâques	2016-03-28	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11634	31	2	2	Fête du Travail	2016-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11635	31	2	2	Ascension	2016-05-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11636	31	2	2	Lundi de Pentecôte	2016-05-16	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11637	31	2	2	Fête Nationale	2016-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11638	31	2	2	Assomption	2016-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11639	31	2	2	Toussaint	2016-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11640	31	2	2	Armistice	2016-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11641	31	2	2	Noël	2016-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11642	31	2	2	Nouvel An	2017-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11643	31	2	2	Lundi de Pâques	2017-04-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11644	31	2	2	Fête du Travail	2017-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11645	31	2	2	Ascension	2017-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11646	31	2	2	Lundi de Pentecôte	2017-06-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11647	31	2	2	Fête Nationale	2017-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11648	31	2	2	Assomption	2017-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11649	31	2	2	Toussaint	2017-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11650	31	2	2	Armistice	2017-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11651	31	2	2	Noël	2017-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11652	31	2	2	Nouvel An	2018-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11653	31	2	2	Lundi de Pâques	2018-04-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11654	31	2	2	Fête du Travail	2018-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11655	31	2	2	Ascension	2018-05-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11656	31	2	2	Lundi de Pentecôte	2018-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11657	31	2	2	Fête Nationale	2018-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11658	31	2	2	Assomption	2018-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11659	31	2	2	Toussaint	2018-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11660	31	2	2	Armistice	2018-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11661	31	2	2	Noël	2018-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11662	31	2	2	Nouvel An	2019-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11663	31	2	2	Lundi de Pâques	2019-04-22	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11664	31	2	2	Fête du Travail	2019-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11665	31	2	2	Ascension	2019-05-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11666	31	2	2	Lundi de Pentecôte	2019-06-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11667	31	2	2	Fête Nationale	2019-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11668	31	2	2	Assomption	2019-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11669	31	2	2	Toussaint	2019-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11670	31	2	2	Armistice	2019-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11671	31	2	2	Noël	2019-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11672	31	2	2	Nouvel An	2020-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11673	31	2	2	Lundi de Pâques	2020-04-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11674	31	2	2	Fête du Travail	2020-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11675	31	2	2	Ascension	2020-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11676	31	2	2	Lundi de Pentecôte	2020-06-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11677	31	2	2	Fête Nationale	2020-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11678	31	2	2	Assomption	2020-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11679	31	2	2	Toussaint	2020-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11680	31	2	2	Armistice	2020-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11681	31	2	2	Noël	2020-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11682	31	2	2	Nouvel An	2021-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11683	31	2	2	Lundi de Pâques	2021-04-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11684	31	2	2	Fête du Travail	2021-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11685	31	2	2	Ascension	2021-05-13	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11686	31	2	2	Lundi de Pentecôte	2021-05-24	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11687	31	2	2	Fête Nationale	2021-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11688	31	2	2	Assomption	2021-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11689	31	2	2	Toussaint	2021-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11690	31	2	2	Armistice	2021-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11691	31	2	2	Noël	2021-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11692	31	2	2	Nouvel An	2022-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11693	31	2	2	Lundi de Pâques	2022-04-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11694	31	2	2	Fête du Travail	2022-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11695	31	2	2	Ascension	2022-05-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11696	31	2	2	Lundi de Pentecôte	2022-06-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11697	31	2	2	Fête Nationale	2022-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11698	31	2	2	Assomption	2022-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11699	31	2	2	Toussaint	2022-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11700	31	2	2	Armistice	2022-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11701	31	2	2	Noël	2022-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11702	31	2	2	Nouvel An	2023-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11703	31	2	2	Lundi de Pâques	2023-04-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11704	31	2	2	Fête du Travail	2023-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11705	31	2	2	Ascension	2023-05-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11706	31	2	2	Lundi de Pentecôte	2023-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11707	31	2	2	Fête Nationale	2023-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11708	31	2	2	Assomption	2023-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11709	31	2	2	Toussaint	2023-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11710	31	2	2	Armistice	2023-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11711	31	2	2	Noël	2023-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11712	31	2	2	Nouvel An	2024-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11713	31	2	2	Lundi de Pâques	2024-04-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11714	31	2	2	Fête du Travail	2024-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11715	31	2	2	Ascension	2024-05-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11716	31	2	2	Lundi de Pentecôte	2024-05-20	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11717	31	2	2	Fête Nationale	2024-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11718	31	2	2	Assomption	2024-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11719	31	2	2	Toussaint	2024-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11720	31	2	2	Armistice	2024-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11721	31	2	2	Noël	2024-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11722	31	2	2	Nouvel An	2025-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11723	31	2	2	Lundi de Pâques	2025-04-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11724	31	2	2	Fête du Travail	2025-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11725	31	2	2	Ascension	2025-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11726	31	2	2	Lundi de Pentecôte	2025-06-09	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11727	31	2	2	Fête Nationale	2025-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11728	31	2	2	Assomption	2025-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11729	31	2	2	Toussaint	2025-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11730	31	2	2	Armistice	2025-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11731	31	2	2	Noël	2025-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11732	31	2	2	Nouvel An	2026-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11733	31	2	2	Lundi de Pâques	2026-04-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11734	31	2	2	Fête du Travail	2026-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11735	31	2	2	Ascension	2026-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11736	31	2	2	Lundi de Pentecôte	2026-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11737	31	2	2	Fête Nationale	2026-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11738	31	2	2	Assomption	2026-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11739	31	2	2	Toussaint	2026-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11740	31	2	2	Armistice	2026-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11741	31	2	2	Noël	2026-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11742	31	2	2	Nouvel An	2027-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11743	31	2	2	Lundi de Pâques	2027-03-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11744	31	2	2	Fête du Travail	2027-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11745	31	2	2	Ascension	2027-06-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11746	31	2	2	Lundi de Pentecôte	2027-05-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11747	31	2	2	Fête Nationale	2027-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11748	31	2	2	Assomption	2027-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11749	31	2	2	Toussaint	2027-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11750	31	2	2	Armistice	2027-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11751	31	2	2	Noël	2027-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11752	31	2	2	Nouvel An	2028-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11753	31	2	2	Lundi de Pâques	2028-04-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11754	31	2	2	Fête du Travail	2028-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11755	31	2	2	Ascension	2028-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11756	31	2	2	Lundi de Pentecôte	2028-06-05	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11757	31	2	2	Fête Nationale	2028-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11758	31	2	2	Assomption	2028-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11759	31	2	2	Toussaint	2028-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11760	31	2	2	Armistice	2028-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11761	31	2	2	Noël	2028-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11762	31	2	2	Nouvel An	2029-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11763	31	2	2	Lundi de Pâques	2029-04-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11764	31	2	2	Fête du Travail	2029-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11765	31	2	2	Ascension	2029-05-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11766	31	2	2	Lundi de Pentecôte	2029-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11767	31	2	2	Fête Nationale	2029-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11768	31	2	2	Assomption	2029-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11769	31	2	2	Toussaint	2029-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11770	31	2	2	Armistice	2029-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11771	31	2	2	Noël	2029-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11772	31	2	2	Nouvel An	2030-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11773	31	2	2	Lundi de Pâques	2030-04-22	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11774	31	2	2	Fête du Travail	2030-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11775	31	2	2	Ascension	2030-05-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11776	31	2	2	Lundi de Pentecôte	2030-06-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11777	31	2	2	Fête Nationale	2030-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11778	31	2	2	Assomption	2030-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11779	31	2	2	Toussaint	2030-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11780	31	2	2	Armistice	2030-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11781	31	2	2	Noël	2030-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11782	31	2	2	Nouvel An	2031-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11783	31	2	2	Lundi de Pâques	2031-04-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11784	31	2	2	Fête du Travail	2031-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11785	31	2	2	Ascension	2031-05-22	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11786	31	2	2	Lundi de Pentecôte	2031-06-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11787	31	2	2	Fête Nationale	2031-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11788	31	2	2	Assomption	2031-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11789	31	2	2	Toussaint	2031-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11790	31	2	2	Armistice	2031-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11791	31	2	2	Noël	2031-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11792	31	2	2	Nouvel An	2032-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11793	31	2	2	Lundi de Pâques	2032-03-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11794	31	2	2	Fête du Travail	2032-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11795	31	2	2	Ascension	2032-05-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11796	31	2	2	Lundi de Pentecôte	2032-05-17	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11797	31	2	2	Fête Nationale	2032-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11798	31	2	2	Assomption	2032-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11799	31	2	2	Toussaint	2032-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11800	31	2	2	Armistice	2032-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11801	31	2	2	Noël	2032-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11802	31	2	2	Nouvel An	2033-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11803	31	2	2	Lundi de Pâques	2033-04-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11804	31	2	2	Fête du Travail	2033-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11805	31	2	2	Ascension	2033-05-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11806	31	2	2	Lundi de Pentecôte	2033-06-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11807	31	2	2	Fête Nationale	2033-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11808	31	2	2	Assomption	2033-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11809	31	2	2	Toussaint	2033-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11810	31	2	2	Armistice	2033-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11811	31	2	2	Noël	2033-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11812	31	2	2	Nouvel An	2034-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11813	31	2	2	Lundi de Paques	2034-04-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11814	31	2	2	Fete du Travail	2034-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11815	31	2	2	Ascension	2034-05-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11816	31	2	2	Lundi de Pentecote	2034-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11817	31	2	2	Fete de la Communaute flamande	2034-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11818	31	2	2	Fete Nationale	2034-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11819	31	2	2	Assomption	2034-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11820	31	2	2	Fete de la Communaute francaise	2034-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11821	31	2	2	Toussaint	2034-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11822	31	2	2	Jour des Morts	2034-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11823	31	2	2	Armistice	2034-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11824	31	2	2	Fete du Roi / Communaute germanophone	2034-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11825	31	2	2	Noel	2034-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11826	31	2	2	Nouvel An	2035-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11827	31	2	2	Lundi de Paques	2035-03-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11828	31	2	2	Fete du Travail	2035-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11829	31	2	2	Ascension	2035-05-03	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11830	31	2	2	Lundi de Pentecote	2035-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11831	31	2	2	Fete de la Communaute flamande	2035-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11832	31	2	2	Fete Nationale	2035-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11833	31	2	2	Assomption	2035-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11834	31	2	2	Fete de la Communaute francaise	2035-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11835	31	2	2	Toussaint	2035-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11836	31	2	2	Jour des Morts	2035-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11837	31	2	2	Armistice	2035-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11838	31	2	2	Fete du Roi / Communaute germanophone	2035-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11839	31	2	2	Noel	2035-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11840	31	2	2	Nouvel An	2036-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11841	31	2	2	Lundi de Paques	2036-04-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11842	31	2	2	Fete du Travail	2036-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11843	31	2	2	Ascension	2036-05-22	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11844	31	2	2	Lundi de Pentecote	2036-06-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11845	31	2	2	Fete de la Communaute flamande	2036-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11846	31	2	2	Fete Nationale	2036-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11847	31	2	2	Assomption	2036-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11848	31	2	2	Fete de la Communaute francaise	2036-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11849	31	2	2	Toussaint	2036-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11850	31	2	2	Jour des Morts	2036-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11851	31	2	2	Armistice	2036-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11852	31	2	2	Fete du Roi / Communaute germanophone	2036-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11853	31	2	2	Noel	2036-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11854	31	2	2	Nouvel An	2037-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11855	31	2	2	Lundi de Paques	2037-04-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11856	31	2	2	Fete du Travail	2037-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11857	31	2	2	Ascension	2037-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11858	31	2	2	Lundi de Pentecote	2037-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11859	31	2	2	Fete de la Communaute flamande	2037-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11860	31	2	2	Fete Nationale	2037-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11861	31	2	2	Assomption	2037-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11862	31	2	2	Fete de la Communaute francaise	2037-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11863	31	2	2	Toussaint	2037-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11864	31	2	2	Jour des Morts	2037-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11865	31	2	2	Armistice	2037-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11866	31	2	2	Fete du Roi / Communaute germanophone	2037-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11867	31	2	2	Noel	2037-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11868	31	2	2	Nouvel An	2038-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11869	31	2	2	Lundi de Paques	2038-04-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11870	31	2	2	Fete du Travail	2038-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11871	31	2	2	Ascension	2038-06-03	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11872	31	2	2	Lundi de Pentecote	2038-06-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11873	31	2	2	Fete de la Communaute flamande	2038-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11874	31	2	2	Fete Nationale	2038-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11875	31	2	2	Assomption	2038-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11876	31	2	2	Fete de la Communaute francaise	2038-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11877	31	2	2	Toussaint	2038-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11878	31	2	2	Jour des Morts	2038-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11879	31	2	2	Armistice	2038-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11880	31	2	2	Fete du Roi / Communaute germanophone	2038-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11881	31	2	2	Noel	2038-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11882	31	2	2	Nouvel An	2039-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11883	31	2	2	Lundi de Paques	2039-04-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11884	31	2	2	Fete du Travail	2039-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11885	31	2	2	Ascension	2039-05-19	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11886	31	2	2	Lundi de Pentecote	2039-05-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11887	31	2	2	Fete de la Communaute flamande	2039-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11888	31	2	2	Fete Nationale	2039-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11889	31	2	2	Assomption	2039-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11890	31	2	2	Fete de la Communaute francaise	2039-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11891	31	2	2	Toussaint	2039-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11892	31	2	2	Jour des Morts	2039-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11893	31	2	2	Armistice	2039-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11894	31	2	2	Fete du Roi / Communaute germanophone	2039-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11895	31	2	2	Noel	2039-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11896	31	2	2	Nouvel An	2040-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11897	31	2	2	Lundi de Paques	2040-04-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11898	31	2	2	Fete du Travail	2040-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11899	31	2	2	Ascension	2040-05-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11900	31	2	2	Lundi de Pentecote	2040-05-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11901	31	2	2	Fete de la Communaute flamande	2040-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11902	31	2	2	Fete Nationale	2040-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11903	31	2	2	Assomption	2040-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11904	31	2	2	Fete de la Communaute francaise	2040-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11905	31	2	2	Toussaint	2040-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11906	31	2	2	Jour des Morts	2040-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11907	31	2	2	Armistice	2040-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11908	31	2	2	Fete du Roi / Communaute germanophone	2040-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11909	31	2	2	Noel	2040-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11910	31	2	2	Nouvel An	2041-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11911	31	2	2	Lundi de Paques	2041-04-22	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11912	31	2	2	Fete du Travail	2041-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11913	31	2	2	Ascension	2041-05-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11914	31	2	2	Lundi de Pentecote	2041-06-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11915	31	2	2	Fete de la Communaute flamande	2041-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11916	31	2	2	Fete Nationale	2041-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11917	31	2	2	Assomption	2041-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11918	31	2	2	Fete de la Communaute francaise	2041-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11919	31	2	2	Toussaint	2041-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11920	31	2	2	Jour des Morts	2041-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11921	31	2	2	Armistice	2041-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11922	31	2	2	Fete du Roi / Communaute germanophone	2041-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11923	31	2	2	Noel	2041-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11924	31	2	2	Nouvel An	2042-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11925	31	2	2	Lundi de Paques	2042-04-07	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11926	31	2	2	Fete du Travail	2042-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11927	31	2	2	Ascension	2042-05-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11928	31	2	2	Lundi de Pentecote	2042-05-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11929	31	2	2	Fete de la Communaute flamande	2042-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11930	31	2	2	Fete Nationale	2042-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11931	31	2	2	Assomption	2042-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11932	31	2	2	Fete de la Communaute francaise	2042-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11933	31	2	2	Toussaint	2042-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11934	31	2	2	Jour des Morts	2042-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11935	31	2	2	Armistice	2042-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11936	31	2	2	Fete du Roi / Communaute germanophone	2042-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11937	31	2	2	Noel	2042-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11938	31	2	2	Nouvel An	2043-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11939	31	2	2	Lundi de Paques	2043-03-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11940	31	2	2	Fete du Travail	2043-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11941	31	2	2	Ascension	2043-05-07	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11942	31	2	2	Lundi de Pentecote	2043-05-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11943	31	2	2	Fete de la Communaute flamande	2043-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11944	31	2	2	Fete Nationale	2043-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11945	31	2	2	Assomption	2043-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11946	31	2	2	Fete de la Communaute francaise	2043-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11947	31	2	2	Toussaint	2043-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11948	31	2	2	Jour des Morts	2043-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11949	31	2	2	Armistice	2043-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11950	31	2	2	Fete du Roi / Communaute germanophone	2043-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11951	31	2	2	Noel	2043-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11952	31	2	2	Nouvel An	2044-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11953	31	2	2	Lundi de Paques	2044-04-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11954	31	2	2	Fete du Travail	2044-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11955	31	2	2	Ascension	2044-05-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11956	31	2	2	Lundi de Pentecote	2044-06-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11957	31	2	2	Fete de la Communaute flamande	2044-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11958	31	2	2	Fete Nationale	2044-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11959	31	2	2	Assomption	2044-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11960	31	2	2	Fete de la Communaute francaise	2044-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11961	31	2	2	Toussaint	2044-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11962	31	2	2	Jour des Morts	2044-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11963	31	2	2	Armistice	2044-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11964	31	2	2	Fete du Roi / Communaute germanophone	2044-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11965	31	2	2	Noel	2044-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11966	31	2	2	Nouvel An	2045-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11967	31	2	2	Lundi de Paques	2045-04-10	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11968	31	2	2	Fete du Travail	2045-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11969	31	2	2	Ascension	2045-05-18	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11970	31	2	2	Lundi de Pentecote	2045-05-29	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11971	31	2	2	Fete de la Communaute flamande	2045-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11972	31	2	2	Fete Nationale	2045-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11973	31	2	2	Assomption	2045-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11974	31	2	2	Fete de la Communaute francaise	2045-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11975	31	2	2	Toussaint	2045-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11976	31	2	2	Jour des Morts	2045-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11977	31	2	2	Armistice	2045-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11978	31	2	2	Fete du Roi / Communaute germanophone	2045-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11979	31	2	2	Noel	2045-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11980	31	2	2	Nouvel An	2046-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11981	31	2	2	Lundi de Paques	2046-03-26	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11982	31	2	2	Fete du Travail	2046-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11983	31	2	2	Ascension	2046-05-03	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11984	31	2	2	Lundi de Pentecote	2046-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11985	31	2	2	Fete de la Communaute flamande	2046-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11986	31	2	2	Fete Nationale	2046-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11987	31	2	2	Assomption	2046-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11988	31	2	2	Fete de la Communaute francaise	2046-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11989	31	2	2	Toussaint	2046-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11990	31	2	2	Jour des Morts	2046-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11991	31	2	2	Armistice	2046-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11992	31	2	2	Fete du Roi / Communaute germanophone	2046-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11993	31	2	2	Noel	2046-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11994	31	2	2	Nouvel An	2047-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11995	31	2	2	Lundi de Paques	2047-04-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11996	31	2	2	Fete du Travail	2047-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11997	31	2	2	Ascension	2047-05-23	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11998	31	2	2	Lundi de Pentecote	2047-06-03	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
11999	31	2	2	Fete de la Communaute flamande	2047-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12000	31	2	2	Fete Nationale	2047-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12001	31	2	2	Assomption	2047-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12002	31	2	2	Fete de la Communaute francaise	2047-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12003	31	2	2	Toussaint	2047-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12004	31	2	2	Jour des Morts	2047-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12005	31	2	2	Armistice	2047-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12006	31	2	2	Fete du Roi / Communaute germanophone	2047-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12007	31	2	2	Noel	2047-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12008	31	2	2	Nouvel An	2048-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12009	31	2	2	Lundi de Paques	2048-04-06	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12010	31	2	2	Fete du Travail	2048-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12011	31	2	2	Ascension	2048-05-14	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12012	31	2	2	Lundi de Pentecote	2048-05-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12013	31	2	2	Fete de la Communaute flamande	2048-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12014	31	2	2	Fete Nationale	2048-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12015	31	2	2	Assomption	2048-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12016	31	2	2	Fete de la Communaute francaise	2048-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12017	31	2	2	Toussaint	2048-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12018	31	2	2	Jour des Morts	2048-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12019	31	2	2	Armistice	2048-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12020	31	2	2	Fete du Roi / Communaute germanophone	2048-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12021	31	2	2	Noel	2048-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12022	31	2	2	Nouvel An	2049-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12023	31	2	2	Lundi de Paques	2049-04-19	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12024	31	2	2	Fete du Travail	2049-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12025	31	2	2	Ascension	2049-05-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12026	31	2	2	Lundi de Pentecote	2049-06-07	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12027	31	2	2	Fete de la Communaute flamande	2049-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12028	31	2	2	Fete Nationale	2049-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12029	31	2	2	Assomption	2049-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12030	31	2	2	Fete de la Communaute francaise	2049-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12031	31	2	2	Toussaint	2049-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12032	31	2	2	Jour des Morts	2049-11-02	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12033	31	2	2	Armistice	2049-11-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12034	31	2	2	Fete du Roi / Communaute germanophone	2049-11-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12035	31	2	2	Noel	2049-12-25	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12036	31	2	2	Nouvel An	2050-01-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12037	31	2	2	Lundi de Paques	2050-04-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12038	31	2	2	Fete du Travail	2050-05-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12039	31	2	2	Ascension	2050-05-19	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12040	31	2	2	Lundi de Pentecote	2050-05-30	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12041	31	2	2	Fete de la Communaute flamande	2050-07-11	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12042	31	2	2	Fete Nationale	2050-07-21	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12043	31	2	2	Assomption	2050-08-15	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12044	31	2	2	Fete de la Communaute francaise	2050-09-27	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12045	31	2	2	Toussaint	2050-11-01	2026-07-16 06:32:52.100809	2026-07-16 06:32:52.100809	t
12046	31	2	2	Jour des Morts	2050-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12047	31	2	2	Armistice	2050-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12048	31	2	2	Fete du Roi / Communaute germanophone	2050-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12049	31	2	2	Noel	2050-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12050	38	2	2	Nouvel An	1991-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12051	38	2	2	Lundi de Pâques	1991-04-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12052	38	2	2	Fête du Travail	1991-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12053	38	2	2	Ascension	1991-05-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12054	38	2	2	Lundi de Pentecôte	1991-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12055	38	2	2	Fête Nationale	1991-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12056	38	2	2	Assomption	1991-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12057	38	2	2	Toussaint	1991-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12058	38	2	2	Armistice	1991-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12059	38	2	2	Noël	1991-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12060	38	2	2	Nouvel An	1992-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12061	38	2	2	Lundi de Pâques	1992-04-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12062	38	2	2	Fête du Travail	1992-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12063	38	2	2	Ascension	1992-05-28	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12064	38	2	2	Lundi de Pentecôte	1992-06-08	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12065	38	2	2	Fête Nationale	1992-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12066	38	2	2	Assomption	1992-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12067	38	2	2	Toussaint	1992-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12068	38	2	2	Armistice	1992-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12069	38	2	2	Noël	1992-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12070	38	2	2	Nouvel An	1993-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12071	38	2	2	Lundi de Pâques	1993-04-12	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12072	38	2	2	Fête du Travail	1993-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12073	38	2	2	Ascension	1993-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12074	38	2	2	Lundi de Pentecôte	1993-05-31	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12075	38	2	2	Fête Nationale	1993-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12076	38	2	2	Assomption	1993-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12077	38	2	2	Toussaint	1993-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12078	38	2	2	Armistice	1993-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12079	38	2	2	Noël	1993-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12080	38	2	2	Nouvel An	1994-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12081	38	2	2	Lundi de Pâques	1994-04-04	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12082	38	2	2	Fête du Travail	1994-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12083	38	2	2	Ascension	1994-05-12	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12084	38	2	2	Lundi de Pentecôte	1994-05-23	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12085	38	2	2	Fête Nationale	1994-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12086	38	2	2	Assomption	1994-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12087	38	2	2	Toussaint	1994-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12088	38	2	2	Armistice	1994-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12089	38	2	2	Noël	1994-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12090	38	2	2	Nouvel An	1995-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12091	38	2	2	Lundi de Pâques	1995-04-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12092	38	2	2	Fête du Travail	1995-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12093	38	2	2	Ascension	1995-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12094	38	2	2	Lundi de Pentecôte	1995-06-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12095	38	2	2	Fête Nationale	1995-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12096	38	2	2	Assomption	1995-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12097	38	2	2	Toussaint	1995-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12098	38	2	2	Armistice	1995-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12099	38	2	2	Noël	1995-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12100	38	2	2	Nouvel An	1996-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12101	38	2	2	Lundi de Pâques	1996-04-08	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12102	38	2	2	Fête du Travail	1996-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12103	38	2	2	Ascension	1996-05-16	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12104	38	2	2	Lundi de Pentecôte	1996-05-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12105	38	2	2	Fête Nationale	1996-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12106	38	2	2	Assomption	1996-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12107	38	2	2	Toussaint	1996-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12108	38	2	2	Armistice	1996-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12109	38	2	2	Noël	1996-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12110	38	2	2	Nouvel An	1997-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12111	38	2	2	Lundi de Pâques	1997-03-31	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12112	38	2	2	Fête du Travail	1997-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12113	38	2	2	Ascension	1997-05-08	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12114	38	2	2	Lundi de Pentecôte	1997-05-19	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12115	38	2	2	Fête Nationale	1997-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12116	38	2	2	Assomption	1997-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12117	38	2	2	Toussaint	1997-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12118	38	2	2	Armistice	1997-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12119	38	2	2	Noël	1997-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12120	38	2	2	Nouvel An	1998-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12121	38	2	2	Lundi de Pâques	1998-04-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12122	38	2	2	Fête du Travail	1998-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12123	38	2	2	Ascension	1998-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12124	38	2	2	Lundi de Pentecôte	1998-06-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12125	38	2	2	Fête Nationale	1998-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12126	38	2	2	Assomption	1998-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12127	38	2	2	Toussaint	1998-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12128	38	2	2	Armistice	1998-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12129	38	2	2	Noël	1998-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12130	38	2	2	Nouvel An	1999-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12131	38	2	2	Lundi de Pâques	1999-04-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12132	38	2	2	Fête du Travail	1999-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12133	38	2	2	Ascension	1999-05-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12134	38	2	2	Lundi de Pentecôte	1999-05-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12135	38	2	2	Fête Nationale	1999-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12136	38	2	2	Assomption	1999-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12137	38	2	2	Toussaint	1999-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12138	38	2	2	Armistice	1999-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12139	38	2	2	Noël	1999-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12140	38	2	2	Nouvel An	2000-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12141	38	2	2	Lundi de Pâques	2000-04-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12142	38	2	2	Fête du Travail	2000-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12143	38	2	2	Ascension	2000-06-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12144	38	2	2	Lundi de Pentecôte	2000-06-12	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12145	38	2	2	Fête Nationale	2000-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12146	38	2	2	Assomption	2000-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12147	38	2	2	Toussaint	2000-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12148	38	2	2	Armistice	2000-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12149	38	2	2	Noël	2000-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12150	38	2	2	Nouvel An	2001-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12151	38	2	2	Lundi de Pâques	2001-04-16	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12152	38	2	2	Fête du Travail	2001-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12153	38	2	2	Ascension	2001-05-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12154	38	2	2	Lundi de Pentecôte	2001-06-04	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12155	38	2	2	Fête Nationale	2001-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12156	38	2	2	Assomption	2001-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12157	38	2	2	Toussaint	2001-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12158	38	2	2	Armistice	2001-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12159	38	2	2	Noël	2001-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12160	38	2	2	Nouvel An	2002-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12161	38	2	2	Lundi de Pâques	2002-04-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12162	38	2	2	Fête du Travail	2002-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12163	38	2	2	Ascension	2002-05-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12164	38	2	2	Lundi de Pentecôte	2002-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12165	38	2	2	Fête Nationale	2002-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12166	38	2	2	Assomption	2002-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12167	38	2	2	Toussaint	2002-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12168	38	2	2	Armistice	2002-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12169	38	2	2	Noël	2002-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12170	38	2	2	Nouvel An	2003-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12171	38	2	2	Lundi de Pâques	2003-04-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12172	38	2	2	Fête du Travail	2003-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12173	38	2	2	Ascension	2003-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12174	38	2	2	Lundi de Pentecôte	2003-06-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12175	38	2	2	Fête Nationale	2003-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12176	38	2	2	Assomption	2003-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12177	38	2	2	Toussaint	2003-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12178	38	2	2	Armistice	2003-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12179	38	2	2	Noël	2003-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12180	38	2	2	Nouvel An	2004-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12181	38	2	2	Lundi de Pâques	2004-04-12	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12182	38	2	2	Fête du Travail	2004-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12183	38	2	2	Ascension	2004-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12184	38	2	2	Lundi de Pentecôte	2004-05-31	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12185	38	2	2	Fête Nationale	2004-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12186	38	2	2	Assomption	2004-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12187	38	2	2	Toussaint	2004-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12188	38	2	2	Armistice	2004-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12189	38	2	2	Noël	2004-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12190	38	2	2	Nouvel An	2005-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12191	38	2	2	Lundi de Pâques	2005-03-28	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12192	38	2	2	Fête du Travail	2005-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12193	38	2	2	Ascension	2005-05-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12194	38	2	2	Lundi de Pentecôte	2005-05-16	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12195	38	2	2	Fête Nationale	2005-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12196	38	2	2	Assomption	2005-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12197	38	2	2	Toussaint	2005-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12198	38	2	2	Armistice	2005-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12199	38	2	2	Noël	2005-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12200	38	2	2	Nouvel An	2006-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12201	38	2	2	Lundi de Pâques	2006-04-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12202	38	2	2	Fête du Travail	2006-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12203	38	2	2	Ascension	2006-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12204	38	2	2	Lundi de Pentecôte	2006-06-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12205	38	2	2	Fête Nationale	2006-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12206	38	2	2	Assomption	2006-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12207	38	2	2	Toussaint	2006-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12208	38	2	2	Armistice	2006-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12209	38	2	2	Noël	2006-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12210	38	2	2	Nouvel An	2007-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12211	38	2	2	Lundi de Pâques	2007-04-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12212	38	2	2	Fête du Travail	2007-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12213	38	2	2	Ascension	2007-05-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12214	38	2	2	Lundi de Pentecôte	2007-05-28	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12215	38	2	2	Fête Nationale	2007-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12216	38	2	2	Assomption	2007-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12217	38	2	2	Toussaint	2007-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12218	38	2	2	Armistice	2007-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12219	38	2	2	Noël	2007-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12220	38	2	2	Nouvel An	2008-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12221	38	2	2	Lundi de Pâques	2008-03-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12222	38	2	2	Fête du Travail	2008-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12223	38	2	2	Ascension	2008-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12224	38	2	2	Lundi de Pentecôte	2008-05-12	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12225	38	2	2	Fête Nationale	2008-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12226	38	2	2	Assomption	2008-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12227	38	2	2	Toussaint	2008-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12228	38	2	2	Armistice	2008-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12229	38	2	2	Noël	2008-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12230	38	2	2	Nouvel An	2009-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12231	38	2	2	Lundi de Pâques	2009-04-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12232	38	2	2	Fête du Travail	2009-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12233	38	2	2	Ascension	2009-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12234	38	2	2	Lundi de Pentecôte	2009-06-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12235	38	2	2	Fête Nationale	2009-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12236	38	2	2	Assomption	2009-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12237	38	2	2	Toussaint	2009-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12238	38	2	2	Armistice	2009-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12239	38	2	2	Noël	2009-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12240	38	2	2	Nouvel An	2010-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12241	38	2	2	Lundi de Pâques	2010-04-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12242	38	2	2	Fête du Travail	2010-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12243	38	2	2	Ascension	2010-05-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12244	38	2	2	Lundi de Pentecôte	2010-05-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12245	38	2	2	Fête Nationale	2010-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12246	38	2	2	Assomption	2010-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12247	38	2	2	Toussaint	2010-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12248	38	2	2	Armistice	2010-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12249	38	2	2	Noël	2010-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12250	38	2	2	Nouvel An	2011-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12251	38	2	2	Lundi de Pâques	2011-04-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12252	38	2	2	Fête du Travail	2011-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12253	38	2	2	Ascension	2011-06-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12254	38	2	2	Lundi de Pentecôte	2011-06-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12255	38	2	2	Fête Nationale	2011-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12256	38	2	2	Assomption	2011-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12257	38	2	2	Toussaint	2011-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12258	38	2	2	Armistice	2011-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12259	38	2	2	Noël	2011-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12260	38	2	2	Nouvel An	2012-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12261	38	2	2	Lundi de Pâques	2012-04-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12262	38	2	2	Fête du Travail	2012-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12263	38	2	2	Ascension	2012-05-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12264	38	2	2	Lundi de Pentecôte	2012-05-28	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12265	38	2	2	Fête Nationale	2012-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12266	38	2	2	Assomption	2012-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12267	38	2	2	Toussaint	2012-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12268	38	2	2	Armistice	2012-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12269	38	2	2	Noël	2012-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12270	38	2	2	Nouvel An	2013-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12271	38	2	2	Lundi de Pâques	2013-04-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12272	38	2	2	Fête du Travail	2013-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12273	38	2	2	Ascension	2013-05-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12274	38	2	2	Lundi de Pentecôte	2013-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12275	38	2	2	Fête Nationale	2013-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12276	38	2	2	Assomption	2013-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12277	38	2	2	Toussaint	2013-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12278	38	2	2	Armistice	2013-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12279	38	2	2	Noël	2013-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12280	38	2	2	Nouvel An	2014-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12281	38	2	2	Lundi de Pâques	2014-04-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12282	38	2	2	Fête du Travail	2014-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12283	38	2	2	Ascension	2014-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12284	38	2	2	Lundi de Pentecôte	2014-06-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12285	38	2	2	Fête Nationale	2014-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12286	38	2	2	Assomption	2014-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12287	38	2	2	Toussaint	2014-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12288	38	2	2	Armistice	2014-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12289	38	2	2	Noël	2014-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12290	38	2	2	Nouvel An	2015-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12291	38	2	2	Lundi de Pâques	2015-04-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12292	38	2	2	Fête du Travail	2015-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12293	38	2	2	Ascension	2015-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12294	38	2	2	Lundi de Pentecôte	2015-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12295	38	2	2	Fête Nationale	2015-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12296	38	2	2	Assomption	2015-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12297	38	2	2	Toussaint	2015-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12298	38	2	2	Armistice	2015-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12299	38	2	2	Noël	2015-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12300	38	2	2	Nouvel An	2016-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12301	38	2	2	Lundi de Pâques	2016-03-28	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12302	38	2	2	Fête du Travail	2016-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12303	38	2	2	Ascension	2016-05-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12304	38	2	2	Lundi de Pentecôte	2016-05-16	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12305	38	2	2	Fête Nationale	2016-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12306	38	2	2	Assomption	2016-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12307	38	2	2	Toussaint	2016-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12308	38	2	2	Armistice	2016-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12309	38	2	2	Noël	2016-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12310	38	2	2	Nouvel An	2017-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12311	38	2	2	Lundi de Pâques	2017-04-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12312	38	2	2	Fête du Travail	2017-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12313	38	2	2	Ascension	2017-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12314	38	2	2	Lundi de Pentecôte	2017-06-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12315	38	2	2	Fête Nationale	2017-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12316	38	2	2	Assomption	2017-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12317	38	2	2	Toussaint	2017-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12318	38	2	2	Armistice	2017-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12319	38	2	2	Noël	2017-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12320	38	2	2	Nouvel An	2018-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12321	38	2	2	Lundi de Pâques	2018-04-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12322	38	2	2	Fête du Travail	2018-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12323	38	2	2	Ascension	2018-05-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12324	38	2	2	Lundi de Pentecôte	2018-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12325	38	2	2	Fête Nationale	2018-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12326	38	2	2	Assomption	2018-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12327	38	2	2	Toussaint	2018-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12328	38	2	2	Armistice	2018-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12329	38	2	2	Noël	2018-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12330	38	2	2	Nouvel An	2019-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12331	38	2	2	Lundi de Pâques	2019-04-22	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12332	38	2	2	Fête du Travail	2019-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12333	38	2	2	Ascension	2019-05-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12334	38	2	2	Lundi de Pentecôte	2019-06-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12335	38	2	2	Fête Nationale	2019-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12336	38	2	2	Assomption	2019-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12337	38	2	2	Toussaint	2019-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12338	38	2	2	Armistice	2019-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12339	38	2	2	Noël	2019-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12340	38	2	2	Nouvel An	2020-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12341	38	2	2	Lundi de Pâques	2020-04-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12342	38	2	2	Fête du Travail	2020-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12343	38	2	2	Ascension	2020-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12344	38	2	2	Lundi de Pentecôte	2020-06-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12345	38	2	2	Fête Nationale	2020-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12346	38	2	2	Assomption	2020-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12347	38	2	2	Toussaint	2020-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12348	38	2	2	Armistice	2020-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12349	38	2	2	Noël	2020-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12350	38	2	2	Nouvel An	2021-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12351	38	2	2	Lundi de Pâques	2021-04-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12352	38	2	2	Fête du Travail	2021-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12353	38	2	2	Ascension	2021-05-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12354	38	2	2	Lundi de Pentecôte	2021-05-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12355	38	2	2	Fête Nationale	2021-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12356	38	2	2	Assomption	2021-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12357	38	2	2	Toussaint	2021-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12358	38	2	2	Armistice	2021-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12359	38	2	2	Noël	2021-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12360	38	2	2	Nouvel An	2022-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12361	38	2	2	Lundi de Pâques	2022-04-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12362	38	2	2	Fête du Travail	2022-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12363	38	2	2	Ascension	2022-05-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12364	38	2	2	Lundi de Pentecôte	2022-06-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12365	38	2	2	Fête Nationale	2022-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12366	38	2	2	Assomption	2022-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12367	38	2	2	Toussaint	2022-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12368	38	2	2	Armistice	2022-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12369	38	2	2	Noël	2022-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12370	38	2	2	Nouvel An	2023-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12371	38	2	2	Lundi de Pâques	2023-04-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12372	38	2	2	Fête du Travail	2023-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12373	38	2	2	Ascension	2023-05-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12374	38	2	2	Lundi de Pentecôte	2023-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12375	38	2	2	Fête Nationale	2023-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12376	38	2	2	Assomption	2023-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12377	38	2	2	Toussaint	2023-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12378	38	2	2	Armistice	2023-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12379	38	2	2	Noël	2023-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12380	38	2	2	Nouvel An	2024-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12381	38	2	2	Lundi de Pâques	2024-04-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12382	38	2	2	Fête du Travail	2024-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12383	38	2	2	Ascension	2024-05-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12384	38	2	2	Lundi de Pentecôte	2024-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12385	38	2	2	Fête Nationale	2024-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12386	38	2	2	Assomption	2024-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12387	38	2	2	Toussaint	2024-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12388	38	2	2	Armistice	2024-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12389	38	2	2	Noël	2024-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12390	38	2	2	Nouvel An	2025-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12391	38	2	2	Lundi de Pâques	2025-04-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12392	38	2	2	Fête du Travail	2025-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12393	38	2	2	Ascension	2025-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12394	38	2	2	Lundi de Pentecôte	2025-06-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12395	38	2	2	Fête Nationale	2025-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12396	38	2	2	Assomption	2025-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12397	38	2	2	Toussaint	2025-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12398	38	2	2	Armistice	2025-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12399	38	2	2	Noël	2025-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12400	38	2	2	Nouvel An	2026-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12401	38	2	2	Lundi de Pâques	2026-04-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12402	38	2	2	Fête du Travail	2026-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12403	38	2	2	Ascension	2026-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12404	38	2	2	Lundi de Pentecôte	2026-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12405	38	2	2	Fête Nationale	2026-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12406	38	2	2	Assomption	2026-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12407	38	2	2	Toussaint	2026-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12408	38	2	2	Armistice	2026-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12409	38	2	2	Noël	2026-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12410	38	2	2	Nouvel An	2027-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12411	38	2	2	Lundi de Pâques	2027-03-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12412	38	2	2	Fête du Travail	2027-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12413	38	2	2	Ascension	2027-06-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12414	38	2	2	Lundi de Pentecôte	2027-05-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12415	38	2	2	Fête Nationale	2027-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12416	38	2	2	Assomption	2027-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12417	38	2	2	Toussaint	2027-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12418	38	2	2	Armistice	2027-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12419	38	2	2	Noël	2027-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12420	38	2	2	Nouvel An	2028-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12421	38	2	2	Lundi de Pâques	2028-04-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12422	38	2	2	Fête du Travail	2028-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12423	38	2	2	Ascension	2028-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12424	38	2	2	Lundi de Pentecôte	2028-06-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12425	38	2	2	Fête Nationale	2028-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12426	38	2	2	Assomption	2028-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12427	38	2	2	Toussaint	2028-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12428	38	2	2	Armistice	2028-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12429	38	2	2	Noël	2028-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12430	38	2	2	Nouvel An	2029-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12431	38	2	2	Lundi de Pâques	2029-04-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12432	38	2	2	Fête du Travail	2029-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12433	38	2	2	Ascension	2029-05-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12434	38	2	2	Lundi de Pentecôte	2029-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12435	38	2	2	Fête Nationale	2029-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12436	38	2	2	Assomption	2029-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12437	38	2	2	Toussaint	2029-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12438	38	2	2	Armistice	2029-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12439	38	2	2	Noël	2029-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12440	38	2	2	Nouvel An	2030-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12441	38	2	2	Lundi de Pâques	2030-04-22	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12442	38	2	2	Fête du Travail	2030-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12443	38	2	2	Ascension	2030-05-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12444	38	2	2	Lundi de Pentecôte	2030-06-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12445	38	2	2	Fête Nationale	2030-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12446	38	2	2	Assomption	2030-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12447	38	2	2	Toussaint	2030-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12448	38	2	2	Armistice	2030-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12449	38	2	2	Noël	2030-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12450	38	2	2	Nouvel An	2031-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12451	38	2	2	Lundi de Pâques	2031-04-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12452	38	2	2	Fête du Travail	2031-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12453	38	2	2	Ascension	2031-05-22	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12454	38	2	2	Lundi de Pentecôte	2031-06-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12455	38	2	2	Fête Nationale	2031-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12456	38	2	2	Assomption	2031-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12457	38	2	2	Toussaint	2031-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12458	38	2	2	Armistice	2031-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12459	38	2	2	Noël	2031-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12460	38	2	2	Nouvel An	2032-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12461	38	2	2	Lundi de Pâques	2032-03-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12462	38	2	2	Fête du Travail	2032-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12463	38	2	2	Ascension	2032-05-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12464	38	2	2	Lundi de Pentecôte	2032-05-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12465	38	2	2	Fête Nationale	2032-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12466	38	2	2	Assomption	2032-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12467	38	2	2	Toussaint	2032-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12468	38	2	2	Armistice	2032-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12469	38	2	2	Noël	2032-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12470	38	2	2	Nouvel An	2033-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12471	38	2	2	Lundi de Pâques	2033-04-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12472	38	2	2	Fête du Travail	2033-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12473	38	2	2	Ascension	2033-05-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12474	38	2	2	Lundi de Pentecôte	2033-06-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12475	38	2	2	Fête Nationale	2033-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12476	38	2	2	Assomption	2033-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12477	38	2	2	Toussaint	2033-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12478	38	2	2	Armistice	2033-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12479	38	2	2	Noël	2033-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12480	38	2	2	Nouvel An	2034-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12481	38	2	2	Lundi de Paques	2034-04-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12482	38	2	2	Fete du Travail	2034-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12483	38	2	2	Ascension	2034-05-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12484	38	2	2	Lundi de Pentecote	2034-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12485	38	2	2	Fete de la Communaute flamande	2034-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12486	38	2	2	Fete Nationale	2034-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12487	38	2	2	Assomption	2034-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12488	38	2	2	Fete de la Communaute francaise	2034-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12489	38	2	2	Toussaint	2034-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12490	38	2	2	Jour des Morts	2034-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12491	38	2	2	Armistice	2034-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12492	38	2	2	Fete du Roi / Communaute germanophone	2034-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12493	38	2	2	Noel	2034-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12494	38	2	2	Nouvel An	2035-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12495	38	2	2	Lundi de Paques	2035-03-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12496	38	2	2	Fete du Travail	2035-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12497	38	2	2	Ascension	2035-05-03	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12498	38	2	2	Lundi de Pentecote	2035-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12499	38	2	2	Fete de la Communaute flamande	2035-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12500	38	2	2	Fete Nationale	2035-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12501	38	2	2	Assomption	2035-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12502	38	2	2	Fete de la Communaute francaise	2035-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12503	38	2	2	Toussaint	2035-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12504	38	2	2	Jour des Morts	2035-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12505	38	2	2	Armistice	2035-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12506	38	2	2	Fete du Roi / Communaute germanophone	2035-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12507	38	2	2	Noel	2035-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12508	38	2	2	Nouvel An	2036-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12509	38	2	2	Lundi de Paques	2036-04-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12510	38	2	2	Fete du Travail	2036-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12511	38	2	2	Ascension	2036-05-22	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12512	38	2	2	Lundi de Pentecote	2036-06-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12513	38	2	2	Fete de la Communaute flamande	2036-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12514	38	2	2	Fete Nationale	2036-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12515	38	2	2	Assomption	2036-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12516	38	2	2	Fete de la Communaute francaise	2036-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12517	38	2	2	Toussaint	2036-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12518	38	2	2	Jour des Morts	2036-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12519	38	2	2	Armistice	2036-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12520	38	2	2	Fete du Roi / Communaute germanophone	2036-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12521	38	2	2	Noel	2036-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12522	38	2	2	Nouvel An	2037-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12523	38	2	2	Lundi de Paques	2037-04-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12524	38	2	2	Fete du Travail	2037-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12525	38	2	2	Ascension	2037-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12526	38	2	2	Lundi de Pentecote	2037-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12527	38	2	2	Fete de la Communaute flamande	2037-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12528	38	2	2	Fete Nationale	2037-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12529	38	2	2	Assomption	2037-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12530	38	2	2	Fete de la Communaute francaise	2037-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12531	38	2	2	Toussaint	2037-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12532	38	2	2	Jour des Morts	2037-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12533	38	2	2	Armistice	2037-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12534	38	2	2	Fete du Roi / Communaute germanophone	2037-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12535	38	2	2	Noel	2037-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12536	38	2	2	Nouvel An	2038-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12537	38	2	2	Lundi de Paques	2038-04-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12538	38	2	2	Fete du Travail	2038-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12539	38	2	2	Ascension	2038-06-03	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12540	38	2	2	Lundi de Pentecote	2038-06-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12541	38	2	2	Fete de la Communaute flamande	2038-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12542	38	2	2	Fete Nationale	2038-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12543	38	2	2	Assomption	2038-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12544	38	2	2	Fete de la Communaute francaise	2038-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12545	38	2	2	Toussaint	2038-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12546	38	2	2	Jour des Morts	2038-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12547	38	2	2	Armistice	2038-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12548	38	2	2	Fete du Roi / Communaute germanophone	2038-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12549	38	2	2	Noel	2038-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12550	38	2	2	Nouvel An	2039-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12551	38	2	2	Lundi de Paques	2039-04-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12552	38	2	2	Fete du Travail	2039-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12553	38	2	2	Ascension	2039-05-19	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12554	38	2	2	Lundi de Pentecote	2039-05-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12555	38	2	2	Fete de la Communaute flamande	2039-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12556	38	2	2	Fete Nationale	2039-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12557	38	2	2	Assomption	2039-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12558	38	2	2	Fete de la Communaute francaise	2039-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12559	38	2	2	Toussaint	2039-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12560	38	2	2	Jour des Morts	2039-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12561	38	2	2	Armistice	2039-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12562	38	2	2	Fete du Roi / Communaute germanophone	2039-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12563	38	2	2	Noel	2039-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12564	38	2	2	Nouvel An	2040-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12565	38	2	2	Lundi de Paques	2040-04-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12566	38	2	2	Fete du Travail	2040-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12567	38	2	2	Ascension	2040-05-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12568	38	2	2	Lundi de Pentecote	2040-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12569	38	2	2	Fete de la Communaute flamande	2040-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12570	38	2	2	Fete Nationale	2040-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12571	38	2	2	Assomption	2040-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12572	38	2	2	Fete de la Communaute francaise	2040-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12573	38	2	2	Toussaint	2040-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12574	38	2	2	Jour des Morts	2040-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12575	38	2	2	Armistice	2040-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12576	38	2	2	Fete du Roi / Communaute germanophone	2040-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12577	38	2	2	Noel	2040-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12578	38	2	2	Nouvel An	2041-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12579	38	2	2	Lundi de Paques	2041-04-22	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12580	38	2	2	Fete du Travail	2041-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12581	38	2	2	Ascension	2041-05-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12582	38	2	2	Lundi de Pentecote	2041-06-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12583	38	2	2	Fete de la Communaute flamande	2041-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12584	38	2	2	Fete Nationale	2041-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12585	38	2	2	Assomption	2041-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12586	38	2	2	Fete de la Communaute francaise	2041-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12587	38	2	2	Toussaint	2041-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12588	38	2	2	Jour des Morts	2041-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12589	38	2	2	Armistice	2041-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12590	38	2	2	Fete du Roi / Communaute germanophone	2041-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12591	38	2	2	Noel	2041-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12592	38	2	2	Nouvel An	2042-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12593	38	2	2	Lundi de Paques	2042-04-07	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12594	38	2	2	Fete du Travail	2042-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12595	38	2	2	Ascension	2042-05-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12596	38	2	2	Lundi de Pentecote	2042-05-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12597	38	2	2	Fete de la Communaute flamande	2042-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12598	38	2	2	Fete Nationale	2042-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12599	38	2	2	Assomption	2042-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12600	38	2	2	Fete de la Communaute francaise	2042-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12601	38	2	2	Toussaint	2042-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12602	38	2	2	Jour des Morts	2042-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12603	38	2	2	Armistice	2042-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12604	38	2	2	Fete du Roi / Communaute germanophone	2042-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12605	38	2	2	Noel	2042-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12606	38	2	2	Nouvel An	2043-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12607	38	2	2	Lundi de Paques	2043-03-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12608	38	2	2	Fete du Travail	2043-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12609	38	2	2	Ascension	2043-05-07	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12610	38	2	2	Lundi de Pentecote	2043-05-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12611	38	2	2	Fete de la Communaute flamande	2043-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12612	38	2	2	Fete Nationale	2043-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12613	38	2	2	Assomption	2043-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12614	38	2	2	Fete de la Communaute francaise	2043-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12615	38	2	2	Toussaint	2043-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12616	38	2	2	Jour des Morts	2043-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12617	38	2	2	Armistice	2043-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12618	38	2	2	Fete du Roi / Communaute germanophone	2043-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12619	38	2	2	Noel	2043-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12620	38	2	2	Nouvel An	2044-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12621	38	2	2	Lundi de Paques	2044-04-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12622	38	2	2	Fete du Travail	2044-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12623	38	2	2	Ascension	2044-05-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12624	38	2	2	Lundi de Pentecote	2044-06-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12625	38	2	2	Fete de la Communaute flamande	2044-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12626	38	2	2	Fete Nationale	2044-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12627	38	2	2	Assomption	2044-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12628	38	2	2	Fete de la Communaute francaise	2044-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12629	38	2	2	Toussaint	2044-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12630	38	2	2	Jour des Morts	2044-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12631	38	2	2	Armistice	2044-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12632	38	2	2	Fete du Roi / Communaute germanophone	2044-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12633	38	2	2	Noel	2044-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12634	38	2	2	Nouvel An	2045-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12635	38	2	2	Lundi de Paques	2045-04-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12636	38	2	2	Fete du Travail	2045-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12637	38	2	2	Ascension	2045-05-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12638	38	2	2	Lundi de Pentecote	2045-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12639	38	2	2	Fete de la Communaute flamande	2045-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12640	38	2	2	Fete Nationale	2045-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12641	38	2	2	Assomption	2045-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12642	38	2	2	Fete de la Communaute francaise	2045-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12643	38	2	2	Toussaint	2045-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12644	38	2	2	Jour des Morts	2045-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12645	38	2	2	Armistice	2045-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12646	38	2	2	Fete du Roi / Communaute germanophone	2045-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12647	38	2	2	Noel	2045-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12648	38	2	2	Nouvel An	2046-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12649	38	2	2	Lundi de Paques	2046-03-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12650	38	2	2	Fete du Travail	2046-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12651	38	2	2	Ascension	2046-05-03	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12652	38	2	2	Lundi de Pentecote	2046-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12653	38	2	2	Fete de la Communaute flamande	2046-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12654	38	2	2	Fete Nationale	2046-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12655	38	2	2	Assomption	2046-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12656	38	2	2	Fete de la Communaute francaise	2046-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12657	38	2	2	Toussaint	2046-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12658	38	2	2	Jour des Morts	2046-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12659	38	2	2	Armistice	2046-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12660	38	2	2	Fete du Roi / Communaute germanophone	2046-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12661	38	2	2	Noel	2046-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12662	38	2	2	Nouvel An	2047-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12663	38	2	2	Lundi de Paques	2047-04-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12664	38	2	2	Fete du Travail	2047-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12665	38	2	2	Ascension	2047-05-23	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12666	38	2	2	Lundi de Pentecote	2047-06-03	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12667	38	2	2	Fete de la Communaute flamande	2047-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12668	38	2	2	Fete Nationale	2047-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12669	38	2	2	Assomption	2047-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12670	38	2	2	Fete de la Communaute francaise	2047-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12671	38	2	2	Toussaint	2047-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12672	38	2	2	Jour des Morts	2047-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12673	38	2	2	Armistice	2047-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12674	38	2	2	Fete du Roi / Communaute germanophone	2047-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12675	38	2	2	Noel	2047-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12676	38	2	2	Nouvel An	2048-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12677	38	2	2	Lundi de Paques	2048-04-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12678	38	2	2	Fete du Travail	2048-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12679	38	2	2	Ascension	2048-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12680	38	2	2	Lundi de Pentecote	2048-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12681	38	2	2	Fete de la Communaute flamande	2048-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12682	38	2	2	Fete Nationale	2048-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12683	38	2	2	Assomption	2048-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12684	38	2	2	Fete de la Communaute francaise	2048-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12685	38	2	2	Toussaint	2048-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12686	38	2	2	Jour des Morts	2048-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12687	38	2	2	Armistice	2048-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12688	38	2	2	Fete du Roi / Communaute germanophone	2048-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12689	38	2	2	Noel	2048-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12690	38	2	2	Nouvel An	2049-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12691	38	2	2	Lundi de Paques	2049-04-19	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12692	38	2	2	Fete du Travail	2049-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12693	38	2	2	Ascension	2049-05-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12694	38	2	2	Lundi de Pentecote	2049-06-07	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12695	38	2	2	Fete de la Communaute flamande	2049-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12696	38	2	2	Fete Nationale	2049-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12697	38	2	2	Assomption	2049-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12698	38	2	2	Fete de la Communaute francaise	2049-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12699	38	2	2	Toussaint	2049-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12700	38	2	2	Jour des Morts	2049-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12701	38	2	2	Armistice	2049-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12702	38	2	2	Fete du Roi / Communaute germanophone	2049-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12703	38	2	2	Noel	2049-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12704	38	2	2	Nouvel An	2050-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12705	38	2	2	Lundi de Paques	2050-04-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12706	38	2	2	Fete du Travail	2050-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12707	38	2	2	Ascension	2050-05-19	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12708	38	2	2	Lundi de Pentecote	2050-05-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12709	38	2	2	Fete de la Communaute flamande	2050-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12710	38	2	2	Fete Nationale	2050-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12711	38	2	2	Assomption	2050-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12712	38	2	2	Fete de la Communaute francaise	2050-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12713	38	2	2	Toussaint	2050-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12714	38	2	2	Jour des Morts	2050-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12715	38	2	2	Armistice	2050-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12716	38	2	2	Fete du Roi / Communaute germanophone	2050-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12717	38	2	2	Noel	2050-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12718	43	2	2	Nouvel An	1991-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12719	43	2	2	Lundi de Pâques	1991-04-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12720	43	2	2	Fête du Travail	1991-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12721	43	2	2	Ascension	1991-05-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12722	43	2	2	Lundi de Pentecôte	1991-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12723	43	2	2	Fête Nationale	1991-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12724	43	2	2	Assomption	1991-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12725	43	2	2	Toussaint	1991-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12726	43	2	2	Armistice	1991-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12727	43	2	2	Noël	1991-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12728	43	2	2	Nouvel An	1992-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12729	43	2	2	Lundi de Pâques	1992-04-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12730	43	2	2	Fête du Travail	1992-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12731	43	2	2	Ascension	1992-05-28	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12732	43	2	2	Lundi de Pentecôte	1992-06-08	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12733	43	2	2	Fête Nationale	1992-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12734	43	2	2	Assomption	1992-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12735	43	2	2	Toussaint	1992-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12736	43	2	2	Armistice	1992-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12737	43	2	2	Noël	1992-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12738	43	2	2	Nouvel An	1993-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12739	43	2	2	Lundi de Pâques	1993-04-12	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12740	43	2	2	Fête du Travail	1993-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12741	43	2	2	Ascension	1993-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12742	43	2	2	Lundi de Pentecôte	1993-05-31	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12743	43	2	2	Fête Nationale	1993-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12744	43	2	2	Assomption	1993-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12745	43	2	2	Toussaint	1993-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12746	43	2	2	Armistice	1993-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12747	43	2	2	Noël	1993-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12748	43	2	2	Nouvel An	1994-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12749	43	2	2	Lundi de Pâques	1994-04-04	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12750	43	2	2	Fête du Travail	1994-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12751	43	2	2	Ascension	1994-05-12	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12752	43	2	2	Lundi de Pentecôte	1994-05-23	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12753	43	2	2	Fête Nationale	1994-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12754	43	2	2	Assomption	1994-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12755	43	2	2	Toussaint	1994-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12756	43	2	2	Armistice	1994-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12757	43	2	2	Noël	1994-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12758	43	2	2	Nouvel An	1995-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12759	43	2	2	Lundi de Pâques	1995-04-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12760	43	2	2	Fête du Travail	1995-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12761	43	2	2	Ascension	1995-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12762	43	2	2	Lundi de Pentecôte	1995-06-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12763	43	2	2	Fête Nationale	1995-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12764	43	2	2	Assomption	1995-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12765	43	2	2	Toussaint	1995-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12766	43	2	2	Armistice	1995-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12767	43	2	2	Noël	1995-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12768	43	2	2	Nouvel An	1996-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12769	43	2	2	Lundi de Pâques	1996-04-08	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12770	43	2	2	Fête du Travail	1996-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12771	43	2	2	Ascension	1996-05-16	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12772	43	2	2	Lundi de Pentecôte	1996-05-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12773	43	2	2	Fête Nationale	1996-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12774	43	2	2	Assomption	1996-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12775	43	2	2	Toussaint	1996-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12776	43	2	2	Armistice	1996-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12777	43	2	2	Noël	1996-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12778	43	2	2	Nouvel An	1997-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12779	43	2	2	Lundi de Pâques	1997-03-31	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12780	43	2	2	Fête du Travail	1997-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12781	43	2	2	Ascension	1997-05-08	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12782	43	2	2	Lundi de Pentecôte	1997-05-19	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12783	43	2	2	Fête Nationale	1997-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12784	43	2	2	Assomption	1997-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12785	43	2	2	Toussaint	1997-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12786	43	2	2	Armistice	1997-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12787	43	2	2	Noël	1997-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12788	43	2	2	Nouvel An	1998-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12789	43	2	2	Lundi de Pâques	1998-04-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12790	43	2	2	Fête du Travail	1998-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12791	43	2	2	Ascension	1998-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12792	43	2	2	Lundi de Pentecôte	1998-06-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12793	43	2	2	Fête Nationale	1998-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12794	43	2	2	Assomption	1998-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12795	43	2	2	Toussaint	1998-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12796	43	2	2	Armistice	1998-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12797	43	2	2	Noël	1998-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12798	43	2	2	Nouvel An	1999-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12799	43	2	2	Lundi de Pâques	1999-04-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12800	43	2	2	Fête du Travail	1999-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12801	43	2	2	Ascension	1999-05-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12802	43	2	2	Lundi de Pentecôte	1999-05-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12803	43	2	2	Fête Nationale	1999-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12804	43	2	2	Assomption	1999-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12805	43	2	2	Toussaint	1999-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12806	43	2	2	Armistice	1999-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12807	43	2	2	Noël	1999-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12808	43	2	2	Nouvel An	2000-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12809	43	2	2	Lundi de Pâques	2000-04-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12810	43	2	2	Fête du Travail	2000-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12811	43	2	2	Ascension	2000-06-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12812	43	2	2	Lundi de Pentecôte	2000-06-12	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12813	43	2	2	Fête Nationale	2000-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12814	43	2	2	Assomption	2000-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12815	43	2	2	Toussaint	2000-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12816	43	2	2	Armistice	2000-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12817	43	2	2	Noël	2000-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12818	43	2	2	Nouvel An	2001-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12819	43	2	2	Lundi de Pâques	2001-04-16	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12820	43	2	2	Fête du Travail	2001-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12821	43	2	2	Ascension	2001-05-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12822	43	2	2	Lundi de Pentecôte	2001-06-04	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12823	43	2	2	Fête Nationale	2001-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12824	43	2	2	Assomption	2001-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12825	43	2	2	Toussaint	2001-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12826	43	2	2	Armistice	2001-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12827	43	2	2	Noël	2001-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12828	43	2	2	Nouvel An	2002-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12829	43	2	2	Lundi de Pâques	2002-04-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12830	43	2	2	Fête du Travail	2002-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12831	43	2	2	Ascension	2002-05-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12832	43	2	2	Lundi de Pentecôte	2002-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12833	43	2	2	Fête Nationale	2002-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12834	43	2	2	Assomption	2002-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12835	43	2	2	Toussaint	2002-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12836	43	2	2	Armistice	2002-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12837	43	2	2	Noël	2002-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12838	43	2	2	Nouvel An	2003-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12839	43	2	2	Lundi de Pâques	2003-04-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12840	43	2	2	Fête du Travail	2003-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12841	43	2	2	Ascension	2003-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12842	43	2	2	Lundi de Pentecôte	2003-06-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12843	43	2	2	Fête Nationale	2003-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12844	43	2	2	Assomption	2003-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12845	43	2	2	Toussaint	2003-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12846	43	2	2	Armistice	2003-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12847	43	2	2	Noël	2003-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12848	43	2	2	Nouvel An	2004-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12849	43	2	2	Lundi de Pâques	2004-04-12	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12850	43	2	2	Fête du Travail	2004-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12851	43	2	2	Ascension	2004-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12852	43	2	2	Lundi de Pentecôte	2004-05-31	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12853	43	2	2	Fête Nationale	2004-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12854	43	2	2	Assomption	2004-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12855	43	2	2	Toussaint	2004-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12856	43	2	2	Armistice	2004-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12857	43	2	2	Noël	2004-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12858	43	2	2	Nouvel An	2005-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12859	43	2	2	Lundi de Pâques	2005-03-28	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12860	43	2	2	Fête du Travail	2005-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12861	43	2	2	Ascension	2005-05-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12862	43	2	2	Lundi de Pentecôte	2005-05-16	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12863	43	2	2	Fête Nationale	2005-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12864	43	2	2	Assomption	2005-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12865	43	2	2	Toussaint	2005-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12866	43	2	2	Armistice	2005-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12867	43	2	2	Noël	2005-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12868	43	2	2	Nouvel An	2006-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12869	43	2	2	Lundi de Pâques	2006-04-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12870	43	2	2	Fête du Travail	2006-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12871	43	2	2	Ascension	2006-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12872	43	2	2	Lundi de Pentecôte	2006-06-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12873	43	2	2	Fête Nationale	2006-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12874	43	2	2	Assomption	2006-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12875	43	2	2	Toussaint	2006-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12876	43	2	2	Armistice	2006-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12877	43	2	2	Noël	2006-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12878	43	2	2	Nouvel An	2007-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12879	43	2	2	Lundi de Pâques	2007-04-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12880	43	2	2	Fête du Travail	2007-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12881	43	2	2	Ascension	2007-05-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12882	43	2	2	Lundi de Pentecôte	2007-05-28	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12883	43	2	2	Fête Nationale	2007-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12884	43	2	2	Assomption	2007-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12885	43	2	2	Toussaint	2007-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12886	43	2	2	Armistice	2007-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12887	43	2	2	Noël	2007-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12888	43	2	2	Nouvel An	2008-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12889	43	2	2	Lundi de Pâques	2008-03-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12890	43	2	2	Fête du Travail	2008-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12891	43	2	2	Ascension	2008-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12892	43	2	2	Lundi de Pentecôte	2008-05-12	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12893	43	2	2	Fête Nationale	2008-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12894	43	2	2	Assomption	2008-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12895	43	2	2	Toussaint	2008-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12896	43	2	2	Armistice	2008-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12897	43	2	2	Noël	2008-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12898	43	2	2	Nouvel An	2009-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12899	43	2	2	Lundi de Pâques	2009-04-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12900	43	2	2	Fête du Travail	2009-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12901	43	2	2	Ascension	2009-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12902	43	2	2	Lundi de Pentecôte	2009-06-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12903	43	2	2	Fête Nationale	2009-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12904	43	2	2	Assomption	2009-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12905	43	2	2	Toussaint	2009-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12906	43	2	2	Armistice	2009-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12907	43	2	2	Noël	2009-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12908	43	2	2	Nouvel An	2010-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12909	43	2	2	Lundi de Pâques	2010-04-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12910	43	2	2	Fête du Travail	2010-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12911	43	2	2	Ascension	2010-05-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12912	43	2	2	Lundi de Pentecôte	2010-05-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12913	43	2	2	Fête Nationale	2010-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12914	43	2	2	Assomption	2010-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12915	43	2	2	Toussaint	2010-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12916	43	2	2	Armistice	2010-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12917	43	2	2	Noël	2010-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12918	43	2	2	Nouvel An	2011-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12919	43	2	2	Lundi de Pâques	2011-04-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12920	43	2	2	Fête du Travail	2011-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12921	43	2	2	Ascension	2011-06-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12922	43	2	2	Lundi de Pentecôte	2011-06-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12923	43	2	2	Fête Nationale	2011-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12924	43	2	2	Assomption	2011-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12925	43	2	2	Toussaint	2011-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12926	43	2	2	Armistice	2011-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12927	43	2	2	Noël	2011-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12928	43	2	2	Nouvel An	2012-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12929	43	2	2	Lundi de Pâques	2012-04-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12930	43	2	2	Fête du Travail	2012-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12931	43	2	2	Ascension	2012-05-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12932	43	2	2	Lundi de Pentecôte	2012-05-28	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12933	43	2	2	Fête Nationale	2012-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12934	43	2	2	Assomption	2012-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12935	43	2	2	Toussaint	2012-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12936	43	2	2	Armistice	2012-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12937	43	2	2	Noël	2012-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12938	43	2	2	Nouvel An	2013-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12939	43	2	2	Lundi de Pâques	2013-04-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12940	43	2	2	Fête du Travail	2013-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12941	43	2	2	Ascension	2013-05-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12942	43	2	2	Lundi de Pentecôte	2013-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12943	43	2	2	Fête Nationale	2013-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12944	43	2	2	Assomption	2013-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12945	43	2	2	Toussaint	2013-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12946	43	2	2	Armistice	2013-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12947	43	2	2	Noël	2013-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12948	43	2	2	Nouvel An	2014-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12949	43	2	2	Lundi de Pâques	2014-04-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12950	43	2	2	Fête du Travail	2014-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12951	43	2	2	Ascension	2014-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12952	43	2	2	Lundi de Pentecôte	2014-06-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12953	43	2	2	Fête Nationale	2014-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12954	43	2	2	Assomption	2014-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12955	43	2	2	Toussaint	2014-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12956	43	2	2	Armistice	2014-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12957	43	2	2	Noël	2014-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12958	43	2	2	Nouvel An	2015-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12959	43	2	2	Lundi de Pâques	2015-04-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12960	43	2	2	Fête du Travail	2015-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12961	43	2	2	Ascension	2015-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12962	43	2	2	Lundi de Pentecôte	2015-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12963	43	2	2	Fête Nationale	2015-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12964	43	2	2	Assomption	2015-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12965	43	2	2	Toussaint	2015-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12966	43	2	2	Armistice	2015-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12967	43	2	2	Noël	2015-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12968	43	2	2	Nouvel An	2016-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12969	43	2	2	Lundi de Pâques	2016-03-28	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12970	43	2	2	Fête du Travail	2016-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12971	43	2	2	Ascension	2016-05-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12972	43	2	2	Lundi de Pentecôte	2016-05-16	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12973	43	2	2	Fête Nationale	2016-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12974	43	2	2	Assomption	2016-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12975	43	2	2	Toussaint	2016-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12976	43	2	2	Armistice	2016-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12977	43	2	2	Noël	2016-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12978	43	2	2	Nouvel An	2017-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12979	43	2	2	Lundi de Pâques	2017-04-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12980	43	2	2	Fête du Travail	2017-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12981	43	2	2	Ascension	2017-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12982	43	2	2	Lundi de Pentecôte	2017-06-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12983	43	2	2	Fête Nationale	2017-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12984	43	2	2	Assomption	2017-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12985	43	2	2	Toussaint	2017-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12986	43	2	2	Armistice	2017-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12987	43	2	2	Noël	2017-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12988	43	2	2	Nouvel An	2018-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12989	43	2	2	Lundi de Pâques	2018-04-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12990	43	2	2	Fête du Travail	2018-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12991	43	2	2	Ascension	2018-05-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12992	43	2	2	Lundi de Pentecôte	2018-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12993	43	2	2	Fête Nationale	2018-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12994	43	2	2	Assomption	2018-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12995	43	2	2	Toussaint	2018-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12996	43	2	2	Armistice	2018-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12997	43	2	2	Noël	2018-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12998	43	2	2	Nouvel An	2019-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
12999	43	2	2	Lundi de Pâques	2019-04-22	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13000	43	2	2	Fête du Travail	2019-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13001	43	2	2	Ascension	2019-05-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13002	43	2	2	Lundi de Pentecôte	2019-06-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13003	43	2	2	Fête Nationale	2019-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13004	43	2	2	Assomption	2019-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13005	43	2	2	Toussaint	2019-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13006	43	2	2	Armistice	2019-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13007	43	2	2	Noël	2019-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13008	43	2	2	Nouvel An	2020-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13009	43	2	2	Lundi de Pâques	2020-04-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13010	43	2	2	Fête du Travail	2020-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13011	43	2	2	Ascension	2020-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13012	43	2	2	Lundi de Pentecôte	2020-06-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13013	43	2	2	Fête Nationale	2020-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13014	43	2	2	Assomption	2020-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13015	43	2	2	Toussaint	2020-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13016	43	2	2	Armistice	2020-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13017	43	2	2	Noël	2020-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13018	43	2	2	Nouvel An	2021-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13019	43	2	2	Lundi de Pâques	2021-04-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13020	43	2	2	Fête du Travail	2021-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13021	43	2	2	Ascension	2021-05-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13022	43	2	2	Lundi de Pentecôte	2021-05-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13023	43	2	2	Fête Nationale	2021-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13024	43	2	2	Assomption	2021-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13025	43	2	2	Toussaint	2021-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13026	43	2	2	Armistice	2021-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13027	43	2	2	Noël	2021-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13028	43	2	2	Nouvel An	2022-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13029	43	2	2	Lundi de Pâques	2022-04-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13030	43	2	2	Fête du Travail	2022-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13031	43	2	2	Ascension	2022-05-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13032	43	2	2	Lundi de Pentecôte	2022-06-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13033	43	2	2	Fête Nationale	2022-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13034	43	2	2	Assomption	2022-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13035	43	2	2	Toussaint	2022-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13036	43	2	2	Armistice	2022-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13037	43	2	2	Noël	2022-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13038	43	2	2	Nouvel An	2023-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13039	43	2	2	Lundi de Pâques	2023-04-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13040	43	2	2	Fête du Travail	2023-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13041	43	2	2	Ascension	2023-05-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13042	43	2	2	Lundi de Pentecôte	2023-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13043	43	2	2	Fête Nationale	2023-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13044	43	2	2	Assomption	2023-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13045	43	2	2	Toussaint	2023-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13046	43	2	2	Armistice	2023-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13047	43	2	2	Noël	2023-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13048	43	2	2	Nouvel An	2024-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13049	43	2	2	Lundi de Pâques	2024-04-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13050	43	2	2	Fête du Travail	2024-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13051	43	2	2	Ascension	2024-05-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13052	43	2	2	Lundi de Pentecôte	2024-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13053	43	2	2	Fête Nationale	2024-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13054	43	2	2	Assomption	2024-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13055	43	2	2	Toussaint	2024-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13056	43	2	2	Armistice	2024-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13057	43	2	2	Noël	2024-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13058	43	2	2	Nouvel An	2025-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13059	43	2	2	Lundi de Pâques	2025-04-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13060	43	2	2	Fête du Travail	2025-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13061	43	2	2	Ascension	2025-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13062	43	2	2	Lundi de Pentecôte	2025-06-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13063	43	2	2	Fête Nationale	2025-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13064	43	2	2	Assomption	2025-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13065	43	2	2	Toussaint	2025-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13066	43	2	2	Armistice	2025-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13067	43	2	2	Noël	2025-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13068	43	2	2	Nouvel An	2026-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13069	43	2	2	Lundi de Pâques	2026-04-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13070	43	2	2	Fête du Travail	2026-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13071	43	2	2	Ascension	2026-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13072	43	2	2	Lundi de Pentecôte	2026-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13073	43	2	2	Fête Nationale	2026-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13074	43	2	2	Assomption	2026-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13075	43	2	2	Toussaint	2026-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13076	43	2	2	Armistice	2026-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13077	43	2	2	Noël	2026-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13078	43	2	2	Nouvel An	2027-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13079	43	2	2	Lundi de Pâques	2027-03-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13080	43	2	2	Fête du Travail	2027-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13081	43	2	2	Ascension	2027-06-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13082	43	2	2	Lundi de Pentecôte	2027-05-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13083	43	2	2	Fête Nationale	2027-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13084	43	2	2	Assomption	2027-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13085	43	2	2	Toussaint	2027-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13086	43	2	2	Armistice	2027-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13087	43	2	2	Noël	2027-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13088	43	2	2	Nouvel An	2028-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13089	43	2	2	Lundi de Pâques	2028-04-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13090	43	2	2	Fête du Travail	2028-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13091	43	2	2	Ascension	2028-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13092	43	2	2	Lundi de Pentecôte	2028-06-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13093	43	2	2	Fête Nationale	2028-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13094	43	2	2	Assomption	2028-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13095	43	2	2	Toussaint	2028-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13096	43	2	2	Armistice	2028-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13097	43	2	2	Noël	2028-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13098	43	2	2	Nouvel An	2029-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13099	43	2	2	Lundi de Pâques	2029-04-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13100	43	2	2	Fête du Travail	2029-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13101	43	2	2	Ascension	2029-05-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13102	43	2	2	Lundi de Pentecôte	2029-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13103	43	2	2	Fête Nationale	2029-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13104	43	2	2	Assomption	2029-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13105	43	2	2	Toussaint	2029-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13106	43	2	2	Armistice	2029-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13107	43	2	2	Noël	2029-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13108	43	2	2	Nouvel An	2030-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13109	43	2	2	Lundi de Pâques	2030-04-22	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13110	43	2	2	Fête du Travail	2030-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13111	43	2	2	Ascension	2030-05-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13112	43	2	2	Lundi de Pentecôte	2030-06-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13113	43	2	2	Fête Nationale	2030-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13114	43	2	2	Assomption	2030-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13115	43	2	2	Toussaint	2030-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13116	43	2	2	Armistice	2030-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13117	43	2	2	Noël	2030-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13118	43	2	2	Nouvel An	2031-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13119	43	2	2	Lundi de Pâques	2031-04-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13120	43	2	2	Fête du Travail	2031-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13121	43	2	2	Ascension	2031-05-22	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13122	43	2	2	Lundi de Pentecôte	2031-06-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13123	43	2	2	Fête Nationale	2031-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13124	43	2	2	Assomption	2031-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13125	43	2	2	Toussaint	2031-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13126	43	2	2	Armistice	2031-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13127	43	2	2	Noël	2031-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13128	43	2	2	Nouvel An	2032-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13129	43	2	2	Lundi de Pâques	2032-03-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13130	43	2	2	Fête du Travail	2032-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13131	43	2	2	Ascension	2032-05-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13132	43	2	2	Lundi de Pentecôte	2032-05-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13133	43	2	2	Fête Nationale	2032-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13134	43	2	2	Assomption	2032-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13135	43	2	2	Toussaint	2032-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13136	43	2	2	Armistice	2032-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13137	43	2	2	Noël	2032-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13138	43	2	2	Nouvel An	2033-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13139	43	2	2	Lundi de Pâques	2033-04-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13140	43	2	2	Fête du Travail	2033-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13141	43	2	2	Ascension	2033-05-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13142	43	2	2	Lundi de Pentecôte	2033-06-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13143	43	2	2	Fête Nationale	2033-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13144	43	2	2	Assomption	2033-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13145	43	2	2	Toussaint	2033-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13146	43	2	2	Armistice	2033-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13147	43	2	2	Noël	2033-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13148	43	2	2	Nouvel An	2034-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13149	43	2	2	Lundi de Paques	2034-04-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13150	43	2	2	Fete du Travail	2034-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13151	43	2	2	Ascension	2034-05-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13152	43	2	2	Lundi de Pentecote	2034-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13153	43	2	2	Fete de la Communaute flamande	2034-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13154	43	2	2	Fete Nationale	2034-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13155	43	2	2	Assomption	2034-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13156	43	2	2	Fete de la Communaute francaise	2034-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13157	43	2	2	Toussaint	2034-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13158	43	2	2	Jour des Morts	2034-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13159	43	2	2	Armistice	2034-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13160	43	2	2	Fete du Roi / Communaute germanophone	2034-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13161	43	2	2	Noel	2034-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13162	43	2	2	Nouvel An	2035-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13163	43	2	2	Lundi de Paques	2035-03-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13164	43	2	2	Fete du Travail	2035-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13165	43	2	2	Ascension	2035-05-03	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13166	43	2	2	Lundi de Pentecote	2035-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13167	43	2	2	Fete de la Communaute flamande	2035-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13168	43	2	2	Fete Nationale	2035-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13169	43	2	2	Assomption	2035-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13170	43	2	2	Fete de la Communaute francaise	2035-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13171	43	2	2	Toussaint	2035-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13172	43	2	2	Jour des Morts	2035-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13173	43	2	2	Armistice	2035-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13174	43	2	2	Fete du Roi / Communaute germanophone	2035-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13175	43	2	2	Noel	2035-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13176	43	2	2	Nouvel An	2036-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13177	43	2	2	Lundi de Paques	2036-04-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13178	43	2	2	Fete du Travail	2036-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13179	43	2	2	Ascension	2036-05-22	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13180	43	2	2	Lundi de Pentecote	2036-06-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13181	43	2	2	Fete de la Communaute flamande	2036-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13182	43	2	2	Fete Nationale	2036-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13183	43	2	2	Assomption	2036-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13184	43	2	2	Fete de la Communaute francaise	2036-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13185	43	2	2	Toussaint	2036-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13186	43	2	2	Jour des Morts	2036-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13187	43	2	2	Armistice	2036-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13188	43	2	2	Fete du Roi / Communaute germanophone	2036-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13189	43	2	2	Noel	2036-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13190	43	2	2	Nouvel An	2037-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13191	43	2	2	Lundi de Paques	2037-04-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13192	43	2	2	Fete du Travail	2037-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13193	43	2	2	Ascension	2037-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13194	43	2	2	Lundi de Pentecote	2037-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13195	43	2	2	Fete de la Communaute flamande	2037-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13196	43	2	2	Fete Nationale	2037-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13197	43	2	2	Assomption	2037-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13198	43	2	2	Fete de la Communaute francaise	2037-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13199	43	2	2	Toussaint	2037-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13200	43	2	2	Jour des Morts	2037-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13201	43	2	2	Armistice	2037-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13202	43	2	2	Fete du Roi / Communaute germanophone	2037-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13203	43	2	2	Noel	2037-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13204	43	2	2	Nouvel An	2038-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13205	43	2	2	Lundi de Paques	2038-04-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13206	43	2	2	Fete du Travail	2038-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13207	43	2	2	Ascension	2038-06-03	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13208	43	2	2	Lundi de Pentecote	2038-06-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13209	43	2	2	Fete de la Communaute flamande	2038-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13210	43	2	2	Fete Nationale	2038-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13211	43	2	2	Assomption	2038-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13212	43	2	2	Fete de la Communaute francaise	2038-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13213	43	2	2	Toussaint	2038-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13214	43	2	2	Jour des Morts	2038-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13215	43	2	2	Armistice	2038-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13216	43	2	2	Fete du Roi / Communaute germanophone	2038-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13217	43	2	2	Noel	2038-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13218	43	2	2	Nouvel An	2039-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13219	43	2	2	Lundi de Paques	2039-04-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13220	43	2	2	Fete du Travail	2039-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13221	43	2	2	Ascension	2039-05-19	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13222	43	2	2	Lundi de Pentecote	2039-05-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13223	43	2	2	Fete de la Communaute flamande	2039-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13224	43	2	2	Fete Nationale	2039-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13225	43	2	2	Assomption	2039-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13226	43	2	2	Fete de la Communaute francaise	2039-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13227	43	2	2	Toussaint	2039-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13228	43	2	2	Jour des Morts	2039-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13229	43	2	2	Armistice	2039-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13230	43	2	2	Fete du Roi / Communaute germanophone	2039-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13231	43	2	2	Noel	2039-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13232	43	2	2	Nouvel An	2040-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13233	43	2	2	Lundi de Paques	2040-04-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13234	43	2	2	Fete du Travail	2040-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13235	43	2	2	Ascension	2040-05-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13236	43	2	2	Lundi de Pentecote	2040-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13237	43	2	2	Fete de la Communaute flamande	2040-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13238	43	2	2	Fete Nationale	2040-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13239	43	2	2	Assomption	2040-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13240	43	2	2	Fete de la Communaute francaise	2040-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13241	43	2	2	Toussaint	2040-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13242	43	2	2	Jour des Morts	2040-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13243	43	2	2	Armistice	2040-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13244	43	2	2	Fete du Roi / Communaute germanophone	2040-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13245	43	2	2	Noel	2040-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13246	43	2	2	Nouvel An	2041-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13247	43	2	2	Lundi de Paques	2041-04-22	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13248	43	2	2	Fete du Travail	2041-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13249	43	2	2	Ascension	2041-05-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13250	43	2	2	Lundi de Pentecote	2041-06-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13251	43	2	2	Fete de la Communaute flamande	2041-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13252	43	2	2	Fete Nationale	2041-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13253	43	2	2	Assomption	2041-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13254	43	2	2	Fete de la Communaute francaise	2041-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13255	43	2	2	Toussaint	2041-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13256	43	2	2	Jour des Morts	2041-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13257	43	2	2	Armistice	2041-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13258	43	2	2	Fete du Roi / Communaute germanophone	2041-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13259	43	2	2	Noel	2041-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13260	43	2	2	Nouvel An	2042-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13261	43	2	2	Lundi de Paques	2042-04-07	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13262	43	2	2	Fete du Travail	2042-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13263	43	2	2	Ascension	2042-05-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13264	43	2	2	Lundi de Pentecote	2042-05-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13265	43	2	2	Fete de la Communaute flamande	2042-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13266	43	2	2	Fete Nationale	2042-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13267	43	2	2	Assomption	2042-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13268	43	2	2	Fete de la Communaute francaise	2042-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13269	43	2	2	Toussaint	2042-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13270	43	2	2	Jour des Morts	2042-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13271	43	2	2	Armistice	2042-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13272	43	2	2	Fete du Roi / Communaute germanophone	2042-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13273	43	2	2	Noel	2042-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13274	43	2	2	Nouvel An	2043-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13275	43	2	2	Lundi de Paques	2043-03-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13276	43	2	2	Fete du Travail	2043-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13277	43	2	2	Ascension	2043-05-07	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13278	43	2	2	Lundi de Pentecote	2043-05-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13279	43	2	2	Fete de la Communaute flamande	2043-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13280	43	2	2	Fete Nationale	2043-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13281	43	2	2	Assomption	2043-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13282	43	2	2	Fete de la Communaute francaise	2043-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13283	43	2	2	Toussaint	2043-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13284	43	2	2	Jour des Morts	2043-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13285	43	2	2	Armistice	2043-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13286	43	2	2	Fete du Roi / Communaute germanophone	2043-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13287	43	2	2	Noel	2043-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13288	43	2	2	Nouvel An	2044-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13289	43	2	2	Lundi de Paques	2044-04-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13290	43	2	2	Fete du Travail	2044-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13291	43	2	2	Ascension	2044-05-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13292	43	2	2	Lundi de Pentecote	2044-06-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13293	43	2	2	Fete de la Communaute flamande	2044-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13294	43	2	2	Fete Nationale	2044-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13295	43	2	2	Assomption	2044-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13296	43	2	2	Fete de la Communaute francaise	2044-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13297	43	2	2	Toussaint	2044-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13298	43	2	2	Jour des Morts	2044-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13299	43	2	2	Armistice	2044-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13300	43	2	2	Fete du Roi / Communaute germanophone	2044-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13301	43	2	2	Noel	2044-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13302	43	2	2	Nouvel An	2045-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13303	43	2	2	Lundi de Paques	2045-04-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13304	43	2	2	Fete du Travail	2045-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13305	43	2	2	Ascension	2045-05-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13306	43	2	2	Lundi de Pentecote	2045-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13307	43	2	2	Fete de la Communaute flamande	2045-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13308	43	2	2	Fete Nationale	2045-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13309	43	2	2	Assomption	2045-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13310	43	2	2	Fete de la Communaute francaise	2045-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13311	43	2	2	Toussaint	2045-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13312	43	2	2	Jour des Morts	2045-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13313	43	2	2	Armistice	2045-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13314	43	2	2	Fete du Roi / Communaute germanophone	2045-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13315	43	2	2	Noel	2045-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13316	43	2	2	Nouvel An	2046-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13317	43	2	2	Lundi de Paques	2046-03-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13318	43	2	2	Fete du Travail	2046-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13319	43	2	2	Ascension	2046-05-03	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13320	43	2	2	Lundi de Pentecote	2046-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13321	43	2	2	Fete de la Communaute flamande	2046-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13322	43	2	2	Fete Nationale	2046-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13323	43	2	2	Assomption	2046-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13324	43	2	2	Fete de la Communaute francaise	2046-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13325	43	2	2	Toussaint	2046-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13326	43	2	2	Jour des Morts	2046-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13327	43	2	2	Armistice	2046-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13328	43	2	2	Fete du Roi / Communaute germanophone	2046-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13329	43	2	2	Noel	2046-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13330	43	2	2	Nouvel An	2047-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13331	43	2	2	Lundi de Paques	2047-04-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13332	43	2	2	Fete du Travail	2047-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13333	43	2	2	Ascension	2047-05-23	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13334	43	2	2	Lundi de Pentecote	2047-06-03	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13335	43	2	2	Fete de la Communaute flamande	2047-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13336	43	2	2	Fete Nationale	2047-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13337	43	2	2	Assomption	2047-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13338	43	2	2	Fete de la Communaute francaise	2047-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13339	43	2	2	Toussaint	2047-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13340	43	2	2	Jour des Morts	2047-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13341	43	2	2	Armistice	2047-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13342	43	2	2	Fete du Roi / Communaute germanophone	2047-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13343	43	2	2	Noel	2047-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13344	43	2	2	Nouvel An	2048-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13345	43	2	2	Lundi de Paques	2048-04-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13346	43	2	2	Fete du Travail	2048-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13347	43	2	2	Ascension	2048-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13348	43	2	2	Lundi de Pentecote	2048-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13349	43	2	2	Fete de la Communaute flamande	2048-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13350	43	2	2	Fete Nationale	2048-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13351	43	2	2	Assomption	2048-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13352	43	2	2	Fete de la Communaute francaise	2048-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13353	43	2	2	Toussaint	2048-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13354	43	2	2	Jour des Morts	2048-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13355	43	2	2	Armistice	2048-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13356	43	2	2	Fete du Roi / Communaute germanophone	2048-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13357	43	2	2	Noel	2048-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13358	43	2	2	Nouvel An	2049-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13359	43	2	2	Lundi de Paques	2049-04-19	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13360	43	2	2	Fete du Travail	2049-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13361	43	2	2	Ascension	2049-05-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13362	43	2	2	Lundi de Pentecote	2049-06-07	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13363	43	2	2	Fete de la Communaute flamande	2049-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13364	43	2	2	Fete Nationale	2049-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13365	43	2	2	Assomption	2049-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13366	43	2	2	Fete de la Communaute francaise	2049-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13367	43	2	2	Toussaint	2049-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13368	43	2	2	Jour des Morts	2049-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13369	43	2	2	Armistice	2049-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13370	43	2	2	Fete du Roi / Communaute germanophone	2049-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13371	43	2	2	Noel	2049-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13372	43	2	2	Nouvel An	2050-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13373	43	2	2	Lundi de Paques	2050-04-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13374	43	2	2	Fete du Travail	2050-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13375	43	2	2	Ascension	2050-05-19	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13376	43	2	2	Lundi de Pentecote	2050-05-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13377	43	2	2	Fete de la Communaute flamande	2050-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13378	43	2	2	Fete Nationale	2050-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13379	43	2	2	Assomption	2050-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13380	43	2	2	Fete de la Communaute francaise	2050-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13381	43	2	2	Toussaint	2050-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13382	43	2	2	Jour des Morts	2050-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13383	43	2	2	Armistice	2050-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13384	43	2	2	Fete du Roi / Communaute germanophone	2050-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13385	43	2	2	Noel	2050-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13386	48	2	2	Nouvel An	1991-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13387	48	2	2	Lundi de Pâques	1991-04-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13388	48	2	2	Fête du Travail	1991-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13389	48	2	2	Ascension	1991-05-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13390	48	2	2	Lundi de Pentecôte	1991-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13391	48	2	2	Fête Nationale	1991-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13392	48	2	2	Assomption	1991-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13393	48	2	2	Toussaint	1991-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13394	48	2	2	Armistice	1991-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13395	48	2	2	Noël	1991-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13396	48	2	2	Nouvel An	1992-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13397	48	2	2	Lundi de Pâques	1992-04-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13398	48	2	2	Fête du Travail	1992-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13399	48	2	2	Ascension	1992-05-28	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13400	48	2	2	Lundi de Pentecôte	1992-06-08	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13401	48	2	2	Fête Nationale	1992-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13402	48	2	2	Assomption	1992-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13403	48	2	2	Toussaint	1992-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13404	48	2	2	Armistice	1992-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13405	48	2	2	Noël	1992-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13406	48	2	2	Nouvel An	1993-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13407	48	2	2	Lundi de Pâques	1993-04-12	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13408	48	2	2	Fête du Travail	1993-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13409	48	2	2	Ascension	1993-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13410	48	2	2	Lundi de Pentecôte	1993-05-31	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13411	48	2	2	Fête Nationale	1993-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13412	48	2	2	Assomption	1993-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13413	48	2	2	Toussaint	1993-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13414	48	2	2	Armistice	1993-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13415	48	2	2	Noël	1993-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13416	48	2	2	Nouvel An	1994-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13417	48	2	2	Lundi de Pâques	1994-04-04	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13418	48	2	2	Fête du Travail	1994-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13419	48	2	2	Ascension	1994-05-12	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13420	48	2	2	Lundi de Pentecôte	1994-05-23	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13421	48	2	2	Fête Nationale	1994-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13422	48	2	2	Assomption	1994-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13423	48	2	2	Toussaint	1994-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13424	48	2	2	Armistice	1994-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13425	48	2	2	Noël	1994-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13426	48	2	2	Nouvel An	1995-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13427	48	2	2	Lundi de Pâques	1995-04-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13428	48	2	2	Fête du Travail	1995-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13429	48	2	2	Ascension	1995-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13430	48	2	2	Lundi de Pentecôte	1995-06-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13431	48	2	2	Fête Nationale	1995-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13432	48	2	2	Assomption	1995-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13433	48	2	2	Toussaint	1995-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13434	48	2	2	Armistice	1995-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13435	48	2	2	Noël	1995-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13436	48	2	2	Nouvel An	1996-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13437	48	2	2	Lundi de Pâques	1996-04-08	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13438	48	2	2	Fête du Travail	1996-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13439	48	2	2	Ascension	1996-05-16	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13440	48	2	2	Lundi de Pentecôte	1996-05-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13441	48	2	2	Fête Nationale	1996-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13442	48	2	2	Assomption	1996-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13443	48	2	2	Toussaint	1996-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13444	48	2	2	Armistice	1996-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13445	48	2	2	Noël	1996-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13446	48	2	2	Nouvel An	1997-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13447	48	2	2	Lundi de Pâques	1997-03-31	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13448	48	2	2	Fête du Travail	1997-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13449	48	2	2	Ascension	1997-05-08	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13450	48	2	2	Lundi de Pentecôte	1997-05-19	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13451	48	2	2	Fête Nationale	1997-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13452	48	2	2	Assomption	1997-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13453	48	2	2	Toussaint	1997-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13454	48	2	2	Armistice	1997-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13455	48	2	2	Noël	1997-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13456	48	2	2	Nouvel An	1998-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13457	48	2	2	Lundi de Pâques	1998-04-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13458	48	2	2	Fête du Travail	1998-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13459	48	2	2	Ascension	1998-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13460	48	2	2	Lundi de Pentecôte	1998-06-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13461	48	2	2	Fête Nationale	1998-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13462	48	2	2	Assomption	1998-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13463	48	2	2	Toussaint	1998-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13464	48	2	2	Armistice	1998-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13465	48	2	2	Noël	1998-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13466	48	2	2	Nouvel An	1999-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13467	48	2	2	Lundi de Pâques	1999-04-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13468	48	2	2	Fête du Travail	1999-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13469	48	2	2	Ascension	1999-05-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13470	48	2	2	Lundi de Pentecôte	1999-05-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13471	48	2	2	Fête Nationale	1999-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13472	48	2	2	Assomption	1999-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13473	48	2	2	Toussaint	1999-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13474	48	2	2	Armistice	1999-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13475	48	2	2	Noël	1999-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13476	48	2	2	Nouvel An	2000-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13477	48	2	2	Lundi de Pâques	2000-04-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13478	48	2	2	Fête du Travail	2000-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13479	48	2	2	Ascension	2000-06-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13480	48	2	2	Lundi de Pentecôte	2000-06-12	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13481	48	2	2	Fête Nationale	2000-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13482	48	2	2	Assomption	2000-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13483	48	2	2	Toussaint	2000-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13484	48	2	2	Armistice	2000-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13485	48	2	2	Noël	2000-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13486	48	2	2	Nouvel An	2001-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13487	48	2	2	Lundi de Pâques	2001-04-16	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13488	48	2	2	Fête du Travail	2001-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13489	48	2	2	Ascension	2001-05-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13490	48	2	2	Lundi de Pentecôte	2001-06-04	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13491	48	2	2	Fête Nationale	2001-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13492	48	2	2	Assomption	2001-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13493	48	2	2	Toussaint	2001-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13494	48	2	2	Armistice	2001-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13495	48	2	2	Noël	2001-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13496	48	2	2	Nouvel An	2002-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13497	48	2	2	Lundi de Pâques	2002-04-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13498	48	2	2	Fête du Travail	2002-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13499	48	2	2	Ascension	2002-05-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13500	48	2	2	Lundi de Pentecôte	2002-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13501	48	2	2	Fête Nationale	2002-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13502	48	2	2	Assomption	2002-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13503	48	2	2	Toussaint	2002-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13504	48	2	2	Armistice	2002-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13505	48	2	2	Noël	2002-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13506	48	2	2	Nouvel An	2003-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13507	48	2	2	Lundi de Pâques	2003-04-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13508	48	2	2	Fête du Travail	2003-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13509	48	2	2	Ascension	2003-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13510	48	2	2	Lundi de Pentecôte	2003-06-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13511	48	2	2	Fête Nationale	2003-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13512	48	2	2	Assomption	2003-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13513	48	2	2	Toussaint	2003-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13514	48	2	2	Armistice	2003-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13515	48	2	2	Noël	2003-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13516	48	2	2	Nouvel An	2004-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13517	48	2	2	Lundi de Pâques	2004-04-12	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13518	48	2	2	Fête du Travail	2004-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13519	48	2	2	Ascension	2004-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13520	48	2	2	Lundi de Pentecôte	2004-05-31	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13521	48	2	2	Fête Nationale	2004-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13522	48	2	2	Assomption	2004-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13523	48	2	2	Toussaint	2004-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13524	48	2	2	Armistice	2004-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13525	48	2	2	Noël	2004-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13526	48	2	2	Nouvel An	2005-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13527	48	2	2	Lundi de Pâques	2005-03-28	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13528	48	2	2	Fête du Travail	2005-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13529	48	2	2	Ascension	2005-05-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13530	48	2	2	Lundi de Pentecôte	2005-05-16	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13531	48	2	2	Fête Nationale	2005-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13532	48	2	2	Assomption	2005-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13533	48	2	2	Toussaint	2005-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13534	48	2	2	Armistice	2005-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13535	48	2	2	Noël	2005-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13536	48	2	2	Nouvel An	2006-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13537	48	2	2	Lundi de Pâques	2006-04-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13538	48	2	2	Fête du Travail	2006-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13539	48	2	2	Ascension	2006-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13540	48	2	2	Lundi de Pentecôte	2006-06-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13541	48	2	2	Fête Nationale	2006-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13542	48	2	2	Assomption	2006-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13543	48	2	2	Toussaint	2006-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13544	48	2	2	Armistice	2006-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13545	48	2	2	Noël	2006-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13546	48	2	2	Nouvel An	2007-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13547	48	2	2	Lundi de Pâques	2007-04-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13548	48	2	2	Fête du Travail	2007-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13549	48	2	2	Ascension	2007-05-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13550	48	2	2	Lundi de Pentecôte	2007-05-28	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13551	48	2	2	Fête Nationale	2007-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13552	48	2	2	Assomption	2007-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13553	48	2	2	Toussaint	2007-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13554	48	2	2	Armistice	2007-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13555	48	2	2	Noël	2007-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13556	48	2	2	Nouvel An	2008-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13557	48	2	2	Lundi de Pâques	2008-03-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13558	48	2	2	Fête du Travail	2008-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13559	48	2	2	Ascension	2008-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13560	48	2	2	Lundi de Pentecôte	2008-05-12	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13561	48	2	2	Fête Nationale	2008-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13562	48	2	2	Assomption	2008-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13563	48	2	2	Toussaint	2008-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13564	48	2	2	Armistice	2008-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13565	48	2	2	Noël	2008-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13566	48	2	2	Nouvel An	2009-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13567	48	2	2	Lundi de Pâques	2009-04-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13568	48	2	2	Fête du Travail	2009-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13569	48	2	2	Ascension	2009-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13570	48	2	2	Lundi de Pentecôte	2009-06-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13571	48	2	2	Fête Nationale	2009-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13572	48	2	2	Assomption	2009-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13573	48	2	2	Toussaint	2009-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13574	48	2	2	Armistice	2009-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13575	48	2	2	Noël	2009-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13576	48	2	2	Nouvel An	2010-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13577	48	2	2	Lundi de Pâques	2010-04-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13578	48	2	2	Fête du Travail	2010-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13579	48	2	2	Ascension	2010-05-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13580	48	2	2	Lundi de Pentecôte	2010-05-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13581	48	2	2	Fête Nationale	2010-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13582	48	2	2	Assomption	2010-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13583	48	2	2	Toussaint	2010-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13584	48	2	2	Armistice	2010-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13585	48	2	2	Noël	2010-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13586	48	2	2	Nouvel An	2011-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13587	48	2	2	Lundi de Pâques	2011-04-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13588	48	2	2	Fête du Travail	2011-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13589	48	2	2	Ascension	2011-06-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13590	48	2	2	Lundi de Pentecôte	2011-06-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13591	48	2	2	Fête Nationale	2011-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13592	48	2	2	Assomption	2011-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13593	48	2	2	Toussaint	2011-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13594	48	2	2	Armistice	2011-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13595	48	2	2	Noël	2011-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13596	48	2	2	Nouvel An	2012-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13597	48	2	2	Lundi de Pâques	2012-04-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13598	48	2	2	Fête du Travail	2012-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13599	48	2	2	Ascension	2012-05-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13600	48	2	2	Lundi de Pentecôte	2012-05-28	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13601	48	2	2	Fête Nationale	2012-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13602	48	2	2	Assomption	2012-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13603	48	2	2	Toussaint	2012-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13604	48	2	2	Armistice	2012-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13605	48	2	2	Noël	2012-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13606	48	2	2	Nouvel An	2013-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13607	48	2	2	Lundi de Pâques	2013-04-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13608	48	2	2	Fête du Travail	2013-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13609	48	2	2	Ascension	2013-05-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13610	48	2	2	Lundi de Pentecôte	2013-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13611	48	2	2	Fête Nationale	2013-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13612	48	2	2	Assomption	2013-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13613	48	2	2	Toussaint	2013-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13614	48	2	2	Armistice	2013-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13615	48	2	2	Noël	2013-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13616	48	2	2	Nouvel An	2014-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13617	48	2	2	Lundi de Pâques	2014-04-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13618	48	2	2	Fête du Travail	2014-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13619	48	2	2	Ascension	2014-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13620	48	2	2	Lundi de Pentecôte	2014-06-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13621	48	2	2	Fête Nationale	2014-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13622	48	2	2	Assomption	2014-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13623	48	2	2	Toussaint	2014-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13624	48	2	2	Armistice	2014-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13625	48	2	2	Noël	2014-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13626	48	2	2	Nouvel An	2015-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13627	48	2	2	Lundi de Pâques	2015-04-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13628	48	2	2	Fête du Travail	2015-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13629	48	2	2	Ascension	2015-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13630	48	2	2	Lundi de Pentecôte	2015-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13631	48	2	2	Fête Nationale	2015-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13632	48	2	2	Assomption	2015-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13633	48	2	2	Toussaint	2015-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13634	48	2	2	Armistice	2015-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13635	48	2	2	Noël	2015-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13636	48	2	2	Nouvel An	2016-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13637	48	2	2	Lundi de Pâques	2016-03-28	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13638	48	2	2	Fête du Travail	2016-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13639	48	2	2	Ascension	2016-05-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13640	48	2	2	Lundi de Pentecôte	2016-05-16	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13641	48	2	2	Fête Nationale	2016-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13642	48	2	2	Assomption	2016-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13643	48	2	2	Toussaint	2016-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13644	48	2	2	Armistice	2016-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13645	48	2	2	Noël	2016-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13646	48	2	2	Nouvel An	2017-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13647	48	2	2	Lundi de Pâques	2017-04-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13648	48	2	2	Fête du Travail	2017-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13649	48	2	2	Ascension	2017-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13650	48	2	2	Lundi de Pentecôte	2017-06-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13651	48	2	2	Fête Nationale	2017-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13652	48	2	2	Assomption	2017-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13653	48	2	2	Toussaint	2017-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13654	48	2	2	Armistice	2017-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13655	48	2	2	Noël	2017-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13656	48	2	2	Nouvel An	2018-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13657	48	2	2	Lundi de Pâques	2018-04-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13658	48	2	2	Fête du Travail	2018-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13659	48	2	2	Ascension	2018-05-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13660	48	2	2	Lundi de Pentecôte	2018-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13661	48	2	2	Fête Nationale	2018-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13662	48	2	2	Assomption	2018-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13663	48	2	2	Toussaint	2018-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13664	48	2	2	Armistice	2018-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13665	48	2	2	Noël	2018-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13666	48	2	2	Nouvel An	2019-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13667	48	2	2	Lundi de Pâques	2019-04-22	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13668	48	2	2	Fête du Travail	2019-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13669	48	2	2	Ascension	2019-05-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13670	48	2	2	Lundi de Pentecôte	2019-06-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13671	48	2	2	Fête Nationale	2019-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13672	48	2	2	Assomption	2019-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13673	48	2	2	Toussaint	2019-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13674	48	2	2	Armistice	2019-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13675	48	2	2	Noël	2019-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13676	48	2	2	Nouvel An	2020-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13677	48	2	2	Lundi de Pâques	2020-04-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13678	48	2	2	Fête du Travail	2020-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13679	48	2	2	Ascension	2020-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13680	48	2	2	Lundi de Pentecôte	2020-06-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13681	48	2	2	Fête Nationale	2020-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13682	48	2	2	Assomption	2020-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13683	48	2	2	Toussaint	2020-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13684	48	2	2	Armistice	2020-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13685	48	2	2	Noël	2020-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13686	48	2	2	Nouvel An	2021-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13687	48	2	2	Lundi de Pâques	2021-04-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13688	48	2	2	Fête du Travail	2021-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13689	48	2	2	Ascension	2021-05-13	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13690	48	2	2	Lundi de Pentecôte	2021-05-24	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13691	48	2	2	Fête Nationale	2021-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13692	48	2	2	Assomption	2021-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13693	48	2	2	Toussaint	2021-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13694	48	2	2	Armistice	2021-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13695	48	2	2	Noël	2021-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13696	48	2	2	Nouvel An	2022-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13697	48	2	2	Lundi de Pâques	2022-04-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13698	48	2	2	Fête du Travail	2022-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13699	48	2	2	Ascension	2022-05-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13700	48	2	2	Lundi de Pentecôte	2022-06-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13701	48	2	2	Fête Nationale	2022-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13702	48	2	2	Assomption	2022-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13703	48	2	2	Toussaint	2022-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13704	48	2	2	Armistice	2022-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13705	48	2	2	Noël	2022-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13706	48	2	2	Nouvel An	2023-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13707	48	2	2	Lundi de Pâques	2023-04-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13708	48	2	2	Fête du Travail	2023-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13709	48	2	2	Ascension	2023-05-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13710	48	2	2	Lundi de Pentecôte	2023-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13711	48	2	2	Fête Nationale	2023-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13712	48	2	2	Assomption	2023-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13713	48	2	2	Toussaint	2023-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13714	48	2	2	Armistice	2023-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13715	48	2	2	Noël	2023-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13716	48	2	2	Nouvel An	2024-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13717	48	2	2	Lundi de Pâques	2024-04-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13718	48	2	2	Fête du Travail	2024-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13719	48	2	2	Ascension	2024-05-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13720	48	2	2	Lundi de Pentecôte	2024-05-20	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13721	48	2	2	Fête Nationale	2024-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13722	48	2	2	Assomption	2024-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13723	48	2	2	Toussaint	2024-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13724	48	2	2	Armistice	2024-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13725	48	2	2	Noël	2024-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13726	48	2	2	Nouvel An	2025-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13727	48	2	2	Lundi de Pâques	2025-04-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13728	48	2	2	Fête du Travail	2025-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13729	48	2	2	Ascension	2025-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13730	48	2	2	Lundi de Pentecôte	2025-06-09	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13731	48	2	2	Fête Nationale	2025-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13732	48	2	2	Assomption	2025-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13733	48	2	2	Toussaint	2025-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13734	48	2	2	Armistice	2025-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13735	48	2	2	Noël	2025-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13736	48	2	2	Nouvel An	2026-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13737	48	2	2	Lundi de Pâques	2026-04-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13738	48	2	2	Fête du Travail	2026-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13739	48	2	2	Ascension	2026-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13740	48	2	2	Lundi de Pentecôte	2026-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13741	48	2	2	Fête Nationale	2026-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13742	48	2	2	Assomption	2026-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13743	48	2	2	Toussaint	2026-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13744	48	2	2	Armistice	2026-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13745	48	2	2	Noël	2026-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13746	48	2	2	Nouvel An	2027-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13747	48	2	2	Lundi de Pâques	2027-03-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13748	48	2	2	Fête du Travail	2027-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13749	48	2	2	Ascension	2027-06-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13750	48	2	2	Lundi de Pentecôte	2027-05-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13751	48	2	2	Fête Nationale	2027-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13752	48	2	2	Assomption	2027-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13753	48	2	2	Toussaint	2027-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13754	48	2	2	Armistice	2027-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13755	48	2	2	Noël	2027-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13756	48	2	2	Nouvel An	2028-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13757	48	2	2	Lundi de Pâques	2028-04-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13758	48	2	2	Fête du Travail	2028-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13759	48	2	2	Ascension	2028-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13760	48	2	2	Lundi de Pentecôte	2028-06-05	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13761	48	2	2	Fête Nationale	2028-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13762	48	2	2	Assomption	2028-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13763	48	2	2	Toussaint	2028-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13764	48	2	2	Armistice	2028-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13765	48	2	2	Noël	2028-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13766	48	2	2	Nouvel An	2029-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13767	48	2	2	Lundi de Pâques	2029-04-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13768	48	2	2	Fête du Travail	2029-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13769	48	2	2	Ascension	2029-05-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13770	48	2	2	Lundi de Pentecôte	2029-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13771	48	2	2	Fête Nationale	2029-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13772	48	2	2	Assomption	2029-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13773	48	2	2	Toussaint	2029-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13774	48	2	2	Armistice	2029-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13775	48	2	2	Noël	2029-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13776	48	2	2	Nouvel An	2030-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13777	48	2	2	Lundi de Pâques	2030-04-22	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13778	48	2	2	Fête du Travail	2030-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13779	48	2	2	Ascension	2030-05-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13780	48	2	2	Lundi de Pentecôte	2030-06-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13781	48	2	2	Fête Nationale	2030-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13782	48	2	2	Assomption	2030-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13783	48	2	2	Toussaint	2030-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13784	48	2	2	Armistice	2030-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13785	48	2	2	Noël	2030-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13786	48	2	2	Nouvel An	2031-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13787	48	2	2	Lundi de Pâques	2031-04-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13788	48	2	2	Fête du Travail	2031-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13789	48	2	2	Ascension	2031-05-22	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13790	48	2	2	Lundi de Pentecôte	2031-06-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13791	48	2	2	Fête Nationale	2031-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13792	48	2	2	Assomption	2031-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13793	48	2	2	Toussaint	2031-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13794	48	2	2	Armistice	2031-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13795	48	2	2	Noël	2031-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13796	48	2	2	Nouvel An	2032-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13797	48	2	2	Lundi de Pâques	2032-03-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13798	48	2	2	Fête du Travail	2032-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13799	48	2	2	Ascension	2032-05-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13800	48	2	2	Lundi de Pentecôte	2032-05-17	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13801	48	2	2	Fête Nationale	2032-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13802	48	2	2	Assomption	2032-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13803	48	2	2	Toussaint	2032-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13804	48	2	2	Armistice	2032-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13805	48	2	2	Noël	2032-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13806	48	2	2	Nouvel An	2033-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13807	48	2	2	Lundi de Pâques	2033-04-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13808	48	2	2	Fête du Travail	2033-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13809	48	2	2	Ascension	2033-05-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13810	48	2	2	Lundi de Pentecôte	2033-06-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13811	48	2	2	Fête Nationale	2033-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13812	48	2	2	Assomption	2033-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13813	48	2	2	Toussaint	2033-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13814	48	2	2	Armistice	2033-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13815	48	2	2	Noël	2033-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13816	48	2	2	Nouvel An	2034-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13817	48	2	2	Lundi de Paques	2034-04-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13818	48	2	2	Fete du Travail	2034-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13819	48	2	2	Ascension	2034-05-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13820	48	2	2	Lundi de Pentecote	2034-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13821	48	2	2	Fete de la Communaute flamande	2034-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13822	48	2	2	Fete Nationale	2034-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13823	48	2	2	Assomption	2034-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13824	48	2	2	Fete de la Communaute francaise	2034-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13825	48	2	2	Toussaint	2034-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13826	48	2	2	Jour des Morts	2034-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13827	48	2	2	Armistice	2034-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13828	48	2	2	Fete du Roi / Communaute germanophone	2034-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13829	48	2	2	Noel	2034-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13830	48	2	2	Nouvel An	2035-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13831	48	2	2	Lundi de Paques	2035-03-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13832	48	2	2	Fete du Travail	2035-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13833	48	2	2	Ascension	2035-05-03	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13834	48	2	2	Lundi de Pentecote	2035-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13835	48	2	2	Fete de la Communaute flamande	2035-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13836	48	2	2	Fete Nationale	2035-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13837	48	2	2	Assomption	2035-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13838	48	2	2	Fete de la Communaute francaise	2035-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13839	48	2	2	Toussaint	2035-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13840	48	2	2	Jour des Morts	2035-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13841	48	2	2	Armistice	2035-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13842	48	2	2	Fete du Roi / Communaute germanophone	2035-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13843	48	2	2	Noel	2035-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13844	48	2	2	Nouvel An	2036-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13845	48	2	2	Lundi de Paques	2036-04-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13846	48	2	2	Fete du Travail	2036-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13847	48	2	2	Ascension	2036-05-22	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13848	48	2	2	Lundi de Pentecote	2036-06-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13849	48	2	2	Fete de la Communaute flamande	2036-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13850	48	2	2	Fete Nationale	2036-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13851	48	2	2	Assomption	2036-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13852	48	2	2	Fete de la Communaute francaise	2036-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13853	48	2	2	Toussaint	2036-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13854	48	2	2	Jour des Morts	2036-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13855	48	2	2	Armistice	2036-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13856	48	2	2	Fete du Roi / Communaute germanophone	2036-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13857	48	2	2	Noel	2036-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13858	48	2	2	Nouvel An	2037-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13859	48	2	2	Lundi de Paques	2037-04-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13860	48	2	2	Fete du Travail	2037-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13861	48	2	2	Ascension	2037-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13862	48	2	2	Lundi de Pentecote	2037-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13863	48	2	2	Fete de la Communaute flamande	2037-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13864	48	2	2	Fete Nationale	2037-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13865	48	2	2	Assomption	2037-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13866	48	2	2	Fete de la Communaute francaise	2037-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13867	48	2	2	Toussaint	2037-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13868	48	2	2	Jour des Morts	2037-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13869	48	2	2	Armistice	2037-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13870	48	2	2	Fete du Roi / Communaute germanophone	2037-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13871	48	2	2	Noel	2037-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13872	48	2	2	Nouvel An	2038-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13873	48	2	2	Lundi de Paques	2038-04-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13874	48	2	2	Fete du Travail	2038-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13875	48	2	2	Ascension	2038-06-03	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13876	48	2	2	Lundi de Pentecote	2038-06-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13877	48	2	2	Fete de la Communaute flamande	2038-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13878	48	2	2	Fete Nationale	2038-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13879	48	2	2	Assomption	2038-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13880	48	2	2	Fete de la Communaute francaise	2038-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13881	48	2	2	Toussaint	2038-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13882	48	2	2	Jour des Morts	2038-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13883	48	2	2	Armistice	2038-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13884	48	2	2	Fete du Roi / Communaute germanophone	2038-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13885	48	2	2	Noel	2038-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13886	48	2	2	Nouvel An	2039-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13887	48	2	2	Lundi de Paques	2039-04-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13888	48	2	2	Fete du Travail	2039-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13889	48	2	2	Ascension	2039-05-19	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13890	48	2	2	Lundi de Pentecote	2039-05-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13891	48	2	2	Fete de la Communaute flamande	2039-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13892	48	2	2	Fete Nationale	2039-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13893	48	2	2	Assomption	2039-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13894	48	2	2	Fete de la Communaute francaise	2039-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13895	48	2	2	Toussaint	2039-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13896	48	2	2	Jour des Morts	2039-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13897	48	2	2	Armistice	2039-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13898	48	2	2	Fete du Roi / Communaute germanophone	2039-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13899	48	2	2	Noel	2039-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13900	48	2	2	Nouvel An	2040-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13901	48	2	2	Lundi de Paques	2040-04-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13902	48	2	2	Fete du Travail	2040-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13903	48	2	2	Ascension	2040-05-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13904	48	2	2	Lundi de Pentecote	2040-05-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13905	48	2	2	Fete de la Communaute flamande	2040-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13906	48	2	2	Fete Nationale	2040-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13907	48	2	2	Assomption	2040-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13908	48	2	2	Fete de la Communaute francaise	2040-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13909	48	2	2	Toussaint	2040-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13910	48	2	2	Jour des Morts	2040-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13911	48	2	2	Armistice	2040-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13912	48	2	2	Fete du Roi / Communaute germanophone	2040-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13913	48	2	2	Noel	2040-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13914	48	2	2	Nouvel An	2041-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13915	48	2	2	Lundi de Paques	2041-04-22	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13916	48	2	2	Fete du Travail	2041-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13917	48	2	2	Ascension	2041-05-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13918	48	2	2	Lundi de Pentecote	2041-06-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13919	48	2	2	Fete de la Communaute flamande	2041-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13920	48	2	2	Fete Nationale	2041-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13921	48	2	2	Assomption	2041-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13922	48	2	2	Fete de la Communaute francaise	2041-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13923	48	2	2	Toussaint	2041-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13924	48	2	2	Jour des Morts	2041-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13925	48	2	2	Armistice	2041-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13926	48	2	2	Fete du Roi / Communaute germanophone	2041-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13927	48	2	2	Noel	2041-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13928	48	2	2	Nouvel An	2042-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13929	48	2	2	Lundi de Paques	2042-04-07	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13930	48	2	2	Fete du Travail	2042-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13931	48	2	2	Ascension	2042-05-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13932	48	2	2	Lundi de Pentecote	2042-05-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13933	48	2	2	Fete de la Communaute flamande	2042-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13934	48	2	2	Fete Nationale	2042-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13935	48	2	2	Assomption	2042-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13936	48	2	2	Fete de la Communaute francaise	2042-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13937	48	2	2	Toussaint	2042-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13938	48	2	2	Jour des Morts	2042-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13939	48	2	2	Armistice	2042-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13940	48	2	2	Fete du Roi / Communaute germanophone	2042-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13941	48	2	2	Noel	2042-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13942	48	2	2	Nouvel An	2043-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13943	48	2	2	Lundi de Paques	2043-03-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13944	48	2	2	Fete du Travail	2043-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13945	48	2	2	Ascension	2043-05-07	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13946	48	2	2	Lundi de Pentecote	2043-05-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13947	48	2	2	Fete de la Communaute flamande	2043-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13948	48	2	2	Fete Nationale	2043-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13949	48	2	2	Assomption	2043-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13950	48	2	2	Fete de la Communaute francaise	2043-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13951	48	2	2	Toussaint	2043-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13952	48	2	2	Jour des Morts	2043-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13953	48	2	2	Armistice	2043-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13954	48	2	2	Fete du Roi / Communaute germanophone	2043-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13955	48	2	2	Noel	2043-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13956	48	2	2	Nouvel An	2044-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13957	48	2	2	Lundi de Paques	2044-04-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13958	48	2	2	Fete du Travail	2044-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13959	48	2	2	Ascension	2044-05-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13960	48	2	2	Lundi de Pentecote	2044-06-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13961	48	2	2	Fete de la Communaute flamande	2044-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13962	48	2	2	Fete Nationale	2044-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13963	48	2	2	Assomption	2044-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13964	48	2	2	Fete de la Communaute francaise	2044-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13965	48	2	2	Toussaint	2044-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13966	48	2	2	Jour des Morts	2044-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13967	48	2	2	Armistice	2044-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13968	48	2	2	Fete du Roi / Communaute germanophone	2044-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13969	48	2	2	Noel	2044-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13970	48	2	2	Nouvel An	2045-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13971	48	2	2	Lundi de Paques	2045-04-10	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13972	48	2	2	Fete du Travail	2045-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13973	48	2	2	Ascension	2045-05-18	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13974	48	2	2	Lundi de Pentecote	2045-05-29	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13975	48	2	2	Fete de la Communaute flamande	2045-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13976	48	2	2	Fete Nationale	2045-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13977	48	2	2	Assomption	2045-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13978	48	2	2	Fete de la Communaute francaise	2045-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13979	48	2	2	Toussaint	2045-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13980	48	2	2	Jour des Morts	2045-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13981	48	2	2	Armistice	2045-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13982	48	2	2	Fete du Roi / Communaute germanophone	2045-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13983	48	2	2	Noel	2045-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13984	48	2	2	Nouvel An	2046-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13985	48	2	2	Lundi de Paques	2046-03-26	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13986	48	2	2	Fete du Travail	2046-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13987	48	2	2	Ascension	2046-05-03	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13988	48	2	2	Lundi de Pentecote	2046-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13989	48	2	2	Fete de la Communaute flamande	2046-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13990	48	2	2	Fete Nationale	2046-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13991	48	2	2	Assomption	2046-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13992	48	2	2	Fete de la Communaute francaise	2046-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13993	48	2	2	Toussaint	2046-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13994	48	2	2	Jour des Morts	2046-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13995	48	2	2	Armistice	2046-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13996	48	2	2	Fete du Roi / Communaute germanophone	2046-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13997	48	2	2	Noel	2046-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13998	48	2	2	Nouvel An	2047-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
13999	48	2	2	Lundi de Paques	2047-04-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14000	48	2	2	Fete du Travail	2047-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14001	48	2	2	Ascension	2047-05-23	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14002	48	2	2	Lundi de Pentecote	2047-06-03	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14003	48	2	2	Fete de la Communaute flamande	2047-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14004	48	2	2	Fete Nationale	2047-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14005	48	2	2	Assomption	2047-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14006	48	2	2	Fete de la Communaute francaise	2047-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14007	48	2	2	Toussaint	2047-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14008	48	2	2	Jour des Morts	2047-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14009	48	2	2	Armistice	2047-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14010	48	2	2	Fete du Roi / Communaute germanophone	2047-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14011	48	2	2	Noel	2047-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14012	48	2	2	Nouvel An	2048-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14013	48	2	2	Lundi de Paques	2048-04-06	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14014	48	2	2	Fete du Travail	2048-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14015	48	2	2	Ascension	2048-05-14	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14016	48	2	2	Lundi de Pentecote	2048-05-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14017	48	2	2	Fete de la Communaute flamande	2048-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14018	48	2	2	Fete Nationale	2048-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14019	48	2	2	Assomption	2048-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14020	48	2	2	Fete de la Communaute francaise	2048-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14021	48	2	2	Toussaint	2048-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14022	48	2	2	Jour des Morts	2048-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14023	48	2	2	Armistice	2048-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14024	48	2	2	Fete du Roi / Communaute germanophone	2048-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14025	48	2	2	Noel	2048-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14026	48	2	2	Nouvel An	2049-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14027	48	2	2	Lundi de Paques	2049-04-19	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14028	48	2	2	Fete du Travail	2049-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14029	48	2	2	Ascension	2049-05-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14030	48	2	2	Lundi de Pentecote	2049-06-07	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14031	48	2	2	Fete de la Communaute flamande	2049-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14032	48	2	2	Fete Nationale	2049-07-21	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14033	48	2	2	Assomption	2049-08-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14034	48	2	2	Fete de la Communaute francaise	2049-09-27	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14035	48	2	2	Toussaint	2049-11-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14036	48	2	2	Jour des Morts	2049-11-02	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14037	48	2	2	Armistice	2049-11-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14038	48	2	2	Fete du Roi / Communaute germanophone	2049-11-15	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14039	48	2	2	Noel	2049-12-25	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14040	48	2	2	Nouvel An	2050-01-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14041	48	2	2	Lundi de Paques	2050-04-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14042	48	2	2	Fete du Travail	2050-05-01	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14043	48	2	2	Ascension	2050-05-19	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14044	48	2	2	Lundi de Pentecote	2050-05-30	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
14045	48	2	2	Fete de la Communaute flamande	2050-07-11	2026-07-16 06:32:53.241845	2026-07-16 06:32:53.241845	t
16046	104	2	2	Nouvel An	1991-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16047	104	2	2	Lundi de Pâques	1991-04-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16048	104	2	2	Fête du Travail	1991-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16049	104	2	2	Ascension	1991-05-09	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16050	104	2	2	Lundi de Pentecôte	1991-05-20	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16051	104	2	2	Fête Nationale	1991-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16052	104	2	2	Assomption	1991-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16053	104	2	2	Toussaint	1991-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16054	104	2	2	Armistice	1991-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16055	104	2	2	Noël	1991-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16056	104	2	2	Nouvel An	1992-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16057	104	2	2	Lundi de Pâques	1992-04-20	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16058	104	2	2	Fête du Travail	1992-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16059	104	2	2	Ascension	1992-05-28	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16060	104	2	2	Lundi de Pentecôte	1992-06-08	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16061	104	2	2	Fête Nationale	1992-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16062	104	2	2	Assomption	1992-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16063	104	2	2	Toussaint	1992-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16064	104	2	2	Armistice	1992-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16065	104	2	2	Noël	1992-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16066	104	2	2	Nouvel An	1993-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16067	104	2	2	Lundi de Pâques	1993-04-12	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16068	104	2	2	Fête du Travail	1993-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16069	104	2	2	Ascension	1993-05-20	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16070	104	2	2	Lundi de Pentecôte	1993-05-31	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16071	104	2	2	Fête Nationale	1993-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16072	104	2	2	Assomption	1993-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16073	104	2	2	Toussaint	1993-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16074	104	2	2	Armistice	1993-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16075	104	2	2	Noël	1993-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16076	104	2	2	Nouvel An	1994-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16077	104	2	2	Lundi de Pâques	1994-04-04	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16078	104	2	2	Fête du Travail	1994-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16079	104	2	2	Ascension	1994-05-12	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16080	104	2	2	Lundi de Pentecôte	1994-05-23	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16081	104	2	2	Fête Nationale	1994-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16082	104	2	2	Assomption	1994-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16083	104	2	2	Toussaint	1994-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16084	104	2	2	Armistice	1994-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16085	104	2	2	Noël	1994-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16086	104	2	2	Nouvel An	1995-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16087	104	2	2	Lundi de Pâques	1995-04-17	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16088	104	2	2	Fête du Travail	1995-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16089	104	2	2	Ascension	1995-05-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16090	104	2	2	Lundi de Pentecôte	1995-06-05	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16091	104	2	2	Fête Nationale	1995-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16092	104	2	2	Assomption	1995-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16093	104	2	2	Toussaint	1995-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16094	104	2	2	Armistice	1995-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16095	104	2	2	Noël	1995-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16096	104	2	2	Nouvel An	1996-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16097	104	2	2	Lundi de Pâques	1996-04-08	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16098	104	2	2	Fête du Travail	1996-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16099	104	2	2	Ascension	1996-05-16	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16100	104	2	2	Lundi de Pentecôte	1996-05-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16101	104	2	2	Fête Nationale	1996-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16102	104	2	2	Assomption	1996-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16103	104	2	2	Toussaint	1996-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16104	104	2	2	Armistice	1996-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16105	104	2	2	Noël	1996-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16106	104	2	2	Nouvel An	1997-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16107	104	2	2	Lundi de Pâques	1997-03-31	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16108	104	2	2	Fête du Travail	1997-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16109	104	2	2	Ascension	1997-05-08	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16110	104	2	2	Lundi de Pentecôte	1997-05-19	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16111	104	2	2	Fête Nationale	1997-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16112	104	2	2	Assomption	1997-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16113	104	2	2	Toussaint	1997-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16114	104	2	2	Armistice	1997-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16115	104	2	2	Noël	1997-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16116	104	2	2	Nouvel An	1998-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16117	104	2	2	Lundi de Pâques	1998-04-13	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16118	104	2	2	Fête du Travail	1998-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16119	104	2	2	Ascension	1998-05-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16120	104	2	2	Lundi de Pentecôte	1998-06-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16121	104	2	2	Fête Nationale	1998-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16122	104	2	2	Assomption	1998-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16123	104	2	2	Toussaint	1998-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16124	104	2	2	Armistice	1998-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16125	104	2	2	Noël	1998-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16126	104	2	2	Nouvel An	1999-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16127	104	2	2	Lundi de Pâques	1999-04-05	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16128	104	2	2	Fête du Travail	1999-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16129	104	2	2	Ascension	1999-05-13	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16130	104	2	2	Lundi de Pentecôte	1999-05-24	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16131	104	2	2	Fête Nationale	1999-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16132	104	2	2	Assomption	1999-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16133	104	2	2	Toussaint	1999-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16134	104	2	2	Armistice	1999-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16135	104	2	2	Noël	1999-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16136	104	2	2	Nouvel An	2000-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16137	104	2	2	Lundi de Pâques	2000-04-24	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16138	104	2	2	Fête du Travail	2000-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16139	104	2	2	Ascension	2000-06-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16140	104	2	2	Lundi de Pentecôte	2000-06-12	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16141	104	2	2	Fête Nationale	2000-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16142	104	2	2	Assomption	2000-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16143	104	2	2	Toussaint	2000-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16144	104	2	2	Armistice	2000-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16145	104	2	2	Noël	2000-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16146	104	2	2	Nouvel An	2001-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16147	104	2	2	Lundi de Pâques	2001-04-16	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16148	104	2	2	Fête du Travail	2001-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16149	104	2	2	Ascension	2001-05-24	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16150	104	2	2	Lundi de Pentecôte	2001-06-04	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16151	104	2	2	Fête Nationale	2001-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16152	104	2	2	Assomption	2001-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16153	104	2	2	Toussaint	2001-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16154	104	2	2	Armistice	2001-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16155	104	2	2	Noël	2001-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16156	104	2	2	Nouvel An	2002-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16157	104	2	2	Lundi de Pâques	2002-04-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16158	104	2	2	Fête du Travail	2002-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16159	104	2	2	Ascension	2002-05-09	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16160	104	2	2	Lundi de Pentecôte	2002-05-20	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16161	104	2	2	Fête Nationale	2002-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16162	104	2	2	Assomption	2002-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16163	104	2	2	Toussaint	2002-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16164	104	2	2	Armistice	2002-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16165	104	2	2	Noël	2002-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16166	104	2	2	Nouvel An	2003-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16167	104	2	2	Lundi de Pâques	2003-04-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16168	104	2	2	Fête du Travail	2003-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16169	104	2	2	Ascension	2003-05-29	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16170	104	2	2	Lundi de Pentecôte	2003-06-09	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16171	104	2	2	Fête Nationale	2003-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16172	104	2	2	Assomption	2003-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16173	104	2	2	Toussaint	2003-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16174	104	2	2	Armistice	2003-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16175	104	2	2	Noël	2003-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16176	104	2	2	Nouvel An	2004-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16177	104	2	2	Lundi de Pâques	2004-04-12	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16178	104	2	2	Fête du Travail	2004-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16179	104	2	2	Ascension	2004-05-20	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16180	104	2	2	Lundi de Pentecôte	2004-05-31	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16181	104	2	2	Fête Nationale	2004-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16182	104	2	2	Assomption	2004-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16183	104	2	2	Toussaint	2004-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16184	104	2	2	Armistice	2004-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16185	104	2	2	Noël	2004-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16186	104	2	2	Nouvel An	2005-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16187	104	2	2	Lundi de Pâques	2005-03-28	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16188	104	2	2	Fête du Travail	2005-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16189	104	2	2	Ascension	2005-05-05	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16190	104	2	2	Lundi de Pentecôte	2005-05-16	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16191	104	2	2	Fête Nationale	2005-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16192	104	2	2	Assomption	2005-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16193	104	2	2	Toussaint	2005-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16194	104	2	2	Armistice	2005-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16195	104	2	2	Noël	2005-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16196	104	2	2	Nouvel An	2006-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16197	104	2	2	Lundi de Pâques	2006-04-17	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16198	104	2	2	Fête du Travail	2006-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16199	104	2	2	Ascension	2006-05-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16200	104	2	2	Lundi de Pentecôte	2006-06-05	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16201	104	2	2	Fête Nationale	2006-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16202	104	2	2	Assomption	2006-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16203	104	2	2	Toussaint	2006-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16204	104	2	2	Armistice	2006-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16205	104	2	2	Noël	2006-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16206	104	2	2	Nouvel An	2007-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16207	104	2	2	Lundi de Pâques	2007-04-09	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16208	104	2	2	Fête du Travail	2007-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16209	104	2	2	Ascension	2007-05-17	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16210	104	2	2	Lundi de Pentecôte	2007-05-28	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16211	104	2	2	Fête Nationale	2007-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16212	104	2	2	Assomption	2007-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16213	104	2	2	Toussaint	2007-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16214	104	2	2	Armistice	2007-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16215	104	2	2	Noël	2007-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16216	104	2	2	Nouvel An	2008-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16217	104	2	2	Lundi de Pâques	2008-03-24	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16218	104	2	2	Fête du Travail	2008-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16219	104	2	2	Ascension	2008-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16220	104	2	2	Lundi de Pentecôte	2008-05-12	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16221	104	2	2	Fête Nationale	2008-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16222	104	2	2	Assomption	2008-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16223	104	2	2	Toussaint	2008-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16224	104	2	2	Armistice	2008-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16225	104	2	2	Noël	2008-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16226	104	2	2	Nouvel An	2009-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16227	104	2	2	Lundi de Pâques	2009-04-13	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16228	104	2	2	Fête du Travail	2009-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16229	104	2	2	Ascension	2009-05-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16230	104	2	2	Lundi de Pentecôte	2009-06-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16231	104	2	2	Fête Nationale	2009-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16232	104	2	2	Assomption	2009-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16233	104	2	2	Toussaint	2009-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16234	104	2	2	Armistice	2009-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16235	104	2	2	Noël	2009-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16236	104	2	2	Nouvel An	2010-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16237	104	2	2	Lundi de Pâques	2010-04-05	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16238	104	2	2	Fête du Travail	2010-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16239	104	2	2	Ascension	2010-05-13	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16240	104	2	2	Lundi de Pentecôte	2010-05-24	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16241	104	2	2	Fête Nationale	2010-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16242	104	2	2	Assomption	2010-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16243	104	2	2	Toussaint	2010-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16244	104	2	2	Armistice	2010-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16245	104	2	2	Noël	2010-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16246	104	2	2	Nouvel An	2011-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16247	104	2	2	Lundi de Pâques	2011-04-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16248	104	2	2	Fête du Travail	2011-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16249	104	2	2	Ascension	2011-06-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16250	104	2	2	Lundi de Pentecôte	2011-06-13	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16251	104	2	2	Fête Nationale	2011-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16252	104	2	2	Assomption	2011-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16253	104	2	2	Toussaint	2011-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16254	104	2	2	Armistice	2011-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16255	104	2	2	Noël	2011-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16256	104	2	2	Nouvel An	2012-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16257	104	2	2	Lundi de Pâques	2012-04-09	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16258	104	2	2	Fête du Travail	2012-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16259	104	2	2	Ascension	2012-05-17	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16260	104	2	2	Lundi de Pentecôte	2012-05-28	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16261	104	2	2	Fête Nationale	2012-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16262	104	2	2	Assomption	2012-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16263	104	2	2	Toussaint	2012-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16264	104	2	2	Armistice	2012-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16265	104	2	2	Noël	2012-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16266	104	2	2	Nouvel An	2013-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16267	104	2	2	Lundi de Pâques	2013-04-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16268	104	2	2	Fête du Travail	2013-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16269	104	2	2	Ascension	2013-05-09	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16270	104	2	2	Lundi de Pentecôte	2013-05-20	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16271	104	2	2	Fête Nationale	2013-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16272	104	2	2	Assomption	2013-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16273	104	2	2	Toussaint	2013-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16274	104	2	2	Armistice	2013-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16275	104	2	2	Noël	2013-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16276	104	2	2	Nouvel An	2014-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16277	104	2	2	Lundi de Pâques	2014-04-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16278	104	2	2	Fête du Travail	2014-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16279	104	2	2	Ascension	2014-05-29	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16280	104	2	2	Lundi de Pentecôte	2014-06-09	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16281	104	2	2	Fête Nationale	2014-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16282	104	2	2	Assomption	2014-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16283	104	2	2	Toussaint	2014-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16284	104	2	2	Armistice	2014-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16285	104	2	2	Noël	2014-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16286	104	2	2	Nouvel An	2015-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16287	104	2	2	Lundi de Pâques	2015-04-06	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16288	104	2	2	Fête du Travail	2015-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16289	104	2	2	Ascension	2015-05-14	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16290	104	2	2	Lundi de Pentecôte	2015-05-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16291	104	2	2	Fête Nationale	2015-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16292	104	2	2	Assomption	2015-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16293	104	2	2	Toussaint	2015-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16294	104	2	2	Armistice	2015-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16295	104	2	2	Noël	2015-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16296	104	2	2	Nouvel An	2016-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16297	104	2	2	Lundi de Pâques	2016-03-28	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16298	104	2	2	Fête du Travail	2016-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16299	104	2	2	Ascension	2016-05-05	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16300	104	2	2	Lundi de Pentecôte	2016-05-16	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16301	104	2	2	Fête Nationale	2016-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16302	104	2	2	Assomption	2016-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16303	104	2	2	Toussaint	2016-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16304	104	2	2	Armistice	2016-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16305	104	2	2	Noël	2016-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16306	104	2	2	Nouvel An	2017-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16307	104	2	2	Lundi de Pâques	2017-04-17	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16308	104	2	2	Fête du Travail	2017-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16309	104	2	2	Ascension	2017-05-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16310	104	2	2	Lundi de Pentecôte	2017-06-05	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16311	104	2	2	Fête Nationale	2017-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16312	104	2	2	Assomption	2017-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16313	104	2	2	Toussaint	2017-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16314	104	2	2	Armistice	2017-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16315	104	2	2	Noël	2017-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16316	104	2	2	Nouvel An	2018-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16317	104	2	2	Lundi de Pâques	2018-04-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16318	104	2	2	Fête du Travail	2018-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16319	104	2	2	Ascension	2018-05-10	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16320	104	2	2	Lundi de Pentecôte	2018-05-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16321	104	2	2	Fête Nationale	2018-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16322	104	2	2	Assomption	2018-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16323	104	2	2	Toussaint	2018-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16324	104	2	2	Armistice	2018-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16325	104	2	2	Noël	2018-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16326	104	2	2	Nouvel An	2019-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16327	104	2	2	Lundi de Pâques	2019-04-22	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16328	104	2	2	Fête du Travail	2019-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16329	104	2	2	Ascension	2019-05-30	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16330	104	2	2	Lundi de Pentecôte	2019-06-10	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16331	104	2	2	Fête Nationale	2019-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16332	104	2	2	Assomption	2019-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16333	104	2	2	Toussaint	2019-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16334	104	2	2	Armistice	2019-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16335	104	2	2	Noël	2019-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16336	104	2	2	Nouvel An	2020-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16337	104	2	2	Lundi de Pâques	2020-04-13	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16338	104	2	2	Fête du Travail	2020-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16339	104	2	2	Ascension	2020-05-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16340	104	2	2	Lundi de Pentecôte	2020-06-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16341	104	2	2	Fête Nationale	2020-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16342	104	2	2	Assomption	2020-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16343	104	2	2	Toussaint	2020-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16344	104	2	2	Armistice	2020-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16345	104	2	2	Noël	2020-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16346	104	2	2	Nouvel An	2021-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16347	104	2	2	Lundi de Pâques	2021-04-05	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16348	104	2	2	Fête du Travail	2021-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16349	104	2	2	Ascension	2021-05-13	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16350	104	2	2	Lundi de Pentecôte	2021-05-24	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16351	104	2	2	Fête Nationale	2021-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16352	104	2	2	Assomption	2021-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16353	104	2	2	Toussaint	2021-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16354	104	2	2	Armistice	2021-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16355	104	2	2	Noël	2021-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16356	104	2	2	Nouvel An	2022-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16357	104	2	2	Lundi de Pâques	2022-04-18	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16358	104	2	2	Fête du Travail	2022-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16359	104	2	2	Ascension	2022-05-26	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16360	104	2	2	Lundi de Pentecôte	2022-06-06	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16361	104	2	2	Fête Nationale	2022-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16362	104	2	2	Assomption	2022-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16363	104	2	2	Toussaint	2022-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16364	104	2	2	Armistice	2022-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16365	104	2	2	Noël	2022-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16366	104	2	2	Nouvel An	2023-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16367	104	2	2	Lundi de Pâques	2023-04-10	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16368	104	2	2	Fête du Travail	2023-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16369	104	2	2	Ascension	2023-05-18	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16370	104	2	2	Lundi de Pentecôte	2023-05-29	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16371	104	2	2	Fête Nationale	2023-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16372	104	2	2	Assomption	2023-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16373	104	2	2	Toussaint	2023-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16374	104	2	2	Armistice	2023-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16375	104	2	2	Noël	2023-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16376	104	2	2	Nouvel An	2024-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16377	104	2	2	Lundi de Pâques	2024-04-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16378	104	2	2	Fête du Travail	2024-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16379	104	2	2	Ascension	2024-05-09	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16380	104	2	2	Lundi de Pentecôte	2024-05-20	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16381	104	2	2	Fête Nationale	2024-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16382	104	2	2	Assomption	2024-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16383	104	2	2	Toussaint	2024-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16384	104	2	2	Armistice	2024-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16385	104	2	2	Noël	2024-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16386	104	2	2	Nouvel An	2025-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16387	104	2	2	Lundi de Pâques	2025-04-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16388	104	2	2	Fête du Travail	2025-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16389	104	2	2	Ascension	2025-05-29	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16390	104	2	2	Lundi de Pentecôte	2025-06-09	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16391	104	2	2	Fête Nationale	2025-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16392	104	2	2	Assomption	2025-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16393	104	2	2	Toussaint	2025-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16394	104	2	2	Armistice	2025-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16395	104	2	2	Noël	2025-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16396	104	2	2	Nouvel An	2026-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16397	104	2	2	Lundi de Pâques	2026-04-06	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16398	104	2	2	Fête du Travail	2026-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16399	104	2	2	Ascension	2026-05-14	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16400	104	2	2	Lundi de Pentecôte	2026-05-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16401	104	2	2	Fête Nationale	2026-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16402	104	2	2	Assomption	2026-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16403	104	2	2	Toussaint	2026-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16404	104	2	2	Armistice	2026-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16405	104	2	2	Noël	2026-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16406	104	2	2	Nouvel An	2027-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16407	104	2	2	Lundi de Pâques	2027-03-29	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16408	104	2	2	Fête du Travail	2027-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16409	104	2	2	Ascension	2027-06-06	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16410	104	2	2	Lundi de Pentecôte	2027-05-17	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16411	104	2	2	Fête Nationale	2027-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16412	104	2	2	Assomption	2027-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16413	104	2	2	Toussaint	2027-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16414	104	2	2	Armistice	2027-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16415	104	2	2	Noël	2027-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16416	104	2	2	Nouvel An	2028-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16417	104	2	2	Lundi de Pâques	2028-04-17	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16418	104	2	2	Fête du Travail	2028-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16419	104	2	2	Ascension	2028-05-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16420	104	2	2	Lundi de Pentecôte	2028-06-05	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16421	104	2	2	Fête Nationale	2028-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16422	104	2	2	Assomption	2028-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16423	104	2	2	Toussaint	2028-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16424	104	2	2	Armistice	2028-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16425	104	2	2	Noël	2028-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16426	104	2	2	Nouvel An	2029-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16427	104	2	2	Lundi de Pâques	2029-04-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16428	104	2	2	Fête du Travail	2029-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16429	104	2	2	Ascension	2029-05-10	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16430	104	2	2	Lundi de Pentecôte	2029-05-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16431	104	2	2	Fête Nationale	2029-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16432	104	2	2	Assomption	2029-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16433	104	2	2	Toussaint	2029-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16434	104	2	2	Armistice	2029-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16435	104	2	2	Noël	2029-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16436	104	2	2	Nouvel An	2030-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16437	104	2	2	Lundi de Pâques	2030-04-22	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16438	104	2	2	Fête du Travail	2030-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16439	104	2	2	Ascension	2030-05-30	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16440	104	2	2	Lundi de Pentecôte	2030-06-10	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16441	104	2	2	Fête Nationale	2030-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16442	104	2	2	Assomption	2030-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16443	104	2	2	Toussaint	2030-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16444	104	2	2	Armistice	2030-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16445	104	2	2	Noël	2030-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16446	104	2	2	Nouvel An	2031-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16447	104	2	2	Lundi de Pâques	2031-04-14	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16448	104	2	2	Fête du Travail	2031-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16449	104	2	2	Ascension	2031-05-22	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16450	104	2	2	Lundi de Pentecôte	2031-06-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16451	104	2	2	Fête Nationale	2031-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16452	104	2	2	Assomption	2031-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16453	104	2	2	Toussaint	2031-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16454	104	2	2	Armistice	2031-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16455	104	2	2	Noël	2031-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16456	104	2	2	Nouvel An	2032-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16457	104	2	2	Lundi de Pâques	2032-03-29	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16458	104	2	2	Fête du Travail	2032-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16459	104	2	2	Ascension	2032-05-06	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16460	104	2	2	Lundi de Pentecôte	2032-05-17	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16461	104	2	2	Fête Nationale	2032-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16462	104	2	2	Assomption	2032-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16463	104	2	2	Toussaint	2032-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16464	104	2	2	Armistice	2032-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16465	104	2	2	Noël	2032-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16466	104	2	2	Nouvel An	2033-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16467	104	2	2	Lundi de Pâques	2033-04-18	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16468	104	2	2	Fête du Travail	2033-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16469	104	2	2	Ascension	2033-05-26	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16470	104	2	2	Lundi de Pentecôte	2033-06-06	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16471	104	2	2	Fête Nationale	2033-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16472	104	2	2	Assomption	2033-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16473	104	2	2	Toussaint	2033-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16474	104	2	2	Armistice	2033-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16475	104	2	2	Noël	2033-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16476	104	2	2	Nouvel An	2034-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16477	104	2	2	Lundi de Paques	2034-04-10	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16478	104	2	2	Fete du Travail	2034-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16479	104	2	2	Ascension	2034-05-18	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16480	104	2	2	Lundi de Pentecote	2034-05-29	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16481	104	2	2	Fete de la Communaute flamande	2034-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16482	104	2	2	Fete Nationale	2034-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16483	104	2	2	Assomption	2034-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16484	104	2	2	Fete de la Communaute francaise	2034-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16485	104	2	2	Toussaint	2034-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16486	104	2	2	Jour des Morts	2034-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16487	104	2	2	Armistice	2034-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16488	104	2	2	Fete du Roi / Communaute germanophone	2034-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16489	104	2	2	Noel	2034-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16490	104	2	2	Nouvel An	2035-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16491	104	2	2	Lundi de Paques	2035-03-26	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16492	104	2	2	Fete du Travail	2035-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16493	104	2	2	Ascension	2035-05-03	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16494	104	2	2	Lundi de Pentecote	2035-05-14	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16495	104	2	2	Fete de la Communaute flamande	2035-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16496	104	2	2	Fete Nationale	2035-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16497	104	2	2	Assomption	2035-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16498	104	2	2	Fete de la Communaute francaise	2035-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16499	104	2	2	Toussaint	2035-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16500	104	2	2	Jour des Morts	2035-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16501	104	2	2	Armistice	2035-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16502	104	2	2	Fete du Roi / Communaute germanophone	2035-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16503	104	2	2	Noel	2035-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16504	104	2	2	Nouvel An	2036-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16505	104	2	2	Lundi de Paques	2036-04-14	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16506	104	2	2	Fete du Travail	2036-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16507	104	2	2	Ascension	2036-05-22	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16508	104	2	2	Lundi de Pentecote	2036-06-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16509	104	2	2	Fete de la Communaute flamande	2036-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16510	104	2	2	Fete Nationale	2036-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16511	104	2	2	Assomption	2036-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16512	104	2	2	Fete de la Communaute francaise	2036-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16513	104	2	2	Toussaint	2036-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16514	104	2	2	Jour des Morts	2036-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16515	104	2	2	Armistice	2036-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16516	104	2	2	Fete du Roi / Communaute germanophone	2036-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16517	104	2	2	Noel	2036-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16518	104	2	2	Nouvel An	2037-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16519	104	2	2	Lundi de Paques	2037-04-06	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16520	104	2	2	Fete du Travail	2037-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16521	104	2	2	Ascension	2037-05-14	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16522	104	2	2	Lundi de Pentecote	2037-05-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16523	104	2	2	Fete de la Communaute flamande	2037-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16524	104	2	2	Fete Nationale	2037-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16525	104	2	2	Assomption	2037-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16526	104	2	2	Fete de la Communaute francaise	2037-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16527	104	2	2	Toussaint	2037-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16528	104	2	2	Jour des Morts	2037-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16529	104	2	2	Armistice	2037-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16530	104	2	2	Fete du Roi / Communaute germanophone	2037-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16531	104	2	2	Noel	2037-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16532	104	2	2	Nouvel An	2038-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16533	104	2	2	Lundi de Paques	2038-04-26	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16534	104	2	2	Fete du Travail	2038-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16535	104	2	2	Ascension	2038-06-03	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16536	104	2	2	Lundi de Pentecote	2038-06-14	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16537	104	2	2	Fete de la Communaute flamande	2038-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16538	104	2	2	Fete Nationale	2038-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16539	104	2	2	Assomption	2038-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16540	104	2	2	Fete de la Communaute francaise	2038-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16541	104	2	2	Toussaint	2038-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16542	104	2	2	Jour des Morts	2038-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16543	104	2	2	Armistice	2038-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16544	104	2	2	Fete du Roi / Communaute germanophone	2038-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16545	104	2	2	Noel	2038-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16546	104	2	2	Nouvel An	2039-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16547	104	2	2	Lundi de Paques	2039-04-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16548	104	2	2	Fete du Travail	2039-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16549	104	2	2	Ascension	2039-05-19	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16550	104	2	2	Lundi de Pentecote	2039-05-30	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16551	104	2	2	Fete de la Communaute flamande	2039-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16552	104	2	2	Fete Nationale	2039-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16553	104	2	2	Assomption	2039-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16554	104	2	2	Fete de la Communaute francaise	2039-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16555	104	2	2	Toussaint	2039-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16556	104	2	2	Jour des Morts	2039-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16557	104	2	2	Armistice	2039-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16558	104	2	2	Fete du Roi / Communaute germanophone	2039-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16559	104	2	2	Noel	2039-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16560	104	2	2	Nouvel An	2040-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16561	104	2	2	Lundi de Paques	2040-04-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16562	104	2	2	Fete du Travail	2040-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16563	104	2	2	Ascension	2040-05-10	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16564	104	2	2	Lundi de Pentecote	2040-05-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16565	104	2	2	Fete de la Communaute flamande	2040-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16566	104	2	2	Fete Nationale	2040-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16567	104	2	2	Assomption	2040-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16568	104	2	2	Fete de la Communaute francaise	2040-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16569	104	2	2	Toussaint	2040-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16570	104	2	2	Jour des Morts	2040-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16571	104	2	2	Armistice	2040-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16572	104	2	2	Fete du Roi / Communaute germanophone	2040-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16573	104	2	2	Noel	2040-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16574	104	2	2	Nouvel An	2041-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16575	104	2	2	Lundi de Paques	2041-04-22	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16576	104	2	2	Fete du Travail	2041-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16577	104	2	2	Ascension	2041-05-30	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16578	104	2	2	Lundi de Pentecote	2041-06-10	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16579	104	2	2	Fete de la Communaute flamande	2041-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16580	104	2	2	Fete Nationale	2041-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16581	104	2	2	Assomption	2041-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16582	104	2	2	Fete de la Communaute francaise	2041-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16583	104	2	2	Toussaint	2041-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16584	104	2	2	Jour des Morts	2041-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16585	104	2	2	Armistice	2041-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16586	104	2	2	Fete du Roi / Communaute germanophone	2041-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16587	104	2	2	Noel	2041-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16588	104	2	2	Nouvel An	2042-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16589	104	2	2	Lundi de Paques	2042-04-07	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16590	104	2	2	Fete du Travail	2042-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16591	104	2	2	Ascension	2042-05-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16592	104	2	2	Lundi de Pentecote	2042-05-26	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16593	104	2	2	Fete de la Communaute flamande	2042-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16594	104	2	2	Fete Nationale	2042-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16595	104	2	2	Assomption	2042-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16596	104	2	2	Fete de la Communaute francaise	2042-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16597	104	2	2	Toussaint	2042-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16598	104	2	2	Jour des Morts	2042-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16599	104	2	2	Armistice	2042-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16600	104	2	2	Fete du Roi / Communaute germanophone	2042-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16601	104	2	2	Noel	2042-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16602	104	2	2	Nouvel An	2043-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16603	104	2	2	Lundi de Paques	2043-03-30	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16604	104	2	2	Fete du Travail	2043-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16605	104	2	2	Ascension	2043-05-07	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16606	104	2	2	Lundi de Pentecote	2043-05-18	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16607	104	2	2	Fete de la Communaute flamande	2043-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16608	104	2	2	Fete Nationale	2043-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16609	104	2	2	Assomption	2043-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16610	104	2	2	Fete de la Communaute francaise	2043-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16611	104	2	2	Toussaint	2043-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16612	104	2	2	Jour des Morts	2043-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16613	104	2	2	Armistice	2043-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16614	104	2	2	Fete du Roi / Communaute germanophone	2043-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16615	104	2	2	Noel	2043-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16616	104	2	2	Nouvel An	2044-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16617	104	2	2	Lundi de Paques	2044-04-18	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16618	104	2	2	Fete du Travail	2044-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16619	104	2	2	Ascension	2044-05-26	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16620	104	2	2	Lundi de Pentecote	2044-06-06	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16621	104	2	2	Fete de la Communaute flamande	2044-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16622	104	2	2	Fete Nationale	2044-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16623	104	2	2	Assomption	2044-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16624	104	2	2	Fete de la Communaute francaise	2044-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16625	104	2	2	Toussaint	2044-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16626	104	2	2	Jour des Morts	2044-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16627	104	2	2	Armistice	2044-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16628	104	2	2	Fete du Roi / Communaute germanophone	2044-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16629	104	2	2	Noel	2044-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16630	104	2	2	Nouvel An	2045-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16631	104	2	2	Lundi de Paques	2045-04-10	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16632	104	2	2	Fete du Travail	2045-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16633	104	2	2	Ascension	2045-05-18	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16634	104	2	2	Lundi de Pentecote	2045-05-29	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16635	104	2	2	Fete de la Communaute flamande	2045-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16636	104	2	2	Fete Nationale	2045-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16637	104	2	2	Assomption	2045-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16638	104	2	2	Fete de la Communaute francaise	2045-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16639	104	2	2	Toussaint	2045-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16640	104	2	2	Jour des Morts	2045-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16641	104	2	2	Armistice	2045-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16642	104	2	2	Fete du Roi / Communaute germanophone	2045-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16643	104	2	2	Noel	2045-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16644	104	2	2	Nouvel An	2046-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16645	104	2	2	Lundi de Paques	2046-03-26	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16646	104	2	2	Fete du Travail	2046-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16647	104	2	2	Ascension	2046-05-03	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16648	104	2	2	Lundi de Pentecote	2046-05-14	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16649	104	2	2	Fete de la Communaute flamande	2046-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16650	104	2	2	Fete Nationale	2046-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16651	104	2	2	Assomption	2046-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16652	104	2	2	Fete de la Communaute francaise	2046-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16653	104	2	2	Toussaint	2046-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16654	104	2	2	Jour des Morts	2046-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16655	104	2	2	Armistice	2046-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16656	104	2	2	Fete du Roi / Communaute germanophone	2046-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16657	104	2	2	Noel	2046-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16658	104	2	2	Nouvel An	2047-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16659	104	2	2	Lundi de Paques	2047-04-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16660	104	2	2	Fete du Travail	2047-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16661	104	2	2	Ascension	2047-05-23	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16662	104	2	2	Lundi de Pentecote	2047-06-03	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16663	104	2	2	Fete de la Communaute flamande	2047-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16664	104	2	2	Fete Nationale	2047-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16665	104	2	2	Assomption	2047-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16666	104	2	2	Fete de la Communaute francaise	2047-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16667	104	2	2	Toussaint	2047-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16668	104	2	2	Jour des Morts	2047-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16669	104	2	2	Armistice	2047-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16670	104	2	2	Fete du Roi / Communaute germanophone	2047-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16671	104	2	2	Noel	2047-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16672	104	2	2	Nouvel An	2048-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16673	104	2	2	Lundi de Paques	2048-04-06	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16674	104	2	2	Fete du Travail	2048-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16675	104	2	2	Ascension	2048-05-14	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16676	104	2	2	Lundi de Pentecote	2048-05-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16677	104	2	2	Fete de la Communaute flamande	2048-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16678	104	2	2	Fete Nationale	2048-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16679	104	2	2	Assomption	2048-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16680	104	2	2	Fete de la Communaute francaise	2048-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16681	104	2	2	Toussaint	2048-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16682	104	2	2	Jour des Morts	2048-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16683	104	2	2	Armistice	2048-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16684	104	2	2	Fete du Roi / Communaute germanophone	2048-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16685	104	2	2	Noel	2048-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16686	104	2	2	Nouvel An	2049-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16687	104	2	2	Lundi de Paques	2049-04-19	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16688	104	2	2	Fete du Travail	2049-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16689	104	2	2	Ascension	2049-05-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16690	104	2	2	Lundi de Pentecote	2049-06-07	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16691	104	2	2	Fete de la Communaute flamande	2049-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16692	104	2	2	Fete Nationale	2049-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16693	104	2	2	Assomption	2049-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16694	104	2	2	Fete de la Communaute francaise	2049-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16695	104	2	2	Toussaint	2049-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16696	104	2	2	Jour des Morts	2049-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16697	104	2	2	Armistice	2049-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16698	104	2	2	Fete du Roi / Communaute germanophone	2049-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16699	104	2	2	Noel	2049-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16700	104	2	2	Nouvel An	2050-01-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16701	104	2	2	Lundi de Paques	2050-04-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16702	104	2	2	Fete du Travail	2050-05-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16703	104	2	2	Ascension	2050-05-19	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16704	104	2	2	Lundi de Pentecote	2050-05-30	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16705	104	2	2	Fete de la Communaute flamande	2050-07-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16706	104	2	2	Fete Nationale	2050-07-21	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16707	104	2	2	Assomption	2050-08-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16708	104	2	2	Fete de la Communaute francaise	2050-09-27	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16709	104	2	2	Toussaint	2050-11-01	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16710	104	2	2	Jour des Morts	2050-11-02	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16711	104	2	2	Armistice	2050-11-11	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16712	104	2	2	Fete du Roi / Communaute germanophone	2050-11-15	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
16713	104	2	2	Noel	2050-12-25	2026-07-16 06:35:14.651976	2026-07-16 06:35:14.651976	t
\.


--
-- Data for Name: nhr_regions; Type: TABLE DATA; Schema: public; Owner: odoo
--

COPY public.nhr_regions (id, create_uid, write_uid, name, create_date, write_date, active) FROM stdin;
1	\N	\N	Europe	\N	\N	t
2	\N	\N	Americas	\N	\N	t
3	\N	\N	Asia	\N	\N	t
4	\N	\N	Middle East and Africa	\N	\N	t
\.


--
-- Name: nhr_absence_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.nhr_absence_types_id_seq', 17, true);


--
-- Name: nhr_absences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.nhr_absences_id_seq', 1, false);


--
-- Name: nhr_departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.nhr_departments_id_seq', 27, true);


--
-- Name: nhr_employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.nhr_employees_id_seq', 308, true);


--
-- Name: nhr_ent_holidays_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.nhr_ent_holidays_id_seq', 3, true);


--
-- Name: nhr_job_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.nhr_job_history_id_seq', 2, true);


--
-- Name: nhr_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.nhr_jobs_id_seq', 19, true);


--
-- Name: nhr_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.nhr_locations_id_seq', 24, true);


--
-- Name: nhr_public_holidays_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.nhr_public_holidays_id_seq', 16713, true);


--
-- Name: nhr_regions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoo
--

SELECT pg_catalog.setval('public.nhr_regions_id_seq', 4, true);


--
-- Name: nhr_absence_types nhr_absence_types_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_absence_types
    ADD CONSTRAINT nhr_absence_types_pkey PRIMARY KEY (id);


--
-- Name: nhr_absences nhr_absences_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_absences
    ADD CONSTRAINT nhr_absences_pkey PRIMARY KEY (id);


--
-- Name: nhr_departments nhr_departments_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_departments
    ADD CONSTRAINT nhr_departments_pkey PRIMARY KEY (id);


--
-- Name: nhr_employees nhr_employees_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_employees
    ADD CONSTRAINT nhr_employees_pkey PRIMARY KEY (id);


--
-- Name: nhr_ent_holidays nhr_ent_holidays_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_ent_holidays
    ADD CONSTRAINT nhr_ent_holidays_pkey PRIMARY KEY (id);


--
-- Name: nhr_job_history nhr_job_history_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_job_history
    ADD CONSTRAINT nhr_job_history_pkey PRIMARY KEY (id);


--
-- Name: nhr_jobs nhr_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_jobs
    ADD CONSTRAINT nhr_jobs_pkey PRIMARY KEY (id);


--
-- Name: nhr_locations nhr_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_locations
    ADD CONSTRAINT nhr_locations_pkey PRIMARY KEY (id);


--
-- Name: nhr_public_holidays nhr_public_holidays_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_public_holidays
    ADD CONSTRAINT nhr_public_holidays_pkey PRIMARY KEY (id);


--
-- Name: nhr_regions nhr_regions_pkey; Type: CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_regions
    ADD CONSTRAINT nhr_regions_pkey PRIMARY KEY (id);


--
-- Name: nhr_departments__location_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX nhr_departments__location_id_index ON public.nhr_departments USING btree (location_id);


--
-- Name: nhr_departments__manager_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX nhr_departments__manager_id_index ON public.nhr_departments USING btree (manager_id);


--
-- Name: nhr_locations__country_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX nhr_locations__country_id_index ON public.nhr_locations USING btree (country_id);


--
-- Name: nhr_public_holidays__country_id_index; Type: INDEX; Schema: public; Owner: odoo
--

CREATE INDEX nhr_public_holidays__country_id_index ON public.nhr_public_holidays USING btree (country_id);


--
-- Name: nhr_absence_types nhr_absence_types_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_absence_types
    ADD CONSTRAINT nhr_absence_types_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_absence_types nhr_absence_types_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_absence_types
    ADD CONSTRAINT nhr_absence_types_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_absences nhr_absences_absence_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_absences
    ADD CONSTRAINT nhr_absences_absence_type_fkey FOREIGN KEY (absence_type) REFERENCES public.nhr_absence_types(id) ON DELETE RESTRICT;


--
-- Name: nhr_absences nhr_absences_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_absences
    ADD CONSTRAINT nhr_absences_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_absences nhr_absences_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_absences
    ADD CONSTRAINT nhr_absences_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.nhr_employees(id) ON DELETE RESTRICT;


--
-- Name: nhr_absences nhr_absences_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_absences
    ADD CONSTRAINT nhr_absences_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_departments nhr_departments_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_departments
    ADD CONSTRAINT nhr_departments_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_departments nhr_departments_location_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_departments
    ADD CONSTRAINT nhr_departments_location_id_fkey FOREIGN KEY (location_id) REFERENCES public.nhr_locations(id) ON DELETE SET NULL;


--
-- Name: nhr_departments nhr_departments_manager_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_departments
    ADD CONSTRAINT nhr_departments_manager_id_fkey FOREIGN KEY (manager_id) REFERENCES public.nhr_employees(id) ON DELETE SET NULL;


--
-- Name: nhr_departments nhr_departments_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_departments
    ADD CONSTRAINT nhr_departments_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_employees nhr_employees_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_employees
    ADD CONSTRAINT nhr_employees_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_employees nhr_employees_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_employees
    ADD CONSTRAINT nhr_employees_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.nhr_departments(id) ON DELETE SET NULL;


--
-- Name: nhr_employees nhr_employees_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_employees
    ADD CONSTRAINT nhr_employees_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.nhr_jobs(id) ON DELETE RESTRICT;


--
-- Name: nhr_employees nhr_employees_manager_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_employees
    ADD CONSTRAINT nhr_employees_manager_id_fkey FOREIGN KEY (manager_id) REFERENCES public.nhr_employees(id) ON DELETE SET NULL;


--
-- Name: nhr_employees nhr_employees_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_employees
    ADD CONSTRAINT nhr_employees_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_ent_holidays nhr_ent_holidays_absence_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_ent_holidays
    ADD CONSTRAINT nhr_ent_holidays_absence_type_fkey FOREIGN KEY (absence_type) REFERENCES public.nhr_absence_types(id) ON DELETE RESTRICT;


--
-- Name: nhr_ent_holidays nhr_ent_holidays_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_ent_holidays
    ADD CONSTRAINT nhr_ent_holidays_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_ent_holidays nhr_ent_holidays_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_ent_holidays
    ADD CONSTRAINT nhr_ent_holidays_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.nhr_employees(id) ON DELETE RESTRICT;


--
-- Name: nhr_ent_holidays nhr_ent_holidays_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_ent_holidays
    ADD CONSTRAINT nhr_ent_holidays_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_job_history nhr_job_history_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_job_history
    ADD CONSTRAINT nhr_job_history_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_job_history nhr_job_history_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_job_history
    ADD CONSTRAINT nhr_job_history_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.nhr_departments(id) ON DELETE SET NULL;


--
-- Name: nhr_job_history nhr_job_history_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_job_history
    ADD CONSTRAINT nhr_job_history_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.nhr_employees(id) ON DELETE SET NULL;


--
-- Name: nhr_job_history nhr_job_history_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_job_history
    ADD CONSTRAINT nhr_job_history_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.nhr_jobs(id) ON DELETE SET NULL;


--
-- Name: nhr_job_history nhr_job_history_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_job_history
    ADD CONSTRAINT nhr_job_history_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_jobs nhr_jobs_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_jobs
    ADD CONSTRAINT nhr_jobs_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_jobs nhr_jobs_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_jobs
    ADD CONSTRAINT nhr_jobs_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_locations nhr_locations_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_locations
    ADD CONSTRAINT nhr_locations_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.res_country(id) ON DELETE SET NULL;


--
-- Name: nhr_locations nhr_locations_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_locations
    ADD CONSTRAINT nhr_locations_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_locations nhr_locations_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_locations
    ADD CONSTRAINT nhr_locations_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_public_holidays nhr_public_holidays_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_public_holidays
    ADD CONSTRAINT nhr_public_holidays_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.res_country(id) ON DELETE SET NULL;


--
-- Name: nhr_public_holidays nhr_public_holidays_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_public_holidays
    ADD CONSTRAINT nhr_public_holidays_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_public_holidays nhr_public_holidays_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_public_holidays
    ADD CONSTRAINT nhr_public_holidays_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_regions nhr_regions_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_regions
    ADD CONSTRAINT nhr_regions_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: nhr_regions nhr_regions_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: odoo
--

ALTER TABLE ONLY public.nhr_regions
    ADD CONSTRAINT nhr_regions_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict xPQNj0bb1JcPCkSnZTGOmTJ0gE89fk9hwEg8Irie32yQX4GicnLRsYyfrAsCs5o

