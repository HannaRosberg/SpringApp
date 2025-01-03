package org.example.springapp.controller;

import org.example.springapp.dto.CategoryDTO;
import org.example.springapp.service.CategoryService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/api/categories")
public class CategoryController {

    CategoryService categoryService;

    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping
    public List<CategoryDTO> getAllCategories() {
        return categoryService.getAllCategories();
    }

    @GetMapping("/{name}")
    public List<CategoryDTO> getCategoryByName(@PathVariable String name) {
        return categoryService.getCategoryByName(name);
    }

    @PostMapping
    @PreAuthorize("hasAuthority('SCOPE_admin')")
    public ResponseEntity<Void> createCategory(@RequestBody CategoryDTO categoryDTO) {
        int id = categoryService.addCategory(categoryDTO);
        return ResponseEntity.created(URI.create("/categories/" + id)).build();
    }

}
