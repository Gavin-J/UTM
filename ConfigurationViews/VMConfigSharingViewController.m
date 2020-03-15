//
// Copyright © 2019 osy. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "VMConfigSharingViewController.h"
#import "UTMConfiguration.h"

@interface VMConfigSharingViewController ()

@end

@implementation VMConfigSharingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // FIXME: remove this warning
    [self showUnimplementedAlert];
}

- (void)refreshViewFromConfiguration {
    [super refreshViewFromConfiguration];
    self.clipboardSharingEnabledSwitch.on = self.configuration.sharingClipboardEnabled;
}

#pragma mark - Event handlers

- (IBAction)clipboardSharingEnabledSwitchChanged:(UISwitch *)sender {
    NSAssert(sender == self.clipboardSharingEnabledSwitch, @"Invalid sender");
    self.configuration.sharingClipboardEnabled = sender.on;
}

@end
