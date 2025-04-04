#include <SFML/Graphics.hpp>
#include <iostream>
#include <sstream>
#include <cmath>
#include "ClickableSprite.h"

const sf::Vector2i winSize(800, 600);

// Class to handle a clickable sprite (tree)


// Class to handle score display
class Score
{
private:
    sf::Text text;
    sf::Font font;
    int score = 0;
    sf::Sprite box;
    sf::Texture boxTexture;
    sf::Vector2u boxSize;

public:
    Score(const std::string &fontPath, const std::string &boxTexturePath)
    {
        if (!font.loadFromFile(fontPath))
        {
            std::cerr << "Error loading font: " << fontPath << std::endl;
            exit(EXIT_FAILURE);
        }

        if (!boxTexture.loadFromFile(boxTexturePath))
        {
            std::cerr << "Error loading texture: " << boxTexturePath << std::endl;
            exit(EXIT_FAILURE);
        }

        box.setTexture(boxTexture);
        box.setPosition(10, 10);
        box.setScale(1, 0.25f);

        boxSize = boxTexture.getSize();

        text.setFont(font);
        text.setCharacterSize(24);
        text.setFillColor(sf::Color::White);
        text.setPosition(boxSize.x/4, boxSize.y/8);
        updateText();
    }

    void increase()
    {
        score++;
        updateText();
    }

    void updateText()
    {
        std::stringstream ss;
        ss << "Score: " << score;
        text.setString(ss.str());
    }

    void draw(sf::RenderWindow &window)
    {
        window.draw(box);
        window.draw(text);
    }
};

class Background

{
private:
    sf::Texture texture;
    sf::Sprite sprite;
public:
    Background(const std::string &texturePath){
        if (!texture.loadFromFile(texturePath))
        {
            std::cerr << "Error loading texture: " << texturePath << std::endl;
            exit(EXIT_FAILURE);
        }
        sprite.setTexture(texture);
        sprite.setPosition(0,0);
        sprite.setScale((float)winSize.x/texture.getSize().x, (float)winSize.y/texture.getSize().y);
    }

    void draw(sf::RenderWindow &window)
    {
        window.draw(sprite);
    }
};


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