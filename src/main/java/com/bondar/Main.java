package com.bondar;

/**
 * Created by ���� on 20.04.2016.
 */
public class Main {
    public static void main(String[] args) {
        System.out.println(Validation.clientNameValidation("Vaasdsha"));
        System.out.println(Validation.clientNameValidation("djh1skljdf"));
        System.out.println(Validation.clientNameValidation("12вы1дпи1"));
        System.out.println(Validation.clientNameValidation("ваполывпи"));
    }
}
