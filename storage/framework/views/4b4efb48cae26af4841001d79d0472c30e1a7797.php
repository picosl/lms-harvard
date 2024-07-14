

<?php $__env->startSection('content'); ?>
    <section class="section">
        <div class="section-header">
            <h1><?php echo e($pageTitle); ?></h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="/admin/"><?php echo e(trans('admin/main.dashboard')); ?></a>
                </div>
                <div class="breadcrumb-item"><?php echo e($pageTitle); ?></div>
            </div>
        </div>

        <div class="section-body" id="section_enrollment">

            <div class="row">
                <div class="col-12 col-md-12">
                    <div class="card">
                        <div class="card-body">

                            <div class="row" data-select2-id="select2-data-9-dj9p">
                                <div class="col-12 col-md-12" data-select2-id="select2-data-8-7l60">
                                    <form   @submit.prevent="Create_Erollment()" >
                                                      
                                                    
                                                    <div class="col-md-6">
                                                    <div class="form-group" data-select2-id="select2-data-6-yuvt">
                                                            <label class="input-label d-block">Batch</label>
                                                       

                                                        <v-select @input="Selected_Batch"   placeholder="<?php echo e(__('Search Batch')); ?>"
                                                            v-model="batch_id" :reduce="(option) => option.value"
                                                            :options="batchs.map(batchs => ({label: batchs.batch_name, value: batchs.id}))">
                                                        </v-select>
                                                        </div>
                                                        <div class="form-group" data-select2-id="select2-data-6-yuvt">
                                                            <label class="input-label d-block">Student</label>
                                                       

                                                        <v-select @input="Selected_Course"   placeholder="<?php echo e(__('Search Student')); ?>"
                                                            v-model="student_id" :reduce="(option) => option.value"
                                                            :options="students.map(students => ({label: students.name, value: students.id}))">
                                                        </v-select>
                                                        </div>
                                                        

                                                        <div class="form-group" data-select2-id="select2-data-19-j9q4">
                                                            <label class="input-label">Course</label>
                                                        

                                                        <v-select @input="Selected_Course"   placeholder="<?php echo e(__('Search Course')); ?>"
                                                            v-model="webinar_id" :reduce="(option) => option.value"
                                                            :options="webinars.map(webinars => ({label: webinars.title, value: webinars.id}))">
                                                        </v-select>
                                                        </div>
                                                        </div>

                                            <div class="col-12 col-md-12">

                                            <template>
                                
                                            <table class="table">
                                            <thead>
                                                <tr>
                                                <th><input type="checkbox" v-model="selectAll" @change="toggleAll" ></th>
                                                <th>Code</th>
                                                <th>Tite</th>
                                                <th>Start Date</th>
                                                <th>Durration</th>
                                                <th>End Date</th>
                                                
                                        
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr v-for="(item, index) in this.units" :key="index">
                                                <td>
                                                
                                                <input type="checkbox" v-model="item.checked">
                                        
                                                </td>
                                                <td >
                                                    
                                                <label v-model="item.code" style="width:100px">
                                                {{ item.code }}
                                                </label>
                                            
                                                </td>
                                                <td>
                                                <label v-model="item.title" style="width:250px">
                                                {{ item.title }}
                                                </label>
                                                </td>
                                                <td>
                                                <input v-model="item.start_date" type="date"  @input="SelectStartdate($event,item.days, index)"  class="form-control"  />   
                                                </td>
                                                <td>
                                                <label v-model="item.days">
                                                {{ item.days }}
                                                </label>
                                                </td>
                                                <td>
                                                <input v-model="item.end_date" type="date"  class="form-control"  />   
                                                </td>
                                            
                                            
                                                </tr>
                                            </tbody>
                                            </table>
                                        
                                    
                                    </template>
                                            

                                            </div>
                              

                                                            
                                        <button type="submit" class="btn btn-primary" :disabled="SubmitProcessing">
                                                <span v-if="SubmitProcessing" class="spinner-border spinner-border-sm" role="status"
                                                    aria-hidden="true"></span> <i class="i-Yes me-2 font-weight-bold"></i> <?php echo e(__('Save')); ?>

                                            </button>
                                    </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>





<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>

<script>
    Vue.component('v-select', VueSelect.VueSelect)
  
      var app = new Vue({
          el: '#section_enrollment',
          components: {
                vuejsDatepicker,
            },
            mounted() {
           
          },
          data: {
              name:"",
              len: 44,
              SubmitProcessing:false,
              data: new FormData(),
              errors:[],
              webinars:<?php echo json_encode($webinars, 15, 512) ?>, 
              students:<?php echo json_encode($students, 15, 512) ?>,      
              batchs:<?php echo json_encode($batchs, 15, 512) ?>,                 
              webinar_id:'',
              student_id:'',
              batch_id:'',
              units: [],
              selectAll: true, 
            
          },
  
         
         
          methods: {
            toggleAll() {
            const isChecked = this.selectAll;
            this.units.forEach(item => {
                item.checked = isChecked;
            });
            },
            
            SelectStartdate(event,days,id) {
             //   console.log(event);
                let start_date = event.target.value;
                let date = new Date(start_date);                    
                date.setDate(date.getDate() + days);     
                let newDate = new Date(date);          
                let end_date = newDate.toISOString().substr(0, 10);          
                console.log(id);
                this.units[id].end_date=end_date;
               // this.filterData
                },
            Selected_Course(value){
                if (value != null) {
                  console.log(value);
                  this.SelectCourse(value);
                 
                }
            }
            ,      
            Selected_Batch(value){
                if (value != null) {
                 
                //  this.SelectCourse(value);
                 
                }
            },
        
          
            SelectCourse(course_id) {

                          NProgress.start();
                          NProgress.set(0.1);                      
                    
                          axios
                              .get("/admin/enrollments/getUnits/"+course_id)
                              .then(response => {
                             
                              NProgress.done();
                              this.units = response.data.units;
                           //  console.log( this.units);
                              this.toggleAll();
                          
                              })
                              .catch(error => {
                                
                                  NProgress.done();
                                  

                                  if (error.response.status == 422) {
                                      self.errors = error.response.data.errors;
                                      toastr.error('Error Occered');
                                  }

                                  
                              });
                            }  
            ,
              
        
            Create_Erollment() {
                  
                    NProgress.start();
                    NProgress.set(0.1);
                    var self = this;
                    self.SubmitProcessing = true;               
                   
                
                    axios
                    .post("/admin/enrollments/store",{
                                webinar_id:this.webinar_id,
                                batch_id:this.batch_id,
                                user_id:this.student_id,                               
                                units:this.units.filter(s=>s.checked==true),

                             })
                        .then(response => {
                      
                        NProgress.done();
                        self.SubmitProcessing = false;
                        window.location.href ='/admin/enrollments/history'; 
                        toastr.success('Submit Successfull');
                        self.errors = {};
                        })
                        .catch(error => {
                       
                            NProgress.done();
                            self.SubmitProcessing = false;
                            console.log(error.response);
                          // window.location.href ='/admin/enrollments/history'; 
                            if (error.response.status == 422) {
                                self.errors = error.response.data.errors;
                                toastr.error( self.errors);
                            }

                            
                        });
                    }           
          }

             
      ,
          //-----------------------------Autoload function-------------------
          created() {
           // console.log(  this.webinars);
          }
  
      })
function changef(event){
    
    app.order.customer_contact_id=$(event).val();   
  
  
}
</script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/wlms/public_html/iiet.wlms.com.au/iiet/resources/views/admin/enrollment/add_student_to_a_class.blade.php ENDPATH**/ ?>