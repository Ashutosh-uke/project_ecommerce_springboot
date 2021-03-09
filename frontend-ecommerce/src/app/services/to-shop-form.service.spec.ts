import { TestBed } from '@angular/core/testing';

import { ToShopFormService } from './to-shop-form.service';

describe('ToShopFormService', () => {
  let service: ToShopFormService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ToShopFormService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
