#include <SFML/Graphics.hpp>
#include <iostream>

class UpgradeButton
{
private:
    sf::Texture texture;
    sf::Sprite sprite;

public:
    UpgradeButton(const std::string &boxTexturePath);

    void draw(sf::RenderWindow &window);

    bool isClicked(sf::Vector2i mousePos);

    void upgrade();
};