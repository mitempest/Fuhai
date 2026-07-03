// Encontra o centro da tela
var _centro_x = room_width / 2;
var _centro_y = room_height / 2;

// Descobre onde o menu começa verticalmente para ficar centralizado
var _total_opcoes = array_length(opcoes);
var _inicio_y = _centro_y - ((_total_opcoes - 1) * espacamento) / 2;

// Reseta a seleção a cada frame
opcao_selecionada = -1;

// Checa a posição do mouse para cada opção
for (var i = 0; i < _total_opcoes; i++) {
    var _op_y = _inicio_y + (i * espacamento);
    
    // Define uma área de clique aproximada baseada no tamanho do texto
    // (Ajuste a largura de 200 e a altura de 30 se seus textos forem muito grandes)
    var _largura_janela = 200; 
    var _altura_janela = 30;
    
    var _x1 = _centro_x - (_largura_janela / 2);
    var _y1 = _op_y - (_altura_janela / 2);
    var _x2 = _centro_x + (_largura_janela / 2);
    var _y2 = _op_y + (_altura_janela / 2);
    
    // Verifica se o mouse está dentro dessa área
    if (point_in_rectangle(mouse_x, mouse_y, _x1, _y1, _x2, _y2)) {
        opcao_selecionada = i; // Guarda o índice da opção focada
        
        // Se o jogador clicar com o botão esquerdo
        if (mouse_check_button_pressed(mb_left)) {
            switch(opcao_selecionada)
			{
                case 0:
                    room_goto(Room2); // Vai para a próxima sala (Jogar)
                    break;
                case 1:
                    // Código para abrir menu de opções aqui
                    show_debug_message("Abriu Opções");
                    break;
                case 2:
                    game_end(); // Fecha o jogo
                    break;
            }
        }
    }
}