/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gov.wp.kd.pdso.erp.dto;

/**
 *
 * @author nisalsp9
 */
public class IDApplicant {
    
    private int applicantID;
    private String name;
    private String tel;
    private String address;
    private String gender;
    private String job;
    private String DOB;
    private String NIC;
    private String grama;
    private String DSD;
    private String district;
    private String date;

    public IDApplicant() {
    }

    public IDApplicant(int applicantID, String name, String tel, String address, String gender, String job, String DOB, String NIC, String grama, String DSD, String district, String date) {
        this.applicantID = applicantID;
        this.name = name;
        this.tel = tel;
        this.address = address;
        this.gender = gender;
        this.job = job;
        this.DOB = DOB;
        this.NIC = NIC;
        this.grama = grama;
        this.DSD = DSD;
        this.district = district;
        this.date = date;
    }

    public int getApplicantID() {
        return applicantID;
    }

    public void setApplicantID(int applicantID) {
        this.applicantID = applicantID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getNIC() {
        return NIC;
    }

    public void setNIC(String NIC) {
        this.NIC = NIC;
    }

    public String getGrama() {
        return grama;
    }

    public void setGrama(String grama) {
        this.grama = grama;
    }

    public String getDSD() {
        return DSD;
    }

    public void setDSD(String DSD) {
        this.DSD = DSD;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    
    
    
}
