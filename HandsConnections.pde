/**
 * Clase HandConnections
 * Contiene la lista de conexiones entre los 21 landmarks de la mano.
 */
static class HandConnections {
  static final int[][] CONNECTIONS = {
    {0, 1}, {1, 2}, {2, 3}, {3, 4},       // Pulgar
    {0, 5}, {5, 6}, {6, 7}, {7, 8},       // Índice
    {5, 9}, {9, 10}, {10, 11}, {11, 12},  // Medio
    {9, 13}, {13, 14}, {14, 15}, {15, 16}, // Anular
    {13, 17}, {0, 17}, {17, 18}, {18, 19}, {19, 20} // Meñique y Palma
  };
}
