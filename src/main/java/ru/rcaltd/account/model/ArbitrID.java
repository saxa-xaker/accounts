package ru.rcaltd.account.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "arbitr_uprav")
public class ArbitrID {
    private Long id;
    private String arbitr_uprav_id;
    private String citizenship;
    private String birthplace;
    private Date birthdate;

    private String document_type;
    private String document_id_number;
    private Date document_id_date;
    private String document_id_by;
    private String document_id_code;

    private String registration_address;
    private String registration_address_fact;
    private String address_for_documents;
    private String inn;
    private String tel_number;

    private String email_address;
    private String education_base;
    private String education_higher;
    private String sro_name;
    private String sro_document_name;

    private String sro_document_number;
    private Date sro_document_date;
    private String sro_last_workplace;
    private Date arbitr_start_work_date;
    private int count_of_works;

    private int temp_manager_count;
    private int admin_manager_count;
    private int outdoor_manager_count;
    private int tender_manager_count;
    private String bankrot_company_name;

    private String bankrot_company_address;
    private int bankrot_company_case_number;
    private String bankrot_procedure_type;
    private Date bankrot_start_date_manage;
    private Date bankrot_end_date_manage;

    private int complete_procedure_temp_manager;
    private int complete_procedure_admin_manager;
    private int complete_procedure_outdoor_manager;
    private int complete_procedure_tender_manager;
    private int count_of_amicable_agreement_temp_manager;

    private int count_of_amicable_agreement_admin_manager;
    private int count_of_amicable_agreement_outdoor_manager;
    private int count_of_amicable_agreement_tender_manager;
    private boolean is_violation_discharge_of_manager;
    private String violation_discharge_of_manager_detailed;

    private boolean is_violation_law_manager;
    private String violation_law_manager_detailed;
    private boolean is_violation_requirement_compensation_harm_manager;
    private String violation_requirement_compensation_harm_manager_detailed;
    private boolean is_violation_pending_complaints;

    private String violation_pending_complaints_detailed;
    private boolean is_violation_complaints_considered;
    private String violation_complaints_considered_detailed;
    private boolean is_violation_intresting_information;
    private String violation_intresting_information_detailed;

    private boolean is_insurance_before;
    private String insurance_before_company_name;
    private double insurance_before_summa;
    private Date insurance_before_start_date;
    private Date insurance_before_end_date;

    private double insurance_before_compensation;
    private boolean is_insurance_current;
    private String insurance_current_company_name;
    private double insurance_current_summa;
    private Date insurance_current_start_date;

    private Date insurance_current_end_date;
    private double insurance_conditions_summa;
    private Date insurance_conditions_start_date;
    private Date insurance_conditions_end_date;
    private boolean is_foreign_agent;

    private boolean is_international_agent;
    private boolean is_russian_agent;


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getArbitr_uprav_id() {
        return arbitr_uprav_id;
    }

    public void setArbitr_uprav_id(String arbitr_uprav_id) {
        this.arbitr_uprav_id = arbitr_uprav_id;
    }

    public String getCitizenship() {
        return citizenship;
    }

    public void setCitizenship(String citizenship) {
        this.citizenship = citizenship;
    }

    public String getBirthplace() {
        return birthplace;
    }

    public void setBirthplace(String birthplace) {
        this.birthplace = birthplace;
    }

    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }

    public String getDocument_type() {
        return document_type;
    }

    public void setDocument_type(String document_type) {
        this.document_type = document_type;
    }

    public String getDocument_id_number() {
        return document_id_number;
    }

    public void setDocument_id_number(String document_id_number) {
        this.document_id_number = document_id_number;
    }

    public Date getDocument_id_date() {
        return document_id_date;
    }

    public void setDocument_id_date(Date document_id_date) {
        this.document_id_date = document_id_date;
    }

    public String getDocument_id_by() {
        return document_id_by;
    }

    public void setDocument_id_by(String document_id_by) {
        this.document_id_by = document_id_by;
    }

    public String getDocument_id_code() {
        return document_id_code;
    }

    public void setDocument_id_code(String document_id_code) {
        this.document_id_code = document_id_code;
    }

    public String getRegistration_address() {
        return registration_address;
    }

    public void setRegistration_address(String registration_address) {
        this.registration_address = registration_address;
    }

    public String getRegistration_address_fact() {
        return registration_address_fact;
    }

    public void setRegistration_address_fact(String registration_address_fact) {
        this.registration_address_fact = registration_address_fact;
    }

    public String getAddress_for_documents() {
        return address_for_documents;
    }

    public void setAddress_for_documents(String address_for_documents) {
        this.address_for_documents = address_for_documents;
    }

    public String getInn() {
        return inn;
    }

    public void setInn(String inn) {
        this.inn = inn;
    }

    public String getTel_number() {
        return tel_number;
    }

    public void setTel_number(String tel_number) {
        this.tel_number = tel_number;
    }

    public String getEmail_address() {
        return email_address;
    }

    public void setEmail_address(String email_address) {
        this.email_address = email_address;
    }

    public String getEducation_base() {
        return education_base;
    }

    public void setEducation_base(String education_base) {
        this.education_base = education_base;
    }

    public String getEducation_higher() {
        return education_higher;
    }

    public void setEducation_higher(String education_higher) {
        this.education_higher = education_higher;
    }

    public String getSro_name() {
        return sro_name;
    }

    public void setSro_name(String sro_name) {
        this.sro_name = sro_name;
    }

    public String getSro_document_name() {
        return sro_document_name;
    }

    public void setSro_document_name(String sro_document_name) {
        this.sro_document_name = sro_document_name;
    }

    public String getSro_document_number() {
        return sro_document_number;
    }

    public void setSro_document_number(String sro_document_number) {
        this.sro_document_number = sro_document_number;
    }

    public Date getSro_document_date() {
        return sro_document_date;
    }

    public void setSro_document_date(Date sro_document_date) {
        this.sro_document_date = sro_document_date;
    }

    public String getSro_last_workplace() {
        return sro_last_workplace;
    }

    public void setSro_last_workplace(String sro_last_workplace) {
        this.sro_last_workplace = sro_last_workplace;
    }

    public Date getArbitr_start_work_date() {
        return arbitr_start_work_date;
    }

    public void setArbitr_start_work_date(Date arbitr_start_work_date) {
        this.arbitr_start_work_date = arbitr_start_work_date;
    }

    public int getCount_of_works() {
        return count_of_works;
    }

    public void setCount_of_works(int count_of_works) {
        this.count_of_works = count_of_works;
    }

    public int getTemp_manager_count() {
        return temp_manager_count;
    }

    public void setTemp_manager_count(int temp_manager_count) {
        this.temp_manager_count = temp_manager_count;
    }

    public int getAdmin_manager_count() {
        return admin_manager_count;
    }

    public void setAdmin_manager_count(int admin_manager_count) {
        this.admin_manager_count = admin_manager_count;
    }

    public int getOutdoor_manager_count() {
        return outdoor_manager_count;
    }

    public void setOutdoor_manager_count(int outdoor_manager_count) {
        this.outdoor_manager_count = outdoor_manager_count;
    }

    public int getTender_manager_count() {
        return tender_manager_count;
    }

    public void setTender_manager_count(int tender_manager_count) {
        this.tender_manager_count = tender_manager_count;
    }

    public String getBankrot_company_name() {
        return bankrot_company_name;
    }

    public void setBankrot_company_name(String bankrot_company_name) {
        this.bankrot_company_name = bankrot_company_name;
    }

    public String getBankrot_company_address() {
        return bankrot_company_address;
    }

    public void setBankrot_company_address(String bankrot_company_address) {
        this.bankrot_company_address = bankrot_company_address;
    }

    public int getBankrot_company_case_number() {
        return bankrot_company_case_number;
    }

    public void setBankrot_company_case_number(int bankrot_company_case_number) {
        this.bankrot_company_case_number = bankrot_company_case_number;
    }

    public String getBankrot_procedure_type() {
        return bankrot_procedure_type;
    }

    public void setBankrot_procedure_type(String bankrot_procedure_type) {
        this.bankrot_procedure_type = bankrot_procedure_type;
    }

    public Date getBankrot_start_date_manage() {
        return bankrot_start_date_manage;
    }

    public void setBankrot_start_date_manage(Date bankrot_start_date_manage) {
        this.bankrot_start_date_manage = bankrot_start_date_manage;
    }

    public Date getBankrot_end_date_manage() {
        return bankrot_end_date_manage;
    }

    public void setBankrot_end_date_manage(Date bankrot_end_date_manage) {
        this.bankrot_end_date_manage = bankrot_end_date_manage;
    }

    public int getComplete_procedure_temp_manager() {
        return complete_procedure_temp_manager;
    }

    public void setComplete_procedure_temp_manager(int complete_procedure_temp_manager) {
        this.complete_procedure_temp_manager = complete_procedure_temp_manager;
    }

    public int getComplete_procedure_admin_manager() {
        return complete_procedure_admin_manager;
    }

    public void setComplete_procedure_admin_manager(int complete_procedure_admin_manager) {
        this.complete_procedure_admin_manager = complete_procedure_admin_manager;
    }

    public int getComplete_procedure_outdoor_manager() {
        return complete_procedure_outdoor_manager;
    }

    public void setComplete_procedure_outdoor_manager(int complete_procedure_outdoor_manager) {
        this.complete_procedure_outdoor_manager = complete_procedure_outdoor_manager;
    }

    public int getComplete_procedure_tender_manager() {
        return complete_procedure_tender_manager;
    }

    public void setComplete_procedure_tender_manager(int complete_procedure_tender_manager) {
        this.complete_procedure_tender_manager = complete_procedure_tender_manager;
    }

    public int getCount_of_amicable_agreement_temp_manager() {
        return count_of_amicable_agreement_temp_manager;
    }

    public void setCount_of_amicable_agreement_temp_manager(int count_of_amicable_agreement_temp_manager) {
        this.count_of_amicable_agreement_temp_manager = count_of_amicable_agreement_temp_manager;
    }

    public int getCount_of_amicable_agreement_admin_manager() {
        return count_of_amicable_agreement_admin_manager;
    }

    public void setCount_of_amicable_agreement_admin_manager(int count_of_amicable_agreement_admin_manager) {
        this.count_of_amicable_agreement_admin_manager = count_of_amicable_agreement_admin_manager;
    }

    public int getCount_of_amicable_agreement_outdoor_manager() {
        return count_of_amicable_agreement_outdoor_manager;
    }

    public void setCount_of_amicable_agreement_outdoor_manager(int count_of_amicable_agreement_outdoor_manager) {
        this.count_of_amicable_agreement_outdoor_manager = count_of_amicable_agreement_outdoor_manager;
    }

    public int getCount_of_amicable_agreement_tender_manager() {
        return count_of_amicable_agreement_tender_manager;
    }

    public void setCount_of_amicable_agreement_tender_manager(int count_of_amicable_agreement_tender_manager) {
        this.count_of_amicable_agreement_tender_manager = count_of_amicable_agreement_tender_manager;
    }

    public boolean isIs_violation_discharge_of_manager() {
        return is_violation_discharge_of_manager;
    }

    public void setIs_violation_discharge_of_manager(boolean is_violation_discharge_of_manager) {
        this.is_violation_discharge_of_manager = is_violation_discharge_of_manager;
    }

    public String getViolation_discharge_of_manager_detailed() {
        return violation_discharge_of_manager_detailed;
    }

    public void setViolation_discharge_of_manager_detailed(String violation_discharge_of_manager_detailed) {
        this.violation_discharge_of_manager_detailed = violation_discharge_of_manager_detailed;
    }

    public boolean isIs_violation_law_manager() {
        return is_violation_law_manager;
    }

    public void setIs_violation_law_manager(boolean is_violation_law_manager) {
        this.is_violation_law_manager = is_violation_law_manager;
    }

    public String getViolation_law_manager_detailed() {
        return violation_law_manager_detailed;
    }

    public void setViolation_law_manager_detailed(String violation_law_manager_detailed) {
        this.violation_law_manager_detailed = violation_law_manager_detailed;
    }

    public boolean isIs_violation_requirement_compensation_harm_manager() {
        return is_violation_requirement_compensation_harm_manager;
    }

    public void setIs_violation_requirement_compensation_harm_manager(boolean is_violation_requirement_compensation_harm_manager) {
        this.is_violation_requirement_compensation_harm_manager = is_violation_requirement_compensation_harm_manager;
    }

    public String getViolation_requirement_compensation_harm_manager_detailed() {
        return violation_requirement_compensation_harm_manager_detailed;
    }

    public void setViolation_requirement_compensation_harm_manager_detailed(String violation_requirement_compensation_harm_manager_detailed) {
        this.violation_requirement_compensation_harm_manager_detailed = violation_requirement_compensation_harm_manager_detailed;
    }

    public boolean isIs_violation_pending_complaints() {
        return is_violation_pending_complaints;
    }

    public void setIs_violation_pending_complaints(boolean is_violation_pending_complaints) {
        this.is_violation_pending_complaints = is_violation_pending_complaints;
    }

    public String getViolation_pending_complaints_detailed() {
        return violation_pending_complaints_detailed;
    }

    public void setViolation_pending_complaints_detailed(String violation_pending_complaints_detailed) {
        this.violation_pending_complaints_detailed = violation_pending_complaints_detailed;
    }

    public boolean isIs_violation_complaints_considered() {
        return is_violation_complaints_considered;
    }

    public void setIs_violation_complaints_considered(boolean is_violation_complaints_considered) {
        this.is_violation_complaints_considered = is_violation_complaints_considered;
    }

    public String getViolation_complaints_considered_detailed() {
        return violation_complaints_considered_detailed;
    }

    public void setViolation_complaints_considered_detailed(String violation_complaints_considered_detailed) {
        this.violation_complaints_considered_detailed = violation_complaints_considered_detailed;
    }

    public boolean isIs_violation_intresting_information() {
        return is_violation_intresting_information;
    }

    public void setIs_violation_intresting_information(boolean is_violation_intresting_information) {
        this.is_violation_intresting_information = is_violation_intresting_information;
    }

    public String getViolation_intresting_information_detailed() {
        return violation_intresting_information_detailed;
    }

    public void setViolation_intresting_information_detailed(String violation_intresting_information_detailed) {
        this.violation_intresting_information_detailed = violation_intresting_information_detailed;
    }

    public boolean isIs_insurance_before() {
        return is_insurance_before;
    }

    public void setIs_insurance_before(boolean is_insurance_before) {
        this.is_insurance_before = is_insurance_before;
    }

    public String getInsurance_before_company_name() {
        return insurance_before_company_name;
    }

        public void setInsurance_before_company_name(String insurance_before_company_name) {
        this.insurance_before_company_name = insurance_before_company_name;
    }

    public double getInsurance_before_summa() {
        return insurance_before_summa;
    }

        public void setInsurance_before_summa(double insurance_before_summa) {
        this.insurance_before_summa = insurance_before_summa;
    }

    public Date getInsurance_before_start_date() {
        return insurance_before_start_date;
    }

        public void setInsurance_before_start_date(Date insurance_before_start_date) {
        this.insurance_before_start_date = insurance_before_start_date;
    }

    public Date getInsurance_before_end_date() {
        return insurance_before_end_date;
    }

        public void setInsurance_before_end_date(Date insurance_before_end_date) {
        this.insurance_before_end_date = insurance_before_end_date;
    }

    public double getInsurance_before_compensation() {
        return insurance_before_compensation;
    }

        public void setInsurance_before_compensation(double insurance_before_compensation) {
        this.insurance_before_compensation = insurance_before_compensation;
    }

    public boolean isIs_insurance_current() {
        return is_insurance_current;
    }

        public void setIs_insurance_current(boolean is_insurance_current) {
        this.is_insurance_current = is_insurance_current;
    }

    public String getInsurance_current_company_name() {
        return insurance_current_company_name;
    }

        public void setInsurance_current_company_name(String insurance_current_company_name) {
        this.insurance_current_company_name = insurance_current_company_name;
    }

    public double getInsurance_current_summa() {
        return insurance_current_summa;
    }

        public void setInsurance_current_summa(double insurance_current_summa) {
        this.insurance_current_summa = insurance_current_summa;
    }

    public Date getInsurance_current_start_date() {
        return insurance_current_start_date;
    }

        public void setInsurance_current_start_date(Date insurance_current_start_date) {
        this.insurance_current_start_date = insurance_current_start_date;
    }

    public Date getInsurance_current_end_date() {
        return insurance_current_end_date;
    }

        public void setInsurance_current_end_date(Date insurance_current_end_date) {
        this.insurance_current_end_date = insurance_current_end_date;
    }

    public double getInsurance_conditions_summa() {
        return insurance_conditions_summa;
    }

        public void setInsurance_conditions_summa(double insurance_conditions_summa) {
        this.insurance_conditions_summa = insurance_conditions_summa;
    }

    public Date getInsurance_conditions_start_date() {
        return insurance_conditions_start_date;
    }

        public void setInsurance_conditions_start_date(Date insurance_conditions_start_date) {
        this.insurance_conditions_start_date = insurance_conditions_start_date;
    }

    public Date getInsurance_conditions_end_date() {
        return insurance_conditions_end_date;
    }

        public void setInsurance_conditions_end_date(Date insurance_conditions_end_date) {
        this.insurance_conditions_end_date = insurance_conditions_end_date;
    }

    public boolean isIs_foreign_agent() {
        return is_foreign_agent;
    }

        public void setIs_foreign_agent(boolean is_foreign_agent) {
        this.is_foreign_agent = is_foreign_agent;
    }

    public boolean isIs_international_agent() {
        return is_international_agent;
    }

        public void setIs_international_agent(boolean is_international_agent) {
        this.is_international_agent = is_international_agent;
    }

    public boolean isIs_russian_agent() {
        return is_russian_agent;
    }

        public void setIs_russian_agent(boolean is_russian_agent) {
        this.is_russian_agent = is_russian_agent;
    }
}