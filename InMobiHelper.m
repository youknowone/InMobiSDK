//
//  InMobiHelper.m
//  ApplicationBuilder
//
//  Created by Jeong YunWon on 13. 3. 9..
//  Copyright (c) 2013 youknowone.org All rights reserved.
//

#import "IMAdView.h"
#import "IMAdDelegate.h"
#import "IMAdRequest.h"
#import "IMAdError.h"
#import "InMobiHelper.h"

void InMobiQuickSet(NSString *appId, UIViewController *viewController, UIView *view, id delegate) {
    IMAdView *inmobiAdView = [[IMAdView alloc] initWithFrame:CGRectMake(0, 0, 320, 50) imAppId:appId imAdSize:IM_UNIT_320x50 rootViewController:viewController];
    inmobiAdView.delegate = delegate;

    IMAdRequest *request = [IMAdRequest request];

    /**
     * Make sure to set testMode to NO before submitting to App Store.
     */
    inmobiAdView.imAdRequest = request;
    [view addSubview:inmobiAdView];
    [inmobiAdView loadIMAdRequest];
}