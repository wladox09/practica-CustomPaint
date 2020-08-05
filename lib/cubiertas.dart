getforma1(size) {
  return  {
    'linea1': [[10, size.height - 10], [10, size.height / 2]],
    'curva1': [10, 110, size.width / 2, 10],
    'linea2': [[size.width - 10,  size.height - 10], [size.width - 10, size.height / 2]],
    'curva2': [size.width - 10, 110, size.width / 2, 10],
    'linea3': [[10,  size.height - 10], [size.width - 10, size.height - 10]]
  };
}