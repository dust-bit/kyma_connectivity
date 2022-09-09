using {OP_API_BUSINESS_PARTNER_SRV as external} from './external/OP_API_BUSINESS_PARTNER_SRV';

service BusinessPartner {
    entity BusinessPartner as projection on external.A_BusinessPartner;
}
