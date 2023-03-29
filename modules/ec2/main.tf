resource "aws_instance" "testhost" {
    ami                         = var.testhost_ami
    instance_type               = var.testhost_instance_type
    key_name                    = var.key_name

    root_block_device {
        volume_size           = 8
        delete_on_termination = true
        volume_type           = "gp2"
    }

    tags = merge(tomap({ "Name" = "${local.NamePrefix}-jenkins-host" }), var.common_tags)
    }