#include "headers/Background.h"
#include "headers/Winsize.h"

Background::Background(const std::string &texturePath){
    if (!texture.loadFromFile(texturePath))
    {
        std::cerr << "Error loading texture: " << texturePath << std::endl;
        exit(EXIT_FAILURE);
    }
    sprite.setTexture(texture);
    sprite.setPosition(0,0);
    sprite.setScale((float)winSize.x/texture.getSize().x, (float)winSize.y/texture.getSize().y);
}

void Background::draw(sf::RenderWindow &window)
{
    window.draw(sprite);
}