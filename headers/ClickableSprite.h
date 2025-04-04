#include <SFML/Graphics.hpp>
#include <iostream>
#include <cmath>

class ClickableSprite
{
private:
    sf::Sprite sprite;
    sf::Texture texture;
    sf::Clock clock;
    sf::Clock windClock;
    float swayAmplitude = 2.5f;
    float swaySpeed = 2.0f;
    sf::Vector2f originalScale;
    sf::Vector2u originalSize;
    float currentAngle = 0.0f;
    bool isShrunk = false;

public:
    ClickableSprite(const std::string &texturePath, float x, float y);

    sf::Sprite &getSprite();

    bool isClicked(sf::Vector2i mousePos);

    void shrink();

    void rotate();

    void update();

    void draw(sf::RenderWindow &window);
};