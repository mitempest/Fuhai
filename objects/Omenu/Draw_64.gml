// Configura o alinhamento do texto para o centro exato
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Opcional: draw_set_font(fnt_menu); // Defina sua fonte aqui se tiver uma

var _centro_x = room_width / 2;
var _centro_y = room_height / 2;
var _total_opcoes = array_length(opcoes);
var _inicio_y = _centro_y - ((_total_opcoes - 1) * espacamento) / 2;

// Desenha cada opção
for (var i = 0; i < _total_opcoes; i++) {
    var _op_y = _inicio_y + (i * espacamento);
    
    // Se o mouse estiver em cima, desenha de outra cor (ex: Amarelo)
    if (opcao_selecionada == i) {
        draw_set_color(c_yellow);
        // Opcional: você pode adicionar um efeito de escala ou um prefixo
        draw_text(_centro_x, _op_y, "> " + opcoes[i] + " <");
    } else {
        draw_set_color(c_white); // Cor padrão das opções
        draw_text(_centro_x, _op_y, opcoes[i]);
    }
}

// Reseta a cor para o padrão do GameMaker não bagunçar outros objetos
draw_set_color(c_white);
// Define o alinhamento
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// ATIVA A SUA FONTE AQUI
draw_set_font(Font1);