CREATE SEQUENCE public.res_partner_id_seq;

ALTER SEQUENCE public.res_partner_id_seq
OWNER TO tom;

-- Table: public.res_partner

-- DROP TABLE public.res_partner;

CREATE TABLE public.res_partner
(
    id integer NOT NULL DEFAULT nextval('res_partner_id_seq'::regclass),
    name character varying(128) COLLATE pg_catalog."default" NOT NULL,
    lang character varying(64) COLLATE pg_catalog."default",
    company_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    comment text COLLATE pg_catalog."default",
    ean13 character varying(13) COLLATE pg_catalog."default",
    color integer,
    image bytea,
    use_parent_address boolean,
    active boolean,
    street character varying(128) COLLATE pg_catalog."default",
    supplier boolean,
    city character varying(128) COLLATE pg_catalog."default",
    user_id integer,
    zip character varying(24) COLLATE pg_catalog."default",
    title integer,
    function character varying(128) COLLATE pg_catalog."default",
    country_id integer,
    parent_id integer,
    employee boolean,
    type character varying COLLATE pg_catalog."default",
    email character varying(240) COLLATE pg_catalog."default",
    vat character varying(32) COLLATE pg_catalog."default",
    website character varying(64) COLLATE pg_catalog."default",
    fax character varying(64) COLLATE pg_catalog."default",
    street2 character varying(128) COLLATE pg_catalog."default",
    phone character varying(64) COLLATE pg_catalog."default",
    credit_limit double precision,
    date date,
    tz character varying(64) COLLATE pg_catalog."default",
    customer boolean,
    image_medium bytea,
    mobile character varying(64) COLLATE pg_catalog."default",
    ref character varying(64) COLLATE pg_catalog."default",
    image_small bytea,
    birthdate character varying(64) COLLATE pg_catalog."default",
    is_company boolean,
    state_id integer,
    notification_email_send character varying COLLATE pg_catalog."default" NOT NULL,
    opt_out boolean,
    signup_type character varying COLLATE pg_catalog."default",
    signup_expiration timestamp without time zone,
    signup_token character varying COLLATE pg_catalog."default",
    last_reconciliation_date timestamp without time zone,
    debit_limit double precision,
    section_id integer,
    speaker boolean,
    CONSTRAINT res_partner_pkey PRIMARY KEY (id),
    CONSTRAINT res_partner_create_uid_fkey FOREIGN KEY (create_uid)
        REFERENCES public.res_users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE SET NULL,
    CONSTRAINT res_partner_parent_id_fkey FOREIGN KEY (parent_id)
        REFERENCES public.res_partner (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE SET NULL,
    CONSTRAINT res_partner_user_id_fkey FOREIGN KEY (user_id)
        REFERENCES public.res_users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE SET NULL,
    CONSTRAINT res_partner_write_uid_fkey FOREIGN KEY (write_uid)
        REFERENCES public.res_users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE SET NULL
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.res_partner
    OWNER to tom;

COMMENT ON COLUMN public.res_partner.comment
    IS 'Notes';

COMMENT ON COLUMN public.res_partner.ean13
    IS 'EAN13';

COMMENT ON COLUMN public.res_partner.color
    IS 'Color Index';

COMMENT ON COLUMN public.res_partner.image
    IS 'Image';

COMMENT ON COLUMN public.res_partner.use_parent_address
    IS 'Use Company Address';

COMMENT ON COLUMN public.res_partner.active
    IS 'Active';

COMMENT ON COLUMN public.res_partner.street
    IS 'Street';

COMMENT ON COLUMN public.res_partner.supplier
    IS 'Supplier';

COMMENT ON COLUMN public.res_partner.city
    IS 'City';

COMMENT ON COLUMN public.res_partner.user_id
    IS 'Salesperson';

COMMENT ON COLUMN public.res_partner.zip
    IS 'Zip';

COMMENT ON COLUMN public.res_partner.title
    IS 'Title';

COMMENT ON COLUMN public.res_partner.function
    IS 'Job Position';

COMMENT ON COLUMN public.res_partner.country_id
    IS 'Country';

COMMENT ON COLUMN public.res_partner.parent_id
    IS 'Related Company';

COMMENT ON COLUMN public.res_partner.employee
    IS 'Employee';

COMMENT ON COLUMN public.res_partner.type
    IS 'Address Type';

COMMENT ON COLUMN public.res_partner.email
    IS 'Email';

COMMENT ON COLUMN public.res_partner.vat
    IS 'TIN';

COMMENT ON COLUMN public.res_partner.website
    IS 'Website';

COMMENT ON COLUMN public.res_partner.fax
    IS 'Fax';

COMMENT ON COLUMN public.res_partner.street2
    IS 'Street2';

COMMENT ON COLUMN public.res_partner.phone
    IS 'Phone';

COMMENT ON COLUMN public.res_partner.credit_limit
    IS 'Credit Limit';

COMMENT ON COLUMN public.res_partner.date
    IS 'Date';

COMMENT ON COLUMN public.res_partner.tz
    IS 'Timezone';

COMMENT ON COLUMN public.res_partner.customer
    IS 'Customer';

COMMENT ON COLUMN public.res_partner.image_medium
    IS 'Medium-sized image';

COMMENT ON COLUMN public.res_partner.mobile
    IS 'Mobile';

COMMENT ON COLUMN public.res_partner.ref
    IS 'Reference';

COMMENT ON COLUMN public.res_partner.image_small
    IS 'Small-sized image';

COMMENT ON COLUMN public.res_partner.birthdate
    IS 'Birthdate';

COMMENT ON COLUMN public.res_partner.is_company
    IS 'Is a Company';

COMMENT ON COLUMN public.res_partner.state_id
    IS 'State';

COMMENT ON COLUMN public.res_partner.notification_email_send
    IS 'Receive Feeds by Email';

COMMENT ON COLUMN public.res_partner.opt_out
    IS 'Opt-Out';

COMMENT ON COLUMN public.res_partner.signup_type
    IS 'Signup Token Type';

COMMENT ON COLUMN public.res_partner.signup_expiration
    IS 'Signup Expiration';

COMMENT ON COLUMN public.res_partner.signup_token
    IS 'Signup Token';

COMMENT ON COLUMN public.res_partner.last_reconciliation_date
    IS 'Latest Reconciliation Date';

COMMENT ON COLUMN public.res_partner.debit_limit
    IS 'Payable Limit';

COMMENT ON COLUMN public.res_partner.section_id
    IS 'Sales Team';

COMMENT ON COLUMN public.res_partner.speaker
    IS 'Speaker';

-- Index: res_partner_company_id_index

-- DROP INDEX public.res_partner_company_id_index;

CREATE INDEX res_partner_company_id_index
    ON public.res_partner USING btree
    (company_id)
    TABLESPACE pg_default;

-- Index: res_partner_date_index

-- DROP INDEX public.res_partner_date_index;

CREATE INDEX res_partner_date_index
    ON public.res_partner USING btree
    (date)
    TABLESPACE pg_default;

-- Index: res_partner_name_index

-- DROP INDEX public.res_partner_name_index;

CREATE INDEX res_partner_name_index
    ON public.res_partner USING btree
    (name COLLATE pg_catalog."default")
    TABLESPACE pg_default;

-- Index: res_partner_ref_index

-- DROP INDEX public.res_partner_ref_index;

CREATE INDEX res_partner_ref_index
    ON public.res_partner USING btree
    (ref COLLATE pg_catalog."default")
    TABLESPACE pg_default;