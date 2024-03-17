package com.mvc.pmapp.service;

import com.mvc.pmapp.dto.ProductDTO;

import java.util.List;

public interface ProductService {
    void addProduct(ProductDTO productDTO);

    ProductDTO getOne(Integer id);

    List<ProductDTO> getList();

    void modify(ProductDTO productDTO);

    void remove(Integer tno);

    List<ProductDTO> searchByName(String searchString);
}
