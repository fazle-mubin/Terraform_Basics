resource "random_pet" "petname" {
  length    = 5
  separator = "-"
}

resource "aws_s3_bucket" "sample-bucket" {
  bucket = random_pet.petname.id
}