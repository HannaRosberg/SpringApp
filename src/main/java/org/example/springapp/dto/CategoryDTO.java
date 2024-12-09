package org.example.springapp.dto;

import org.example.springapp.entity.Category;

public record CategoryDTO(String name, String symbol, String description) {

    public static CategoryDTO fromCategory(Category category) {
        return new CategoryDTO(
                category.getName(),
                category.getSymbol(),
                category.getDescription()
        );
    }

    public String getName() {
        return name;
    }

    public String getSymbol() {
        return symbol;
    }
}