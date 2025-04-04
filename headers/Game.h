#include <SFML/Graphics.hpp>
#include <iostream>
#include "ClickableSprite.h"
#include "Score.h"
#include "Background.h"
#include "Winsize.h"

class Game
{
private:
    sf::RenderWindow window;
    ClickableSprite tree;
    Score score;
    Background background;

public:
    Game();

    void run();

private:
    void handleEvents();

    void update();

    void render();
};