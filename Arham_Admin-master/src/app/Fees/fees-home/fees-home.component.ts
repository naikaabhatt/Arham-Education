import { Component, OnInit,ViewChild } from '@angular/core';
import { StudentService } from '../../services/student.service';
import {MatPaginator, PageEvent} from '@angular/material/paginator';
import {MatSort} from '@angular/material/sort';
import { MatTableDataSource } from "@angular/material/table";
import { SelectionModel } from "@angular/cdk/collections";
import { Router } from "@angular/router";
import {student_class} from "../../classes/student_class";
import { FeesService } from 'src/app/services/fees.service';
import { fees_class } from 'src/app/classes/fees_class';


export class fees_tbl
{
  constructor(public Student_id:number,public Name:string,public Email_id:string,public Batch_name:string,public pending_amount:number){}
}



@Component({
  selector: 'app-fees-home',
  templateUrl: './fees-home.component.html',
  styleUrls: ['./fees-home.component.css']
})
export class FeesHomeComponent implements OnInit {

  Student_tbl_arr: fees_tbl[] = [];
  Student_delarr: student_class[] = [];
  j: number;
  flag:boolean;
  i: number = 0;
  page_length = 100;
  pageSize = 10;
  spinner_Flag:boolean=false;
  Student_selection = new SelectionModel(true, []);

  Student_dataSource = new MatTableDataSource();
  @ViewChild(MatPaginator)
  paginator: MatPaginator;
  @ViewChild(MatSort)
  sort: MatSort;
  pageEvent: PageEvent;
  expandedElement;
  arr:number[]=[];
  displayedColumns: string[] = [
    "Name",
    "Email_id",
    "Batch_name",
    "Pending_amount",
    "PayFees"

  ];

  Faculty_type:number;
role:number=0;
  constructor(private _ser:StudentService,private _router:Router,private fees_ser:FeesService) {
    this.role=parseInt(localStorage.getItem('faculty_type'));
   }

  ngOnInit() {
    console.log(this.role);
    this.flag=true;

    this.Faculty_type=Number(localStorage.getItem('faculty_type'));
    if(this.Faculty_type!=1 && this.Faculty_type!=3 )
    {
      console.log(true);
     this._router.navigate(['menu']);
    }


    this._ser.getAllStudent().subscribe((data:student_class[])=>{
      console.log(data);

      for(let i=0;i<data.length;i++)
      {
        this.fees_ser.getDetailsbyStudentId(data[i].Student_id).subscribe(
          (data1:fees_class[])=>
          {
            console.log(data1);
            if(data1.length==0)
            {
              this.Student_tbl_arr.push(new fees_tbl(data[i].Student_id,data[i].Name+" "+data[i].Last_name,data[i].Email_id,data[i].Batch_name,data[i].Fees));
            }
            else
            {
              for(let j=0;j<data1.length;j++)
              {
                data[i].Fees-=data1[j].Paid_amount;
                if(j==data1.length-1)
                {
                  this.Student_tbl_arr.push(new fees_tbl(data[i].Student_id,data[i].Name+" "+data[i].Last_name,data[i].Email_id,data[i].Batch_name,data[i].Fees));
                }
              }
            }
          }
        );

      }

      setTimeout(() => {

          console.log(this.Student_tbl_arr);
          this.Student_dataSource.data=this.Student_tbl_arr;
          this.Student_dataSource.paginator = this.paginator;
          this.Student_dataSource.sort = this.sort;
            this.spinner_Flag=true;


      }, 1000);




    });

  }
  applyFilter(filterValue: string) {
    this.Student_dataSource.filter = filterValue.trim().toLowerCase();
    if(this.Student_dataSource.filteredData.length==0)
    {
      //console.log('in1');
      this.flag=false;
    }
    else
    {
      this.flag=true;
    }

  }

  pay_fees(arr){
    console.log(arr);
    this._router.navigate(["/menu/update_fees", arr.Student_id]);
  }

}
