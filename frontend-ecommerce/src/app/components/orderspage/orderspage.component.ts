import { Component, OnInit } from '@angular/core';
import { OktaAuthService } from '@okta/okta-angular';

@Component({
  selector: 'app-orderspage',
  templateUrl: './orderspage.component.html',
  styleUrls: ['./orderspage.component.css']
})
export class OrderspageComponent implements OnInit {
  oktaEmail:string;

  constructor(private oktaAuthService: OktaAuthService) {

    
        this.oktaAuthService.getUser().then(
          (res)=>{
            this.oktaEmail = res.email;
            console.log("ORDERPAGE:"+this.oktaEmail); // TEMPORARY NEED TO DELETE -OKTA EMAIL FETCH
          }
        );
   }

  ngOnInit(): void {
  }

}
