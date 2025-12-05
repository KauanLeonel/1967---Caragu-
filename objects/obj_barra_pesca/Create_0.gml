image_xscale = 2;
image_yscale = 2;

randomize();

// --- Configurações Físicas ---
pos_y = 0;      // Posição vertical do quadrado (começa no 0)
vel_y = 0;      // Velocidade atual
gravidade = 0.3; // Força que puxa para baixo (quanto maior, mais pesado)
impulso = 0.5;   // Força que empurra para cima quando clica

// --- Configurações Visuais ---
altura_cursor = 12; // Tamanho vertical do quadrado verde
margem_borda = 2;   // Para não desenhar em cima da borda cinza do sprite

// Definindo os limites onde o quadrado pode andar (dentro do sprite 64px)
topo_limite = margem_borda; 
fundo_limite = sprite_height - margem_borda - altura_cursor;

// Começa o cursor no fundo
pos_y = fundo_limite;

// --- CONFIGURAÇÃO FÍSICA (MUITO LENTA) ---
pos_y = 0;
vel_y = 0;

// *AJUSTE*: Valores bem baixos para movimento suave
gravidade = 0.1;  // Cai bem devagar
impulso = 0.2;    // Sobe suavemente

altura_cursor = 16;
margem_borda = 2;
topo_limite = margem_borda;
fundo_limite = sprite_height - margem_borda - altura_cursor;
pos_y = fundo_limite;

// --- CONFIGURAÇÃO DO ALVO (PEIXE) ---
ponto = 0;
ponto_max = 100;

alvo_y = fundo_limite;
alvo_destino = topo_limite;
alvo_altura = 16;
timer_movimento = 0;

// *COR*: O Peixe agora é AZUL ESCURO
cor_alvo = c_navy;