//
//  HttpRequest.h
//  BuyProject
//
//  Created by vera on 16/6/20.
//  Copyright © 2016年 vera. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  成功回调
 *
 *  @param resoponseObject <#resoponseObject description#>
 */
typedef void(^HttpReqeustDidSuccessCallBack)(id resoponseObject);

/**
 *  失败回调
 *
 *  @param error <#error description#>
 */
typedef void(^HttpReqeustDidFailureCallBack)(NSError *error);

@interface HttpRequest : NSObject

/**
 *  get请求
 *
 *  @param urlString  <#urlString description#>
 *  @param paramaters <#paramaters description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
+ (void)GET:(NSString *)urlString paramters:(NSDictionary *)paramaters success:(HttpReqeustDidSuccessCallBack)success failure:(HttpReqeustDidFailureCallBack)failure;

@end
