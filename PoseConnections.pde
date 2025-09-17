/**
 * Clase PoseConnections
 * Contiene la lista de conexiones entre los 17 landmarks del cuerpo (formato PoseNet).
 * Indices: [0-nariz, 1-ojoI, 2-ojoD, 3-orejaI, 4-orejaD, 5-hombroI, 6-hombroD, 
 * 7-codoI, 8-codoD, 9-muñecaI, 10-muñecaD, 11-caderaI, 12-caderaD,
 * 13-rodillaI, 14-rodillaD, 15-tobilloI, 16-tobilloD]
 */
static class PoseConnections {
  static final int[][] CONNECTIONS = {
    {0, 1}, {0, 2}, {1, 3}, {2, 4},       // Cabeza
    {5, 6}, {5, 7}, {7, 9}, {6, 8}, {8, 10}, // Brazos
    {5, 11}, {6, 12}, {11, 12},          // Torso
    {11, 13}, {13, 15}, {12, 14}, {14, 16} // Piernas
  };
}
