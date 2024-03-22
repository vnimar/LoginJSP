
package br.com.exception;

public class InvalidUserException extends SecurityException{
    public InvalidUserException(String message){
        super(message);
    }
}
