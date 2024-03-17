package com.mvc.pmapp.service;

import com.mvc.pmapp.domain.ProductVO;
import com.mvc.pmapp.dto.ProductDTO;
import com.mvc.pmapp.mapper.ProductMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Log4j2
@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService{

    private final ProductMapper productMapper;
    private final ModelMapper modelMapper;

    @Override
    public void addProduct(ProductDTO productDTO) {
        ProductVO productVO = modelMapper.map(productDTO, ProductVO.class);
        productMapper.insert(productVO);
        log.info(productVO);
    }

    @Override
    public List<ProductDTO> getList() {
        List<ProductVO> voList = productMapper.selectAll();

        List<ProductDTO> dtoList = voList.stream().map(vo -> modelMapper.map(vo, ProductDTO.class)).collect(Collectors.toList());
        log.info(dtoList);
        return dtoList;
    }

    @Override
    public ProductDTO getOne(Integer id) {
        ProductDTO productDTO = modelMapper.map(productMapper.selectOne(id), ProductDTO.class);
        log.info(productDTO);
        return productDTO;
    }

    @Override
    public void modify(ProductDTO productDTO) {
        log.info("service : modify");
        ProductVO productVO = modelMapper.map(productDTO, ProductVO.class);
        productMapper.update(productVO);
        log.info(productVO);
    }

    @Override
    public void remove(Integer tno) {
        productMapper.delete(tno);
        log.info(tno);
    }

    @Override
    public List<ProductDTO> searchByName(String searchString) {
        List<ProductDTO> dtoList = productMapper.searchByName(searchString).stream()
                .map(vo -> modelMapper.map(vo, ProductDTO.class))
                .collect(Collectors.toList());

        return dtoList;
    }
}
