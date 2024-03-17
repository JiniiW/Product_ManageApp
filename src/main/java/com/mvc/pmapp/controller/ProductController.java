package com.mvc.pmapp.controller;

import com.mvc.pmapp.dto.ProductDTO;
import com.mvc.pmapp.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

@Log4j2
@Controller
@RequestMapping("/product")
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;

    @GetMapping("/add")
    public void addProductGet() {
        log.info("get addProduct()");
    }

    @GetMapping("/list")
    public void getList(Model model) {
        log.info("get getList()");
        model.addAttribute("dtoList", productService.getList());
    }


    @PostMapping("/add")
    public String addProductPost(@Valid ProductDTO productDTO, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
        log.info("post addProduct()");

        if (bindingResult.hasErrors()) {
            log.error("has errors...");
            redirectAttributes.addFlashAttribute("errors", bindingResult.getAllErrors()); // 바인딩 처리
            return "redirect:/product/add";
        }

        productService.addProduct(productDTO);

        return  "redirect:/product/list";
    }


    @GetMapping("/modify")
    public void readOne(Integer id, Model model) {
        log.info("get readOne()");
        log.info(id);
        ProductDTO productDTO = productService.getOne(id);
        model.addAttribute("dto", productDTO);
    }

    @PostMapping("/modify")
    public String modify(@Valid ProductDTO productDTO, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
        log.info("post modify()");

        if (bindingResult.hasErrors()) {
            log.error("has errors...");
            redirectAttributes.addFlashAttribute("errors", bindingResult.getAllErrors());
            return "redirect:/product/modify";
        }

        productService.modify(productDTO);

        return "redirect:/product/list";
    }

    @GetMapping("/remove")
    public String remove(Integer id) {
        log.info("post remove()");

        productService.remove(id);

        return "redirect:/product/list";
    }


}
