class ListPengirimanParam {
  String Limit, Offset, Param;
  String Authorization;

  ListPengirimanParam({
    this.Limit = "10",
    this.Offset = "1",
    this.Param = "1",
    required this.Authorization,
  });
}
