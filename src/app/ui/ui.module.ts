import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { UiRoutingModule } from './ui-routing.module';
import { RootMainComponent } from './root-main/root-main.component';
import { RootHeaderComponent } from './root-header/root-header.component';
import { RootFooterComponent } from './root-footer/root-footer.component';
import { MainPageComponent } from './main-page/main-page.component';

@NgModule({
  declarations: [
    RootMainComponent,
    RootHeaderComponent,
    RootFooterComponent,
    MainPageComponent
  ],
  imports: [
    CommonModule,
    UiRoutingModule,
  ], 
  exports: [
    RootMainComponent,
    RootHeaderComponent,
    RootFooterComponent
  ]
})
export class UiModule { }
