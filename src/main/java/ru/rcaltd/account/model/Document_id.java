package ru.rcaltd.account.model;


import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "document_id")
public class Document_id {
    private Long id;
    private String insurant;
    private String shipper;
    private String consignee;
    private String transporter;
    private String departure_point;
    private String destination_point;
    private String vehicle_type;
    private String car_number;
    private String trailer_number;
    private String driver_id_type;
    private String driver_id;
    private String driver_id_number;
    private int documents_in_package;
    private String documents_type;
    private String document_create_date;
    private int number_of_products;
    private int number_of_seats;
    private String cargo_gross_weight;
    private double hs_code;
    private String goods_description;
    private double item_weight;
    private double goods_cost;
    private String currency;
    private Date start_contract_date;
    private Date end_contract_date;

    private Set<Role> roles;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public String getInsurant() {
        return insurant;
    }

    public void setInsurant(String insurant) {
        this.insurant = insurant;
    }


    public String getShipper() {
        return shipper;
    }

    public void setShipper(String shipper) {
        this.shipper = shipper;
    }


    public String getConsignee() { return consignee; }

    public void setConsignee(String consignee) {
        this.consignee = consignee;
    }


    public String getTransporter() {
        return transporter;
    }

    public void setTransporter(String transporter) {
        this.transporter = transporter;
    }


    public String getDeparture_point() {
        return departure_point;
    }

    public void setDeparture_point(String departure_point) {
        this.departure_point = departure_point;
    }


    public String getDestination_point() { return destination_point; }

    public void setDestination_point(String destination_point) {
        this.destination_point = destination_point;
    }


    public String getVehicle_type() {
        return vehicle_type;
    }

    public void setVehicle_type(String vehicle_type) {
        this.vehicle_type = vehicle_type;
    }


    public String getCar_number() {
        return car_number;
    }

    public void setCar_number(String car_number) {
        this.car_number = car_number;
    }


    public String getTrailer_number() { return trailer_number; }

    public void setTrailer_number(String trailer_number) {
        this.trailer_number = trailer_number;
    }


    public String getDriver_id_type() {
        return driver_id_type;
    }

    public void setDriver_id_type(String driver_id_type) {
        this.driver_id_type = driver_id_type;
    }


    public String getDriver_id() {
        return driver_id;
    }

    public void setDriver_id(String driver_id) {
        this.driver_id = driver_id;
    }


    public String getDriver_id_number() { return driver_id_number; }

    public void setDriver_id_number(String driver_id_number) {
        this.driver_id_number = driver_id_number;
    }


    public int getDocuments_in_package() { return documents_in_package; }

    public void setDocuments_in_package(int documents_in_package) { this.documents_in_package = documents_in_package;}


    public String getDocuments_type() { return documents_type; }

    public void setDocuments_type(String documents_type) {
        this.documents_type = documents_type;
    }


    public String getDocument_create_date() {
        return document_create_date;
    }

    public void setDocument_create_date(String document_create_date) {this.document_create_date = document_create_date;}


    public int getNumber_of_products() {
        return number_of_products;
    }

    public void setNumber_of_products(int number_of_products) {
        this.number_of_products = number_of_products;
    }


    public int getNumber_of_seats() { return number_of_seats; }

    public void setNumber_of_seats(int number_of_seats) {
        this.number_of_seats = number_of_seats;
    }


    public String getCargo_gross_weight() {
        return cargo_gross_weight;
    }

    public void setCargo_gross_weight(String cargo_gross_weight) {
        this.cargo_gross_weight = cargo_gross_weight;
    }


    public double getHs_code() {
        return hs_code;
    }

    public void setHs_code(double hs_code) {
        this.hs_code = hs_code;
    }


    public String getGoods_description() { return goods_description; }

    public void setGoods_description(String goods_description) {
        this.goods_description = goods_description;
    }


    public double getItem_weight() {
        return item_weight;
    }

    public void setItem_weight(double item_weight) {
        this.item_weight = item_weight;
    }


    public double getGoods_cost() { return goods_cost; }

    public void setGoods_cost(double goods_cost) {
        this.goods_cost = goods_cost;
    }


    public String getCurrency() { return currency; }

    public void setCurrency(String currency) {
        this.currency = currency;
    }


    public Date getStart_contract_date() { return start_contract_date; }

    public void setStart_contract_date(Date start_contract_date) {
        this.start_contract_date = start_contract_date;
    }


    public Date getEnd_contract_date() { return end_contract_date; }

    public void setEnd_contract_date(Date end_contract_date) {
        this.end_contract_date = end_contract_date;
    }


    @ManyToMany
    @JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }
}
