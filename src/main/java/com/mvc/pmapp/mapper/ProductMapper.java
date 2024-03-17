package com.mvc.pmapp.mapper;

import com.mvc.pmapp.domain.ProductVO;

import java.util.List;

public interface ProductMapper {

    void insert(ProductVO productVO);

    List<ProductVO> selectAll();

    ProductVO selectOne(Integer id);

    void update(ProductVO productVO);

    void delete(Integer id);
}
