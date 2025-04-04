#include <SFML/Graphics.hpp>
#include <iostream>
#include <sstream>
#include <cmath>
#include "ClickableSprite.h"
#include "Score.h"
#include "Background.h"
#include "Winsize.h"
// Game class to handle logic
class Game
{
private:
    sf::RenderWindow window;
    ClickableSprite tree;
    Score score;
    Background background;

public:
    Game() : window(sf::VideoMode(winSize.x, winSize.y), "SFML Window"),
             tree("../sprites/tree.png", winSize.x/2, winSize.y/2),
             score("../fonts/font.ttf", "../sprites/score_bg.png"),
             background("../sprites/bg.png")
             {}

    void run()
    {
        while (window.isOpen())
        {
            handleEvents();
            update();
            tree.rotate();
            render();
        }
    }

private:
    void handleEvents()
    {
        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
            {
                window.close();
            }

            if (event.type == sf::Event::MouseButtonPressed &&
                event.mouseButton.button == sf::Mouse::Left)
            {

                sf::Vector2i mousePos = sf::Mouse::getPosition(window);
                if (tree.isClicked(mousePos))
                {
                    tree.shrink();
                    score.increase();
                }
            }
        }
    }

    void update()
    {
        tree.update();
    }

    void render()
    {
        window.clear(sf::Color::Black);
        background.draw(window);
        tree.draw(window);
        score.draw(window);
        window.display();
    }
};

int main()
{
    Game game;
    game.run();
    return 0;
}