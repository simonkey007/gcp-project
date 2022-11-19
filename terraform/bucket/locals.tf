locals {
    bucket_name = "${var.bucket_name_prefix}-${local.region_code}"

    region_code = lookup({
        asia-east1 = "ase1",
        asia-east2 = "ase1",
        asia-northeast1 = "asne1",
        asia-northeast2 = "asne2",
        asia-northeast3 = "asne3",
        asia-south1 = "ass1",
        asia-south2 = "ass2",
        asia-southeast1 = "asse1",
        asia-southeast2 = "asse2",
        australia-southeast1 = "ause1",
        australia-southeast2 = "ause2",
        europe-central2 = "euc2",
        europe-north1 = "eun1",
        europe-southwest1 = "eusw1",
        europe-west1 = "euw1",
        europe-west2 = "euw2",
        europe-west3 = "euw3",
        europe-west4 = "euw4",
        europe-west6 = "euw6",
        europe-west8 = "euw8",
        europe-west9 = "euw9",
        me-west1 = "mew1",
        northamerica-northeast1 = "nane1",
        northamerica-northeast2 = "nane2",
        southamerica-east1 = "sae1",
        southamerica-west1 = "saw1",
        us-central1 = "usc1",
        us-east1 = "use1",
        us-east4 = "use4",
        us-east5 = "use5",
        us-south1 = "uss1",
        us-west1 = "usw1",
        us-west2 = "usw2",
        us-west3 = "usw3",
        us-west4 = "usw4"
    }, var.region)


}
