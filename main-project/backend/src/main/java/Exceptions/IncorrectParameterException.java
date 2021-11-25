package Exceptions;

public class IncorrectParameterException extends Exception {
    public IncorrectParameterException() {}

    public IncorrectParameterException(String msg) {
        super(msg);
    }
}
