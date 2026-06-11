resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "public-subnet-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "Main"
  }
}

resource "aws_subnet" "public-subnet-3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "Main"
  }
}


resource "aws_instance" "webserver1" {
  ami           = "ami-0e86e20dae9224db8"
  instance_type = "t3.micro"

  subnet_id = aws_subnet.public-subnet-1.id

  tags = {
    Name = "rahi-webserver1"
  }
}



resource "aws_instance" "webserver2" {
  ami           = "ami-0e86e20dae9224db8"
  instance_type = "t3.micro"

  subnet_id = aws_subnet.public-subnet-2.id

  tags = {
    Name = "rahi-webserver2"
  }
}


