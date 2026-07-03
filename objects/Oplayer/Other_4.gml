// Verifica se as variáveis de posição já foram criadas por algum comando de borda
if (variable_global_exists("proximo_x")) {
    x = global.proximo_x;
    y = global.proximo_y;
}