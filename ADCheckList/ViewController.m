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
    
    
    self.items = @[@{@"name":@"Dance Class",@"category": @"Home"},
                  @{@"name" :@"Shopping" , @"category": @"Home"},@{@"name":@"Metting", @"category": @"Home"},@{@"name":@"Progrmming",@"category": @"Home"}]. mutableCopy;
    
  self.navigationItem.title =@"To Do Check List";
    
    
    self.navigationItem.rightBarButtonItem =[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addNewItem:)];
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Adding items


-(void)addNewItem :(UIBarButtonItem *)sender{
    
//  UIAlertController *alertView =[[UIAlertController alertControllerWithTitle:@"New To-do Item" message:@"Please Enter Your To Do Item"
//  preferredStyle:UIAlertControllerStyleActionSheet];
    
                                   
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"New To Do Item" message:@"Please Add Your New To Do Item." preferredStyle:UIAlertControllerStyleAlert];
                                   
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Add Item" style:UIAlertActionStyleDefault
    handler:^(UIAlertAction * action) {}];
                                   
    [alert addAction:defaultAction];
    
    [self presentViewController:alert animated:YES completion:nil];
}


//
//-(void)addNewItem :(UIBarButtonItem *)sender{
//    UIAlertController *alertView = [[UIAlertController alloc]initWithTitle :@"New to-do item" message:@"please enter your item" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitels:@"Add Item",nil];
//    
//
//  UIAlertController.UIAlertViewStyle = UIAlertViewStylePlainTextInput;
//}



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

