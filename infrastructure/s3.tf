# HCL - Hashicorp Configuration Language
# Linguagem declarativa

resource "aws_s3_bucket" "dl" {
  #Parametros de configuração do recurso escolhido
  bucket = "datalake-pasini-tf"

  tags = {
    IES   = "IGTI"
    CURSO = "EDC"
  }
}

# Criptografia em Rest utilizando algorítimo default do S3 (AES256)
resource "aws_s3_bucket_server_side_encryption_configuration" "dl" {
  bucket = aws_s3_bucket.dl.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}