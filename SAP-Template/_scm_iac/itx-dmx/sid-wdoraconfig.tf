module "IAC_SID" {
  source                     = "git::https://sourcecode.jnj.com/scm/asx-iacx/terraform-aws-sapsystem-oracle.git"
  appid                      = "APP"
  application_name           = "JNJ-SAP"
  cookbook                   = "srv_000033_reponame"
  instance_profile           = "itx-bin-app-jjterptestlab-development-11GAOTFZ8C5TB"
  os_filter                  = "JNJ RHEL 8 SAP-HANA CLOUDx - 2023 Q3"
  sap_apsid                  = "APS"
  sap_sid                    = "SAPSID"
  ec2_tshirt_size            = "small"
  subnet_filter              = ["Primary VPC 1 - Primary1 Subnet 1"]
  user                       = "user"
  vpc_filter                 = "Primary VPC 1"
  vpcxEnvironment            = "PROD"
  env                        = "QA"
  wd                         = "1"
  wd_host_name               = ["wsid"]
  IAC_org                    = var.IAC_org
}
