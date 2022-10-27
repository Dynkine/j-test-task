module "vpc" {
  source    = "../modules/vpc"
  vpc_cidr =  "10.0.0.0/16"
  project = "ts-home-task"
  availability_zones_count = 2
}

module "eks" {
  source    = "../modules/eks"
  project = "ts-home-task"
  subnet_private = module.vpc.aws_subnet_private[*].id
  subnet_public = module.vpc.aws_subnet_public[*].id
  vpc_id = module.vpc.aws_vpc.id
  source_security_group_id = module.nodes.source_security_group_id.id
}

module "nodes" {
  source    = "../modules/nodes"
  project = "ts-home-task"
  cluster_name = module.eks.project_name
  subnet_ids = module.vpc.aws_subnet_private[*].id
  vpc_id = module.vpc.aws_vpc.id
  source_security_group_id = module.eks.source_security_group_id.id
}
