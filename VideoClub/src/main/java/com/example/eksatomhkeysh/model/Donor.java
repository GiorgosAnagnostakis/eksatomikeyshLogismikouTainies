package com.example.eksatomhkeysh.model;

import javax.persistence.*;

@Entity
@Table(name="DONOR")
public class Donor {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "DONOR_SEQ")
    @SequenceGenerator(name = "DONOR_SEQ", sequenceName = "DONOR_SEQ", allocationSize = 1)
    public Long id;

    @Column(name = "COMPANY_NAME")
    private String companyName;

    @Column(name = "AFM")
    private String afm;


    public void setId(Long id) {
        this.id = id;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getAfm() {
        return afm;
    }

    public void setAfm(String afm) {
        this.afm = afm;
    }
}
