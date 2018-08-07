CREATE DATABASE  IF NOT EXISTS `accounts`;
USE `accounts`;
--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
INSERT INTO `role` VALUES (1,'ROLE_USER');
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Table structure for table `document_id`
--

DROP TABLE IF EXISTS `document_id`;
CREATE TABLE `document_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insurant` varchar(255) DEFAULT NULL,
  `shipper` varchar(255) DEFAULT NULL,
  `consignee` varchar(255) DEFAULT NULL,
  `transporter` varchar(255) DEFAULT NULL,
  `departure_point` varchar(255) DEFAULT NULL,
  `destination_point` varchar(255) DEFAULT NULL,
  `vehicle_type` varchar(255) DEFAULT NULL,
  `car_number` varchar(255) DEFAULT NULL,
  `trailer_number` varchar(255) DEFAULT NULL,
  `driver_id_type` varchar(255) DEFAULT NULL,
  `driver_id` varchar(255) DEFAULT NULL,
  `driver_id_number` varchar(255) DEFAULT NULL,
  `driver_id_date` date DEFAULT NULL,
  `documents_in_package` varchar(255) DEFAULT NULL,
  `documents_type` varchar(255) DEFAULT NULL,
  `documents_number` varchar(255) DEFAULT NULL,
  `document_create_date` date DEFAULT NULL,
  `number_of_products` varchar(255) DEFAULT NULL,
  `number_of_seats` varchar(255) DEFAULT NULL,
  `cargo_gross_weight` varchar(255) DEFAULT NULL,
  `hs_code` varchar(255) DEFAULT NULL,
  `goods_description` varchar(255) DEFAULT NULL,
  `item_weight` varchar(255) DEFAULT NULL,
  `goods_cost` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `start_contract_date` date DEFAULT NULL,
  `end_contract_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Table structure for table `arbitr_uprav`
--
DROP TABLE IF EXISTS `arbitr_uprav`;
CREATE TABLE `arbitr_uprav` (
  `id`                        int(11) NOT NULL AUTO_INCREMENT,
  `arbitr_uprav_id`           varchar(255) DEFAULT NULL,
  `citizenship`               varchar(255) DEFAULT NULL,
  `birthplace`                varchar(255) DEFAULT NULL,
  `birthdate`                   date DEFAULT NULL,
  `document_type`      varchar(255) DEFAULT NULL,
  `document_id_number`        varchar(255) DEFAULT NULL,
  `document_id_date`          date  DEFAULT NULL,
  `document_id_by`            varchar(255) DEFAULT NULL,
  `document_id_code`          varchar(255) DEFAULT NULL,
  `registration_address`      varchar(255) DEFAULT NULL,
  `registration_address_fact` varchar(255) DEFAULT NULL,
  `address_for_documents`     varchar(255) DEFAULT NULL,
  `inn`                       varchar (255) DEFAULT NULL,
  `tel_number`                varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `education_base` varchar(255) DEFAULT NULL,
  `education_higher` varchar (255) DEFAULT NULL,
  `sro_name` varchar(255) DEFAULT NULL,
  `sro_document_name` varchar(255) DEFAULT NULL,
  `sro_document_number` varchar(255) DEFAULT NULL,
  `sro_document_date` date DEFAULT NULL,
  `sro_last_workplace` varchar(255) DEFAULT NULL,
  `arbitr_start_work_date` date DEFAULT NULL,
  `count_of_works` int(255) DEFAULT NULL,
  `temp_manager_count` int(255) DEFAULT NULL,
  `admin_manager_count` int (255) DEFAULT NULL,
  `outdoor_manager_count` int (255) DEFAULT NULL,
  `tender_manager_count` int(11) DEFAULT NULL ,
  `bankrot_company_name` varchar(255) DEFAULT NULL,
  `bankrot_company_address` varchar(255) DEFAULT NULL,
  `bankrot_company_case_number` int(255) DEFAULT NULL,
  `bankrot_procedure_type` varchar(255) DEFAULT NULL,
  `bankrot_start_date_manage` date  DEFAULT NULL,
  `bankrot_end_date_manage` date  DEFAULT NULL,
  `complete_procedure_temp_manager` int(255) DEFAULT NULL,
  `complete_procedure_admin_manager` int(255) DEFAULT NULL,
  `complete_procedure_outdoor_manager` int(255) DEFAULT NULL,
  `complete_procedure_tender_manager` int(255) DEFAULT NULL,
  `count_of_amicable_agreement_temp_manager` int(255) DEFAULT NULL,
  `count_of_amicable_agreement_admin_manager` int(255) DEFAULT NULL,
  `count_of_amicable_agreement_outdoor_manager` int (255) DEFAULT NULL,
  `count_of_amicable_agreement_tender_manager` int(255) DEFAULT NULL,
  `is_violation_discharge_of_manager` boolean DEFAULT NULL,
  `violation_discharge_of_manager_detailed` varchar(255) DEFAULT NULL,
  `is_violation_law_manager` boolean DEFAULT NULL,
  `violation_law_manager_detailed` varchar(255) DEFAULT NULL,
  `is_violation_requirement_compensation_harm_manager` boolean DEFAULT NULL,
  `violation_requirement_compensation_harm_manager_detailed` varchar(255) DEFAULT NULL,
  `is_violation_pending_complaints` boolean DEFAULT NULL,
  `violation_pending_complaints_detailed` varchar(255) DEFAULT NULL,
  `is_violation_complaints_considered` boolean DEFAULT NULL,
  `violation_complaints_considered_detailed` varchar(255) DEFAULT NULL,
  `is_violation_intresting_information` boolean DEFAULT NULL,
  `violation_intresting_information_detailed` date DEFAULT NULL,
  `is_insurance_before` boolean DEFAULT NULL,
  `insurance_before_company_name` varchar(255) DEFAULT NULL,
  `insurance_before_summa` double DEFAULT NULL,
  `insurance_before_start_date` date DEFAULT NULL,
  `insurance_before_end_date` date DEFAULT NULL,
  `insurance_before_compensation` double DEFAULT NULL,
  `is_insurance_current` boolean DEFAULT NULL,
  `insurance_current_company_name` varchar(255) DEFAULT NULL,
  `insurance_current_summa` double DEFAULT NULL,
  `insurance_current_start_date` date DEFAULT NULL,
  `insurance_current_end_date` date DEFAULT NULL,
  `insurance_conditions_summa` double DEFAULT NULL,
  `insurance_conditions_start_date` date DEFAULT NULL,
  `insurance_conditions_end_date` date DEFAULT NULL,
  `is_foreign_agent` boolean  DEFAULT NULL,
  `is_international_agent` boolean DEFAULT NULL,
  `is_russian_agent` boolean DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_user_role_roleid_idx` (`role_id`),
  CONSTRAINT `fk_user_role_roleid` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_role_userid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;