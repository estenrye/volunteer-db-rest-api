package org.freegeek.volunteer.restapi.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.sql.Timestamp;

/**
 * Created by tom on 12/21/18.
 */
@Entity(name = "res_users")
public class ResUsers {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private boolean active;
    private String login;
    private String password;
    private Integer company_id;
    private Integer partner_id;
    private Integer create_uid;
    private Timestamp create_date;
    private Timestamp write_date;
    private Integer write_uid;
    private Integer menu_id;
    private Integer login_date;
    private String signature;
    private Integer action_id;
    private Integer alias_id;
    private Boolean share;
    private Integer pos_config;
    private String ean13;
    private Integer default_section_id;
    private String gmail_password;
    private String gmail_user;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getCompany_id() {
        return company_id;
    }

    public void setCompany_id(Integer company_id) {
        this.company_id = company_id;
    }

    public Integer getPartner_id() {
        return partner_id;
    }

    public void setPartner_id(Integer partner_id) {
        this.partner_id = partner_id;
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

    public Integer getMenu_id() {
        return menu_id;
    }

    public void setMenu_id(Integer menu_id) {
        this.menu_id = menu_id;
    }

    public Integer getLogin_date() {
        return login_date;
    }

    public void setLogin_date(Integer login_date) {
        this.login_date = login_date;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public Integer getAction_id() {
        return action_id;
    }

    public void setAction_id(Integer action_id) {
        this.action_id = action_id;
    }

    public Integer getAlias_id() {
        return alias_id;
    }

    public void setAlias_id(Integer alias_id) {
        this.alias_id = alias_id;
    }

    public Boolean getShare() {
        return share;
    }

    public void setShare(Boolean share) {
        this.share = share;
    }

    public Integer getPos_config() {
        return pos_config;
    }

    public void setPos_config(Integer pos_config) {
        this.pos_config = pos_config;
    }

    public String getEan13() {
        return ean13;
    }

    public void setEan13(String ean13) {
        this.ean13 = ean13;
    }

    public Integer getDefault_section_id() {
        return default_section_id;
    }

    public void setDefault_section_id(Integer default_section_id) {
        this.default_section_id = default_section_id;
    }

    public String getGmail_password() {
        return gmail_password;
    }

    public void setGmail_password(String gmail_password) {
        this.gmail_password = gmail_password;
    }

    public String getGmail_user() {
        return gmail_user;
    }

    public void setGmail_user(String gmail_user) {
        this.gmail_user = gmail_user;
    }
}
