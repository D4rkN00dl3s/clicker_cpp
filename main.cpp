#include <SFML/Graphics.hpp>
#include <iostream>
#include <sstream>

const sf::Vector2i winSize(800, 600);

// Class to handle a clickable sprite (tree)
class ClickableSprite
{
private:
    sf::Sprite sprite;
    sf::Texture texture;
    sf::Clock clock;
    sf::Vector2f originalSize;
    bool isShrunk = false;

public:
    ClickableSprite(const std::string &texturePath, float x, float y)
    {
        if (!texture.loadFromFile(texturePath))
        {
            std::cerr << "Error loading texture: " << texturePath << std::endl;
            exit(EXIT_FAILURE);
        }

        sprite.setTexture(texture);
        sprite.setPosition(x, y);
        originalSize = sprite.getScale();
        sprite.setOrigin(originalSize.x/2, originalSize.y/2);
    }

    sf::Sprite &getSprite() { return sprite; }

    bool isClicked(sf::Vector2i mousePos)
    {
        return sprite.getGlobalBounds().contains(mousePos.x, mousePos.y) && !isShrunk;
    }

    void shrink()
    {
        sprite.setScale(0.9f, 0.9f);
        isShrunk = true;
        clock.restart();
    }

    void update()
    {
        if (isShrunk && clock.getElapsedTime().asSeconds() >= 0.25f)
        {
            sprite.setScale(originalSize);
            isShrunk = false;
        }
    }

    void draw(sf::RenderWindow &window)
    {
        window.draw(sprite);
    }
};

// Class to handle score display
class Score
{
private:
    sf::Text text;
    sf::Font font;
    int score = 0;
    sf::Sprite box;
    sf::Texture boxTexture;

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
        box.setScale(1, 0.5f);

        text.setFont(font);
        text.setCharacterSize(24);
        text.setFillColor(sf::Color::White);
        text.setPosition(90, 20);
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
             tree("../sprites/tree.png", 350, 200),
             score("../fonts/WinkySans.ttf", "../sprites/score_bg.png"),
             background("../sprites/bg.png")
             {}

    void run()
    {
        while (window.isOpen())
        {
            handleEvents();
            update();
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