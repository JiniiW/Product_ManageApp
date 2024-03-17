package com.mvc.pmapp.mapper;

import com.mvc.pmapp.domain.ProductVO;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/root-context.xml")
public class ProductMapperTests {

    @Autowired(required = false)
    private ProductMapper productMapper;

    @Test
    public void insertTest() {
        ProductVO productVO = ProductVO.builder()
                .name("아이패드")
                .price(150000)
                .stock_quantity(5)
                .build();

        productMapper.insert(productVO);
        log.info(productVO);
    }

    @Test
    public void getOne() {
        Integer id = 3;
        ProductVO productVO = productMapper.selectOne(id);
        log.info(productVO);
    }

    @Test
    public void selectAll() {
        List<ProductVO> voList = productMapper.selectAll();
        log.info(voList);
    }

    @Test
    public void updateTest() {
        ProductVO productVO = ProductVO.builder()
                .id(1)
                .name("test1")
                .price(12345)
                .stock_quantity(66)
                .build();

        productMapper.update(productVO);
        log.info(productVO);
    }

    @Test
    public void deleteTest() {
        int id = 1;
        productMapper.delete(id);
        log.info(id);
    }
}
