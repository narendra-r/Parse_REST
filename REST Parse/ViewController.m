//
//  ViewController.m
//  REST Parse
//
//  Created by Kvana Mac Pro 2 on 1/23/16.
//  Copyright © 2016 Narendra. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button=[[UIButton alloc]initWithFrame:CGRectMake(10, 10, 50, 50)];
    [button setBackgroundColor:[UIColor redColor]];
    [button addTarget:self action:@selector(getData) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [self saveData];
    
    
}
/*curl -X POST \
 -H "X-Parse-Application-Id: eSiCF0m5f2YlMUgJ1ecDUQHoG12Q9RWBfOOebxxq" \
 -H "X-Parse-REST-API-Key: 1iW1AmwjV0eHzw7gRNIJKjLQAzttQ91l141sqTKX" \
 -H "Content-Type: application/json" \
 -d '{"score":1337,"playerName":"Sean Plott","cheatMode":false}' \
 https://api.parse.com/1/classes/GameScore
 */
-(void)saveData{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:@"<APP KEY>" forHTTPHeaderField:@"X-Parse-Application-Id"];
    [manager.requestSerializer setValue:@"<REST _ KEY>" forHTTPHeaderField:@"X-Parse-REST-API-Key"];
    NSString *url=@"https://api.parse.com/1/classes/bons";
    [manager POST:url parameters:@{@"zdasd":@"sdfasdf"} success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        
    }];
}



-(void)getData{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:@"<APP KEY>" forHTTPHeaderField:@"X-Parse-Application-Id"];
        [manager.requestSerializer setValue:@"<REST _ KEY>" forHTTPHeaderField:@"X-Parse-REST-API-Key"];
    NSString *url=@"https://api.parse.com/1/classes/bons";
    [manager GET:url parameters:@{} success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
