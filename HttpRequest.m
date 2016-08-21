//
//  HttpRequest.m
//  BuyProject
//
//  Created by vera on 16/6/20.
//  Copyright © 2016年 vera. All rights reserved.
//

#import "HttpRequest.h"
#import "AFNetworking.h"

@implementation HttpRequest

/**
 *  get请求
 *
 *  @param urlString  <#urlString description#>
 *  @param paramaters <#paramaters description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
+ (void)GET:(NSString *)urlString paramters:(NSDictionary *)paramaters success:(HttpReqeustDidSuccessCallBack)success failure:(HttpReqeustDidFailureCallBack)failure
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:urlString parameters:paramaters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        //成功回调
        if (success)
        {
            success(responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        //失败回调
        if (failure)
        {
            failure(error);
        }
    }];
}

@end
