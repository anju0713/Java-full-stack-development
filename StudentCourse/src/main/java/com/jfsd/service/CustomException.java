package com.jfsd.service;

public class CustomException extends RuntimeException {
    public CustomException(String message) {
        super(message);
    }
}
