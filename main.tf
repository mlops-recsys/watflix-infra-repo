module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "watflix-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-06fd4583498c876c0"

  private_subnets = ["subnet-0ee1e76c770a22189", "subnet-001f657e90f82e719"]
  public_subnets  = ["subnet-049b99448d5378076", "subnet-032c8f74f65778758"]
}