#ifndef TOKEN_H
#define TOKEN_H

typedef enum {
    TOKEN_KEYWORD = 1,
    TOKEN_IDENTIFIER = 2,
    TOKEN_NUMBER = 3,
    TOKEN_OPERATOR = 4,
    TOKEN_PUNCTUATION = 5,
    TOKEN_UNKNOWN = 6
} TokenType;

#endif  
