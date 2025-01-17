enum OrderStatus {
  incoming("Incoming", 0xFFFFFFFF),
  delivered("Delivered", 0xFFD9FCE4),
  upcoming("Upcoming", 0xFFFFFFFF);

  final String text;
  final int backgroundColor;
  const OrderStatus(this.text, this.backgroundColor);
}
