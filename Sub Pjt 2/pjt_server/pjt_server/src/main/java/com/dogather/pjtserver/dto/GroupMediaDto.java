package com.dogather.pjtserver.dto;

import lombok.Data;

import java.time.LocalDate;

@Data
public class GroupMediaDto {

    private int mediaNo;

    private int groupNo;

    private String mediaTitile;

    private String mediaSavename;

    private LocalDate insertDate;

    private String mediaFilesize;

}
