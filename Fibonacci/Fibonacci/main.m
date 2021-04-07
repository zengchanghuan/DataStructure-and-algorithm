//
//  main.m
//  Fibonacci
//
//  Created by ZengChanghuan on 2021/4/7.
//

#import <Foundation/Foundation.h>

//低效算法 斐波那契数列递归调用，指数级增长2^n。递归方式效率低，时间复杂度是指数级的
long long fib1 (int n)
{
    if (n < 2) {
        return n;
    } else {
        return fib1(n - 1) + fib1(n - 2);
    }
}


/// 线性算法
/// @param n 最大数项
long long Fibonacci (int n)
{
    int i,Last,NextToLast,Answer;
    if (n <= 1)
    {
        return 1;
    }
    Last = NextToLast = 1;
    Answer = 0;
    for (i = 2; i <= n; i++)
    {
        Answer = Last + NextToLast;
        NextToLast = Last;
        Last = Answer;
    }
    return Answer;
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int n = 42;

        time_t s2,e2,sumtime2;
//        int n = 0;
//        NSLog(@"请输入一个数：");
//        scanf("%d",&n);
        s2 = clock();
        long long ret2 = Fibonacci(n);
        e2 = clock();
        NSLog(@"sumtime2 = %ld",sumtime2 = e2 - s2);
        NSLog(@"ret2 = %lld",ret2);
        
        
        time_t s,e,sumtime;
//        NSLog(@"请输入一个数：");
//        scanf("%d",&n);
        s = clock();
        long long ret = fib1(n);
        e = clock();
        NSLog(@"sumtime = %ld",sumtime = e - s);
        NSLog(@"ret = %lld",ret);
        
    }
    return 0;
}
