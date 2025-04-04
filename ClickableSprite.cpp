#include "headers/ClickableSprite.h"

ClickableSprite::ClickableSprite(const std::string &texturePath, float x, float y)
{
    if (!texture.loadFromFile(texturePath))
    {
        std::cerr << "Error loading texture: " << texturePath << std::endl;
        exit(EXIT_FAILURE);
    }
    sprite.setTexture(texture);
    sprite.setPosition(x, y);
    sprite.setScale(2, 2);
    originalSize = texture.getSize();
    originalScale = sprite.getScale();
    sprite.setOrigin(originalSize.x / 2, originalSize.y / 2);
}

sf::Sprite &ClickableSprite::getSprite()
{
    return sprite;
}

bool ClickableSprite::isClicked(sf::Vector2i mousePos)
{
    return sprite.getGlobalBounds().contains(static_cast<float>(mousePos.x), static_cast<float>(mousePos.y)) && !isShrunk;
}

void ClickableSprite::shrink()
{
    sprite.setScale(1.9f, 1.9f);
    isShrunk = true;
    clock.restart();
}

void ClickableSprite::rotate()
{
    float time = windClock.getElapsedTime().asSeconds();
    float angle = swayAmplitude * std::sin(time * swaySpeed);
    sprite.setRotation(angle);
}

void ClickableSprite::update()
{
    if (isShrunk && clock.getElapsedTime().asSeconds() >= 0.25f)
    {
        sprite.setScale(originalScale);
        isShrunk = false;
    }
}

void ClickableSprite::draw(sf::RenderWindow &window)
{
    window.draw(sprite);
}
