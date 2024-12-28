package org.example.springapp.service;

import org.example.springapp.dto.CategoryDTO;
import org.example.springapp.entity.Category;

import org.example.springapp.repository.CategoryRepository;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class CategoryService {

    CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public List<CategoryDTO> getAllCategories() {
        return categoryRepository.findAll()
                .stream()
                .map(CategoryDTO::fromCategory)
                .toList();
    }

    public List<CategoryDTO> getCategoryByName(String name) {
        List<CategoryDTO> locations = categoryRepository.findByName(name)
                .stream()
                .map(CategoryDTO::fromCategory)
                .collect(Collectors.toList());

        if (locations.isEmpty()) {
            throw new IllegalArgumentException("Can't find a category with this ID or all locations are private.");
        }

        return locations;
    }

    public int addCategory(CategoryDTO categoryDTO) {
        if (categoryRepository.existsByNameAndSymbol(categoryDTO.getName(), categoryDTO.getSymbol())) {
            throw new IllegalArgumentException(" This category with the same name and symbol already exist.");
        }

        Category category = new Category();
        category.setName(categoryDTO.name());
        category.setSymbol(categoryDTO.symbol());
        category.setDescription(categoryDTO.description());
        category = categoryRepository.save(category);

        return category.getId();
    }
}
