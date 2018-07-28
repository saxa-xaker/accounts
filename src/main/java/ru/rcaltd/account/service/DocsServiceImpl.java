package ru.rcaltd.account.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import ru.rcaltd.account.model.Document_id;

import ru.rcaltd.account.repository.DocsRepository;



@Service
public class DocsServiceImpl implements DocsService {
    @Autowired
    private DocsRepository docsRepository;


    @Override
    public void save(Document_id document_id) {
        document_id.setId(document_id.getId());
        document_id.setInsurant(document_id.getInsurant());
        document_id.setShipper(document_id.getShipper());
        document_id.setConsignee(document_id.getConsignee());
        document_id.setTransporter(document_id.getTransporter());
        document_id.setDeparture_point(document_id.getDeparture_point());
        document_id.setDestination_point(document_id.getDestination_point());
        document_id.setVehicle_type(document_id.getVehicle_type());
        document_id.setCar_number(document_id.getCar_number());
        document_id.setTrailer_number(document_id.getTrailer_number());
        document_id.setDriver_id_type(document_id.getDriver_id_type());
        document_id.setDriver_id(document_id.getDriver_id());
        document_id.setDriver_id_number(document_id.getDriver_id_number());
        document_id.setDocuments_in_package(document_id.getDocuments_in_package());
        document_id.setDocuments_type(document_id.getDocuments_type());
        document_id.setDocument_create_date(document_id.getDocument_create_date());
        document_id.setNumber_of_products(document_id.getNumber_of_products());
        document_id.setNumber_of_seats(document_id.getNumber_of_seats());
        document_id.setCargo_gross_weight(document_id.getCargo_gross_weight());
        document_id.setHs_code(document_id.getHs_code());
        document_id.setGoods_description(document_id.getGoods_description());
        document_id.setItem_weight(document_id.getItem_weight());
        document_id.setGoods_cost(document_id.getGoods_cost());
        document_id.setCurrency(document_id.getCurrency());
        document_id.setStart_contract_date(document_id.getStart_contract_date());
        document_id.setEnd_contract_date(document_id.getEnd_contract_date());







        docsRepository.save(document_id);
    }

    @Override
    public Document_id findById(Long id) {
        return docsRepository.findById(id);
    }
}
