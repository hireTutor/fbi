table cover_table{
  key = {
    hdr.ipv4.dstAddr: exact;
    hdr.ipv4.dstport:lpm;
  }
  actions = {
    mark_bit;
    noAction;
  }
  size = 1024;
  default_action = noAction();
}
  apply{
    if(hdr.ipv4.isvalid()){
      cover_table.apply();
  }
}	
