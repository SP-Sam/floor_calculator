class ResultModel {
  double areaFloor;
  int piecesByLength;
  int piecesByWidth;
  double price;

  ResultModel({
    this.areaFloor = 0.0,
    this.piecesByLength = 0,
    this.piecesByWidth = 0,
    this.price = 0.0,
  });

  int get amountPieces => piecesByLength * piecesByWidth;
  int get amountFooter => piecesByLength + piecesByWidth;
  int get amountPiecesAndFooter => amountPieces + amountFooter;
  double get areaWithoutFooter => amountPieces * areaFloor;
  double get areaWithFooter => amountPiecesAndFooter * areaFloor;
  double get finalPrice => areaWithFooter * price;
}
