package com.mvc.pmapp.domain;

import lombok.*;

@Getter
@Builder
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class ProductVO {
    private int id;
    private String name;
    private int price;
    private int stock_quantity;
}
