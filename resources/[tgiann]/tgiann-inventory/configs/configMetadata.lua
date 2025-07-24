config.metadata = {
    id_card = {
        { metadata = "citizenid",   value = "CSN:" },
        { metadata = "firstname",   value = "First Name:" },
        { metadata = "lastname",    value = "Last Name:" },
        { metadata = "birthdate",   value = "Birth Date:" },
        { metadata = "gender",      value = "Gender:" },
        { metadata = "nationality", value = "Nationality:" },
        { metadata = "quality",     value = "Quality:" },
    },
    driver_license = {
        { metadata = "firstname", value = "First Name:" },
        { metadata = "lastname",  value = "Last Name:" },
        { metadata = "birthdate", value = "Birth Date:" },
        { metadata = "type",      value = "Licenses:" },
    },
    driver_licenseb = {
        { metadata = "firstname", value = "First Name:" },
        { metadata = "lastname",  value = "Last Name:" },
        { metadata = "birthdate", value = "Birth Date:" },
        { metadata = "type",      value = "Licenses:" },
    },
    driver_licensec = {
        { metadata = "firstname", value = "First Name:" },
        { metadata = "lastname",  value = "Last Name:" },
        { metadata = "birthdate", value = "Birth Date:" },
        { metadata = "type",      value = "Licenses:" },
    },
    weaponlicense = {
        { metadata = "firstname", value = "First Name:" },
        { metadata = "lastname",  value = "Last Name:" },
        { metadata = "birthdate", value = "Birth Date:" },
        { metadata = "thc",       value = "Thc:" },
        { metadata = "quality",   value = "Quality:" },
    },
    marijuana_1oz_low = {
        { metadata = "strain",  value = "Strain:" },
        { metadata = "potency", value = "Potency:" },
        { metadata = "type",    value = "Type:" },
        { metadata = "thc",     value = "Thc:" },
    },
    marijuana_1oz_mid = {
        { metadata = "strain",  value = "Strain:" },
        { metadata = "potency", value = "Potency:" },
        { metadata = "type",    value = "Type:" },
        { metadata = "thc",     value = "Thc:" },
    },
    marijuana_1oz_high = {
        { metadata = "strain",  value = "Strain:" },
        { metadata = "potency", value = "Potency:" },
        { metadata = "type",    value = "Type:" },
        { metadata = "thc",     value = "Thc:" },
    },
    marijuana_3_5_low = {
        { metadata = "strain",  value = "Strain:" },
        { metadata = "potency", value = "Potency:" },
        { metadata = "type",    value = "Type:" },
        { metadata = "thc",     value = "Thc:" },
    },
    marijuana_3_5_mid = {
        { metadata = "strain",  value = "Strain:" },
        { metadata = "potency", value = "Potency:" },
        { metadata = "type",    value = "Type:" },
        { metadata = "thc",     value = "Thc:" },
    },
    marijuana_3_5_high = {
        { metadata = "strain",  value = "Strain:" },
        { metadata = "potency", value = "Potency:" },
        { metadata = "type",    value = "Type:" },
        { metadata = "thc",     value = "Thc:" },
    },
    lawyerpass = {
        { metadata = "id",        value = "Pass-ID:" },
        { metadata = "firstname", value = "First Name:" },
        { metadata = "lastname",  value = "Last Name:" },
        { metadata = "citizenid", value = "CSN:" },
    },
    harness = {
        { metadata = "uses", value = "uses left." },
    },
    filled_evidence_bag_casing = {
        { metadata = "label",     value = "Evidence material:" },
        { metadata = "ammotype",  value = "Type number:" },
        { metadata = "ammolabel", value = "Caliber:" },
        { metadata = "serie",     value = "Serial:" },
        { metadata = "street",    value = "Crime scene:" },
    },
    filled_evidence_bag_blood = {
        { metadata = "label",     value = "Evidence material:" },
        { metadata = "bloodtype", value = "Blood type:" },
        { metadata = "dnalabel",  value = "DNA Code:" },
        { metadata = "street",    value = "Crime scene:" },
    },
    filled_evidence_bag_fingerprint = {
        { metadata = "label",       value = "Evidence material:" },
        { metadata = "fingerprint", value = "Fingerprint:" },
        { metadata = "street",      value = "Crime Scene:" },
    },
    filled_evidence_bag_dna = {
        { metadata = "label",    value = "Evidence material:" },
        { metadata = "dnalabel", value = "DNA Code:" },
    },
    stickynote = {
        { metadata = "quality", value = "Quality:" },
    },
    moneybag = {
        { metadata = "cash",    value = "Amount of cash:" },
        { metadata = "quality", value = "Quality:" },
    },
    markedbills = {
        { metadata = "worth",   value = "Worth:" },
        { metadata = "quality", value = "Quality:" },
    },

    labkey = {
        { metadata = "quality", value = "Quality:" },
    },
    visa = {
        { metadata = "ownerName",  value = "Card Owner:" },
        { metadata = "cardType",   value = "Firstname:" },
        { metadata = "cardNumber", value = "Lastname:" },
    },
    creditcard = {
        { metadata = "ownerName",  value = "Card Owner:" },
        { metadata = "cardType",   value = "Firstname:" },
        { metadata = "cardNumber", value = "Lastname:" },
    },
    car_insurance = {
        { metadata = "name",   value = "Name:" },
        { metadata = "plate",  value = "Plate:" },
        { metadata = "model",  value = "Vehicle Model:" },
        { metadata = "expire", value = "Expires:" },
    },
    car_registration = {
        { metadata = "name",   value = "Name:" },
        { metadata = "plate",  value = "Plate:" },
        { metadata = "model",  value = "Vehicle Model:" },
        { metadata = "expire", value = "Expires:" },
    },
    health_insurance = {
        { metadata = "name",   value = "Name:" },
        { metadata = "expire", value = "Expires:" },
    },
    home_insurance = {
        { metadata = "name",   value = "Name:" },
        { metadata = "expire", value = "Expires:" },
    },
    car_camera = {
        { metadata = "plate", value = "Plate:" },
    },
    vehiclekeys = {
        { metadata = "plate",       value = "Plate:" },
        { metadata = "description", value = "Model:" },
    },
}

local qs_vehiclekeys = GetResourceState("qs-vehiclekeys") == "started";
if qs_vehiclekeys then
    config.metadata.plate = {
        { metadata = "plate", value = "Plate:" },
    }
    config.metadata.vehiclekeys = {
        { metadata = "plate",       value = "Plate:" },
        { metadata = "description", value = "Model:" },
    }
end

local qs_smartphone_pro = GetResourceState("qs-smartphone-pro") == "started";
if qs_smartphone_pro then
    local phoneItems = { "phone", "black_phone", "yellow_phone", "red_phone", "green_phone", }
    for _, item in ipairs(phoneItems) do
        config.metadata[item] = {
            { metadata = "phoneNumber",        value = "Phone Number" },
            { metadata = "charinfo.firstname", value = "Firstname:" },
            { metadata = "charinfo.lastname",  value = "Lastname:" },
        }
    end
end

local qs_banking = GetResourceState("qs-banking") == "started";
if qs_banking then
    config.metadata.creditcard = {
        { metadata = "ownerName",  value = "Card Owner:" },
        { metadata = "cardType",   value = "Card Type:" },
        { metadata = "bank_type",  value = "Bank Type:" },
        { metadata = "cardNumber", value = "Card Number:" },
    }
end
