#userdata variable encoded in base 64
variable "userdata" {
  default = "PHBvd2Vyc2hlbGw+ClN0YXJ0LVRyYW5zY3JpcHQ7CgojYWxsb3dzIGluaXRpYWxpemF0aW9uIG9mIHVzZXJkYXRhIHNjcmlwdCB3aGVuIHJlc3RhcnRlZC4KQzpcUHJvZ3JhbURhdGFcQW1hem9uXEVDMi1XaW5kb3dzXExhdW5jaFxTY3JpcHRzXHVzZXJkYXRhLnBzMSDigJNTY2hlZHVsZQoKI2NyZWF0ZSBuZXcgaW5kZXguaHRtbCBmaWxlCk5ldy1JdGVtIC1QYXRoICJDOlxpbmV0cHViXHd3d3Jvb3RcIiAtTmFtZSAiaW5kZXguaHRtbCIgLUl0ZW1UeXBlICJmaWxlIiAtVmFsdWUgIkhlbGxvIHdvcmxkIGZyb20gdGVycmFmb3JtIHdvcmtzcGFjZSEiCgojIGluc3RhbGwgSUlTCkltcG9ydC1Nb2R1bGUgU2VydmVyTWFuYWdlcjsKRW5hYmxlLVdpbmRvd3NPcHRpb25hbEZlYXR1cmUgLU9ubGluZSAtTm9SZXN0YXJ0IC1GZWF0dXJlTmFtZSAnSUlTLVdlYlNlcnZlclJvbGUnLCAnSUlTLVdlYlNlcnZlcicsICdJSVMtTWFuYWdlbWVudENvbnNvbGUnOwojY2hhbmdlIGRlZmF1bHQgaWlzIHBhZ2UgdG8gaW5kZXguaHRtbApTZXQtSXRlbVByb3BlcnR5ICdJSVM6XFNpdGVzXERlZmF1bHQgV2ViIFNpdGVcJyAtbmFtZSBwaHlzaWNhbFBhdGggLXZhbHVlICJDOlxpbmV0cHViXHd3d3Jvb3RcaW5kZXguaHRtbCIKCgo8cGVyc2lzdD50cnVlPC9wZXJzaXN0Pgo8L3Bvd2Vyc2hlbGw+"
  type    = string
}
#webserver name tied to the env
variable "name_webserver" {
  default = {
    staging    = "precious-workspace-webserver_staging"
    production = "precious-workspace-webserver_production"
  }
}
#security group  name tied to the env
variable "security_group" {
  default = {
    staging    = "precious-workspace-SG_staging"
    production = "precious-workspace-SG_production"
  }
}

