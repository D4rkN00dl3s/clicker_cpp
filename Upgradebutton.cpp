#include "headers/Upgradebutton.h"

UpgradeButton::UpgradeButton(const std::string &texturePath){
    if (!texture.loadFromFile(texturePath))
    {
        std::cerr << "Error loading texture: " << texturePath << std::endl;
        exit(EXIT_FAILURE);
    }

    sprite.setTexture(texture);
    sprite.setPosition(10, 500);
    sprite.setScale(15, 5);
}

void UpgradeButton::draw(sf::RenderWindow &window){
    window.draw(sprite);
}

bool UpgradeButton::isClicked(sf::Vector2i mousePos)
{
    return sprite.getGlobalBounds().contains(static_cast<float>(mousePos.x), static_cast<float>(mousePos.y));
}
