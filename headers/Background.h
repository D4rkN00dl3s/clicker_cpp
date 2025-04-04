#include <SFML/Graphics.hpp>
#include <iostream>

class Background

{
private:
    sf::Texture texture;
    sf::Sprite sprite;
public:
    Background(const std::string &texturePath);

    void draw(sf::RenderWindow &window);
};