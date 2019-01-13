package org.freegeek.volunteer.restapi.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.sql.Date;
import java.sql.Timestamp;

/**
 * Created by tom on 12/22/18.
 */
@Entity(name = "res_partner")
public class ResPartner {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String name;
    private String lang;
    private Integer company_id;
    private Integer create_uid;
    private Timestamp create_date;
    private Timestamp write_date;
    private Integer write_uid;
    private String comment;
    private String ean13;
    private Integer color;
    private Byte[] image;
    private Boolean use_parent_address;
    private Boolean active;
    private String street;
    private Boolean supplier;
    private String city;
    private Integer user_id;
    private String zip;
    private Integer title;
    private String function;
    private Integer country_id;
    private Integer parent_id;
    private Boolean employee;
    private String type;
    private String email;
    private String vat;
    private String website;
    private String fax;
    private String street2;
    private String phone;
    private Double credit_limit;
    private Date date;
    private String tz;
    private Boolean customer;
    private Byte[] image_medium;
    private String mobile;
    private String ref;
    private Byte[] image_small;
    private String birthdate;
    private Boolean is_company;
    private Integer state_id;
    private String notification_email_send;
    private Boolean opt_out;
    private String signup_type;
    private Timestamp signup_expiration;
    private String signup_token;
    private Timestamp last_reconciliation_date;
    private Double debit_limit;
    private Integer section_id;
    private Boolean speaker;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLang() {
        return lang;
    }

    public void setLang(String lang) {
        this.lang = lang;
    }

    public Integer getCompany_id() {
        return company_id;
    }

    public void setCompany_id(Integer company_id) {
        this.company_id = company_id;
    }

    public Integer getCreate_uid() {
        return create_uid;
    }

    public void setCreate_uid(Integer create_uid) {
        this.create_uid = create_uid;
    }

    public Timestamp getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Timestamp create_date) {
        this.create_date = create_date;
    }

    public Timestamp getWrite_date() {
        return write_date;
    }

    public void setWrite_date(Timestamp write_date) {
        this.write_date = write_date;
    }

    public Integer getWrite_uid() {
        return write_uid;
    }

    public void setWrite_uid(Integer write_uid) {
        this.write_uid = write_uid;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getEan13() {
        return ean13;
    }

    public void setEan13(String ean13) {
        this.ean13 = ean13;
    }

    public Integer getColor() {
        return color;
    }

    public void setColor(Integer color) {
        this.color = color;
    }

    public Byte[] getImage() {
        return image;
    }

    public void setImage(Byte[] image) {
        this.image = image;
    }

    public Boolean getUse_parent_address() {
        return use_parent_address;
    }

    public void setUse_parent_address(Boolean use_parent_address) {
        this.use_parent_address = use_parent_address;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public Boolean getSupplier() {
        return supplier;
    }

    public void setSupplier(Boolean supplier) {
        this.supplier = supplier;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public Integer getTitle() {
        return title;
    }

    public void setTitle(Integer title) {
        this.title = title;
    }

    public String getFunction() {
        return function;
    }

    public void setFunction(String function) {
        this.function = function;
    }

    public Integer getCountry_id() {
        return country_id;
    }

    public void setCountry_id(Integer country_id) {
        this.country_id = country_id;
    }

    public Integer getParent_id() {
        return parent_id;
    }

    public void setParent_id(Integer parent_id) {
        this.parent_id = parent_id;
    }

    public Boolean getEmployee() {
        return employee;
    }

    public void setEmployee(Boolean employee) {
        this.employee = employee;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getVat() {
        return vat;
    }

    public void setVat(String vat) {
        this.vat = vat;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getStreet2() {
        return street2;
    }

    public void setStreet2(String street2) {
        this.street2 = street2;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Double getCredit_limit() {
        return credit_limit;
    }

    public void setCredit_limit(Double credit_limit) {
        this.credit_limit = credit_limit;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTz() {
        return tz;
    }

    public void setTz(String tz) {
        this.tz = tz;
    }

    public Boolean getCustomer() {
        return customer;
    }

    public void setCustomer(Boolean customer) {
        this.customer = customer;
    }

    public Byte[] getImage_medium() {
        return image_medium;
    }

    public void setImage_medium(Byte[] image_medium) {
        this.image_medium = image_medium;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getRef() {
        return ref;
    }

    public void setRef(String ref) {
        this.ref = ref;
    }

    public Byte[] getImage_small() {
        return image_small;
    }

    public void setImage_small(Byte[] image_small) {
        this.image_small = image_small;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public Boolean getIs_company() {
        return is_company;
    }

    public void setIs_company(Boolean is_company) {
        this.is_company = is_company;
    }

    public Integer getState_id() {
        return state_id;
    }

    public void setState_id(Integer state_id) {
        this.state_id = state_id;
    }

    public String getNotification_email_send() {
        return notification_email_send;
    }

    public void setNotification_email_send(String notification_email_send) {
        this.notification_email_send = notification_email_send;
    }

    public Boolean getOpt_out() {
        return opt_out;
    }

    public void setOpt_out(Boolean opt_out) {
        this.opt_out = opt_out;
    }

    public String getSignup_type() {
        return signup_type;
    }

    public void setSignup_type(String signup_type) {
        this.signup_type = signup_type;
    }

    public Timestamp getSignup_expiration() {
        return signup_expiration;
    }

    public void setSignup_expiration(Timestamp signup_expiration) {
        this.signup_expiration = signup_expiration;
    }

    public String getSignup_token() {
        return signup_token;
    }

    public void setSignup_token(String signup_token) {
        this.signup_token = signup_token;
    }

    public Timestamp getLast_reconciliation_date() {
        return last_reconciliation_date;
    }

    public void setLast_reconciliation_date(Timestamp last_reconciliation_date) {
        this.last_reconciliation_date = last_reconciliation_date;
    }

    public Double getDebit_limit() {
        return debit_limit;
    }

    public void setDebit_limit(Double debit_limit) {
        this.debit_limit = debit_limit;
    }

    public Integer getSection_id() {
        return section_id;
    }

    public void setSection_id(Integer section_id) {
        this.section_id = section_id;
    }

    public Boolean getSpeaker() {
        return speaker;
    }

    public void setSpeaker(Boolean speaker) {
        this.speaker = speaker;
    }
}
