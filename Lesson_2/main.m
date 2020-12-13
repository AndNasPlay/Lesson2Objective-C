//
//  main.m
//  Lesson_2
//
//  Created by Андрей Щекатунов on 10.12.2020.
//  Copyright © 2020 Andrey Shchekatunov. All rights reserved.
//

#import <Foundation/Foundation.h>


int calculateAddition(int a, int b) {
    return a + b;
}

int calculateSubtraction(int a, int b){
    return a - b;
}

int calculateMultiplication( int a, int b){
    return a * b;
}

int calculateDivision(int a, int b) {
    return a / b;
}

int main(int argc, const char * argv[]) {
    
    //1. Создание функции, которая будет проверять, входит ли переданная буква в английский алфавит.
    
    char name[40];
    scanf("%s", name);
    char text = name[0];
    
    char lettersSmall[] = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '\0'};
    char lettersBig[] = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '\0'};
    
    for(int i = 0; i < 27; ++i) {
        if ((lettersSmall[i] == text) || (lettersBig[i] == text)) {
            printf("Содержит!\n");
            break;
        } else if (i == 26) {
            printf("Не Содержит!\n");
        } else {
            continue;
        }
    }
    
    // 2. Разделение метода calculate (из практической задачи 2) на несколько методов (отдельно сложение, вычитание, умножение и деление).
    int first = 0;
    int second = 0;
    int arithmetic = 0;
    
    printf("First number: ");
    scanf("%d", &first);
    printf("Second number: ");
    scanf("%d", &second);
    printf("Введите идентификатор арифметической операции: \n Сложение - 1 \n Вычитание - 2 \n Умножение - 3 \n Деление - 4 \n Cреднее число из 3 переменных  - 5 \n Идентификатор - ");
    scanf("%d", &arithmetic);
    
    switch (arithmetic) {
        case 1:
            printf("%d \n", calculateAddition(first, second));
            break;
        case 2:
            printf("%d \n", calculateSubtraction(first, second));
            break;
        case 3:
            printf("%d \n", calculateMultiplication(first, second));
            break;
        case 4:
            printf("%d \n", calculateDivision(first, second));
            break;
        default:
            break;
    }
    return 0;
}
