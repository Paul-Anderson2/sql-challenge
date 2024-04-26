-- Database: Mod 9 SQL challenge

-- DROP DATABASE IF EXISTS "Mod 9 SQL challenge";

CREATE DATABASE "Mod 9 SQL challenge"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- Table: public.departments

-- DROP TABLE IF EXISTS public.departments;

CREATE TABLE IF NOT EXISTS public.departments
(
    dept_no character varying COLLATE pg_catalog."default" NOT NULL,
    dept_name character varying COLLATE pg_catalog."default",
    CONSTRAINT departments_pkey PRIMARY KEY (dept_no)
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.departments
    OWNER to postgres;

-- Table: public.dept_emp

-- DROP TABLE IF EXISTS public.dept_emp;

CREATE TABLE IF NOT EXISTS public.dept_emp
(
    emp_no integer,
    dept_no character varying(10) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dept_emp
    OWNER to postgres;

 -- Table: public.dept_manager

-- DROP TABLE IF EXISTS public.dept_manager;

CREATE TABLE IF NOT EXISTS public.dept_manager
(
    dept_no character varying(5) COLLATE pg_catalog."default",
    emp_no integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dept_manager
    OWNER to postgres;

-- Table: public.employees

-- DROP TABLE IF EXISTS public.employees;

CREATE TABLE IF NOT EXISTS public.employees
(
    emp_no integer,
    emp_title character varying COLLATE pg_catalog."default",
    birth_date date,
    first_name character varying(20) COLLATE pg_catalog."default",
    last_name character varying(20) COLLATE pg_catalog."default",
    sex character varying(1) COLLATE pg_catalog."default",
    hire_date date
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.employees
    OWNER to postgres;

-- Table: public.salaries

-- DROP TABLE IF EXISTS public.salaries;

CREATE TABLE IF NOT EXISTS public.salaries
(
    emp_no integer,
    salary integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.salaries
    OWNER to postgres;

-- Table: public.titles

-- DROP TABLE IF EXISTS public.titles;

CREATE TABLE IF NOT EXISTS public.titles
(
    title_id character varying(5) COLLATE pg_catalog."default",
    title character varying(20) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.titles
    OWNER to postgres;