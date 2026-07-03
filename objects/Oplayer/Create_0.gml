window_set_size(1280, 720)
// Se a variável global ainda não existir, nós criamos ela
if (!variable_global_exists("proximo_x")) {
    global.proximo_x = 100; // Posição X padrão inicial do jogo
    global.proximo_y = 100; // Posição Y padrão inicial do jogo
}