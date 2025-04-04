#include "headers/Score.h"

Score::Score(const std::string &fontPath, const std::string &boxTexturePath)
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

    void Score::increase()
    {
        score++;
        updateText();
    }

    void Score::updateText()
    {
        std::stringstream ss;
        ss << "Score: " << score;
        text.setString(ss.str());
    }

    void Score::draw(sf::RenderWindow &window)
    {
        window.draw(box);
        window.draw(text);
    }