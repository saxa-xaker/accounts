package ru.rcaltd.account.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.rcaltd.account.model.ArbitrID;
import ru.rcaltd.account.repository.ArbitrRepository;


@Service
public class ArbitrServiceImpl implements ArbitrService {
    @Autowired
    private ArbitrRepository arbitrRepository;


    @Override
    public void save(ArbitrID arbitrID) {
        arbitrID.setId(arbitrID.getId());
        arbitrID.setArbitr_uprav_id(arbitrID.getArbitr_uprav_id());
        arbitrID.setCitizenship(arbitrID.getCitizenship());
        arbitrID.setBirthplace(arbitrID.getBirthplace());
        arbitrID.setBirthdate(arbitrID.getBirthdate());
        arbitrID.setDocument_type(arbitrID.getDocument_type());
        arbitrID.setDocument_id_number(arbitrID.getDocument_id_number());
        arbitrID.setDocument_id_date(arbitrID.getDocument_id_date());
        arbitrID.setDocument_id_by(arbitrID.getDocument_id_by());
        arbitrID.setDocument_id_code(arbitrID.getDocument_id_code());
        arbitrID.setRegistration_address(arbitrID.getRegistration_address());
        arbitrID.setRegistration_address_fact(arbitrID.getRegistration_address_fact());
        arbitrID.setAddress_for_documents(arbitrID.getAddress_for_documents());
        arbitrID.setInn(arbitrID.getInn());
        arbitrID.setTel_number(arbitrID.getTel_number());
        arbitrID.setEmail_address(arbitrID.getEmail_address());
        arbitrID.setEducation_base(arbitrID.getEducation_base());
        arbitrID.setEducation_higher(arbitrID.getEducation_higher());
        arbitrID.setSro_name(arbitrID.getSro_name());
        arbitrID.setSro_document_name(arbitrID.getSro_document_name());
        arbitrID.setSro_document_number(arbitrID.getSro_document_number());
        arbitrID.setSro_document_date(arbitrID.getSro_document_date());
        arbitrID.setSro_last_workplace(arbitrID.getSro_last_workplace());
        arbitrID.setArbitr_start_work_date(arbitrID.getArbitr_start_work_date());
        arbitrID.setCount_of_works(arbitrID.getCount_of_works());
        arbitrID.setTemp_manager_count(arbitrID.getTemp_manager_count());
        arbitrID.setAdmin_manager_count(arbitrID.getAdmin_manager_count());
        arbitrID.setOutdoor_manager_count(arbitrID.getOutdoor_manager_count());
        arbitrID.setTender_manager_count(arbitrID.getTender_manager_count());

        arbitrID.setBankrot_company_name(arbitrID.getBankrot_company_name());
        arbitrID.setBankrot_company_address(arbitrID.getBankrot_company_address());
        arbitrID.setBankrot_company_case_number(arbitrID.getBankrot_company_case_number());
        arbitrID.setBankrot_procedure_type(arbitrID.getBankrot_procedure_type());
        arbitrID.setBankrot_start_date_manage(arbitrID.getBankrot_start_date_manage());
        arbitrID.setBankrot_end_date_manage(arbitrID.getBankrot_end_date_manage());
        arbitrID.setComplete_procedure_temp_manager(arbitrID.getComplete_procedure_temp_manager());
        arbitrID.setComplete_procedure_admin_manager(arbitrID.getComplete_procedure_admin_manager());
        arbitrID.setComplete_procedure_outdoor_manager(arbitrID.getComplete_procedure_outdoor_manager());
        arbitrID.setComplete_procedure_tender_manager(arbitrID.getComplete_procedure_tender_manager());
        arbitrID.setCount_of_amicable_agreement_temp_manager(arbitrID.getCount_of_amicable_agreement_temp_manager());
        arbitrID.setCount_of_amicable_agreement_admin_manager(arbitrID.getCount_of_amicable_agreement_admin_manager());
        arbitrID.setCount_of_amicable_agreement_outdoor_manager(arbitrID.getCount_of_amicable_agreement_outdoor_manager());
        arbitrID.setCount_of_amicable_agreement_tender_manager(arbitrID.getCount_of_amicable_agreement_tender_manager());
        arbitrID.setIs_violation_discharge_of_manager(arbitrID.isIs_violation_discharge_of_manager());
        arbitrID.setViolation_discharge_of_manager_detailed(arbitrID.getViolation_discharge_of_manager_detailed());
        arbitrID.setIs_violation_law_manager(arbitrID.isIs_violation_law_manager());
        arbitrID.setViolation_law_manager_detailed(arbitrID.getViolation_law_manager_detailed());
        arbitrID.setIs_violation_requirement_compensation_harm_manager(arbitrID.isIs_violation_requirement_compensation_harm_manager());
        arbitrID.setViolation_requirement_compensation_harm_manager_detailed(arbitrID.getViolation_requirement_compensation_harm_manager_detailed());
        arbitrID.setIs_violation_pending_complaints(arbitrID.isIs_violation_pending_complaints());
        arbitrID.setViolation_pending_complaints_detailed(arbitrID.getViolation_pending_complaints_detailed());
        arbitrID.setIs_violation_complaints_considered(arbitrID.isIs_violation_complaints_considered());
        arbitrID.setViolation_complaints_considered_detailed(arbitrID.getViolation_complaints_considered_detailed());
        arbitrID.setIs_violation_intresting_information(arbitrID.isIs_violation_intresting_information());
        arbitrID.setViolation_intresting_information_detailed(arbitrID.getViolation_intresting_information_detailed());

        arbitrID.setIs_insurance_before(arbitrID.isIs_insurance_before());
        arbitrID.setInsurance_before_company_name(arbitrID.getInsurance_before_company_name());
        arbitrID.setInsurance_before_summa(arbitrID.getInsurance_before_summa());
        arbitrID.setInsurance_before_start_date(arbitrID.getInsurance_before_start_date());
        arbitrID.setInsurance_before_end_date(arbitrID.getInsurance_before_end_date());
        arbitrID.setInsurance_before_compensation(arbitrID.getInsurance_before_compensation());
        arbitrID.setIs_insurance_current(arbitrID.isIs_insurance_current());
        arbitrID.setInsurance_current_company_name(arbitrID.getInsurance_current_company_name());
        arbitrID.setInsurance_current_summa(arbitrID.getInsurance_current_summa());
        arbitrID.setInsurance_current_start_date(arbitrID.getInsurance_current_start_date());
        arbitrID.setInsurance_current_end_date(arbitrID.getInsurance_current_end_date());
        arbitrID.setInsurance_conditions_summa(arbitrID.getInsurance_conditions_summa());
        arbitrID.setInsurance_conditions_start_date(arbitrID.getInsurance_conditions_start_date());
        arbitrID.setInsurance_conditions_end_date(arbitrID.getInsurance_conditions_end_date());
        arbitrID.setIs_foreign_agent(arbitrID.isIs_foreign_agent());
        arbitrID.setIs_international_agent(arbitrID.isIs_international_agent());
        arbitrID.setIs_russian_agent(arbitrID.isIs_russian_agent());



        arbitrRepository.save(arbitrID);
    }
/*
    @Override
    public void read(DocumentId document_id) {
        document_id.getId(document_id.getId());
        document_id.getInsurant(document_id.getInsurant());
        document_id.getShipper(document_id.getShipper());
        document_id.getConsignee(document_id.getConsignee());
        document_id.getTransporter(document_id.getTransporter());
        document_id.getDeparture_point(document_id.getDeparture_point());
        document_id.getDestination_point(document_id.getDestination_point());
        document_id.getVehicle_type(document_id.getVehicle_type());
        document_id.getCar_number(document_id.getCar_number());
        document_id.getTrailer_number(document_id.getTrailer_number());
        document_id.getDriver_id_type(document_id.getDriver_id_type());
        document_id.getDriver_id(document_id.getDriver_id());
        document_id.getDriver_id_number(document_id.getDriver_id_number());
        document_id.getDriver_id_date(document_id.getDriver_id_date());
        document_id.getDocuments_in_package(document_id.getDocuments_in_package());
        document_id.getDocuments_type(document_id.getDocuments_type());
        document_id.getDocuments_number(document_id.getDocuments_number());
        document_id.getDocument_create_date(document_id.getDocument_create_date());
        document_id.getNumber_of_products(document_id.getNumber_of_products());
        document_id.getNumber_of_seats(document_id.getNumber_of_seats());
        document_id.getCargo_gross_weight(document_id.getCargo_gross_weight());
        document_id.getHs_code(document_id.getHs_code());
        document_id.getGoods_description(document_id.getGoods_description());
        document_id.getItem_weight(document_id.getItem_weight());
        document_id.getGoods_cost(document_id.getGoods_cost());
        document_id.getCurrency(document_id.getCurrency());
        document_id.getStart_contract_date(document_id.getStart_contract_date());
        document_id.getEnd_contract_date(document_id.getEnd_contract_date());

        docsRepository.read(document_id);
    }
*/
    @Override
    public ArbitrID findById(Long id) {
        return arbitrRepository.findById(id);
    }
}
