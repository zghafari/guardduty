resource "aws_guardduty_detector" "master" {
  enable = true
}

resource "aws_guardduty_member" "prod_member" {
  count              = "${length(var.member_account_ids)}"
  detector_id        = "${aws_guardduty_detector.master.id}"
  account_id         = "${element(var.member_account_ids, count.index)}"
  email              = "${element(var.member_account_emails, count.index)}"
  invite             = true
  invitation_message = "GuardDuty Invite - Please accept this invitation if you are expecting it."
}
