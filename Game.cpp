#include "headers/Game.h"

Game::Game() : window(sf::VideoMode(winSize.x, winSize.y), "SFML Window"),
             tree("../sprites/tree.png", winSize.x/2, winSize.y/2),
             score("../fonts/font.ttf", "../sprites/score_bg.png"),
             background("../sprites/bg.png"),
             upgradebutton("../sprites/button_tex.png")
             {}

    void Game::run()
    {
        while (window.isOpen())
        {
            handleEvents();
            update();
            tree.rotate();
            render();
        }
    }

    void Game::handleEvents()
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
                if (upgradebutton.isClicked(mousePos))
                {

                }
            }
        }
    }

    void Game::update()
    {
        tree.update();
    }

    void Game::render()
    {
        window.clear(sf::Color::Black);
        background.draw(window);
        tree.draw(window);
        score.draw(window);
        upgradebutton.draw(window);
        window.display();
    }