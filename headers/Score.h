#include <SFML/Graphics.hpp>
#include <iostream>
#include <sstream>

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
    Score(const std::string &fontPath, const std::string &boxTexturePath);

    void increase();

    void updateText();

    void draw(sf::RenderWindow &window);
};