//
//  ViewController.m
//  ADCheckList
//
//  Created by Amol Tukaram Dhage on 29/10/16.
//  Copyright © 2016 AmolTDhage. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) NSMutableArray *items;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.items = @[@{@"name" : @"Dance" , @"category": @"Hobby"}]. mutableCopy;
    
  self.navigationItem.title =@"To Do Check List";
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark Table view datasource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"TodoItemRow";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSDictionary *item = self.items[indexPath.row];
    
    cell.textLabel.text =item[@"name"];
    
    return cell;
    
}




@end

