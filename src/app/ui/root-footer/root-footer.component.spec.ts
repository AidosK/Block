import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RootFooterComponent } from './root-footer.component';

describe('RootFooterComponent', () => {
  let component: RootFooterComponent;
  let fixture: ComponentFixture<RootFooterComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RootFooterComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(RootFooterComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
