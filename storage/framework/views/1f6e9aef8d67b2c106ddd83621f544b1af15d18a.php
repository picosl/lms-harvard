<div class="main-sidebar">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="/admin">
                <img src="/assets/logo.jpg" style="height:120px; width: 90%; padding-top: 25px;"/>
                <!--<?php if(!empty($generalSettings['logo'])): ?>
                    <img src="<?php echo e($generalSettings['logo']); ?>" class="img-cover"  style="height:120px; width: 90%; padding-top: 25px;" alt="site logo">
                <?php else: ?>
                    <?php echo e(strtoupper(substr($generalSettings['site_name'],0,2))); ?>

                <?php endif; ?>-->
            </a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="/">
                <?php if(!empty($generalSettings['site_name'])): ?>
                    <?php echo e(strtoupper(substr($generalSettings['site_name'],0,2))); ?>

                <?php endif; ?>
            </a>
        </div>

        <ul class="sidebar-menu">
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_general_dashboard_show')): ?>
                <li class="<?php echo e((request()->is('admin/')) ? 'active' : ''); ?>">
                    <a href="/admin" class="nav-link">
                        <i class="fas fa-fire"></i>
                        <span><?php echo e(trans('admin/main.dashboard')); ?></span>
                    </a>
                </li>
            <?php endif; ?>

           

            <?php if($authUser->can('admin_webinars') or
                $authUser->can('admin_bundles') or
                $authUser->can('admin_categories') or
                $authUser->can('admin_filters') or
                $authUser->can('admin_quizzes') or
                $authUser->can('admin_certificate') or
                $authUser->can('admin_reviews_lists') or
                $authUser->can('admin_webinar_assignments') or
                $authUser->can('admin_enrollment')
            ): ?>
                <li class="menu-header"><?php echo e(trans('site.education')); ?></li>
            <?php endif; ?>
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_batchs')): ?>
                <li class="nav-item dropdown <?php echo e((request()->is('admin/batchs*') and !request()->is('admin/webinars/comments*')) ? 'active' : ''); ?>">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-graduation-cap"></i>
                        <span><?php echo e(_('Batch Information')); ?></span>
                    </a>
                    <ul class="dropdown-menu">
                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_batch_list')): ?>
                            <li class="<?php echo e((request()->is('admin/batchs')) ? 'active' : ''); ?>">
                                <a class="nav-link <?php if(!empty($sidebarBeeps['batchs']) and $sidebarBeeps['batchs']): ?> beep beep-sidebar <?php endif; ?>" href="/admin/batchs"><?php echo e(_('Batchs')); ?></a>
                            </li>

                            <!--<li class="<?php echo e((request()->is('admin/webinars') and request()->get('type') == 'webinar') ? 'active' : ''); ?>">-->
                            <!--    <a class="nav-link <?php if(!empty($sidebarBeeps['webinars']) and $sidebarBeeps['webinars']): ?> beep beep-sidebar <?php endif; ?>" href="/admin/webinars?type=webinar"><?php echo e(trans('admin/main.live_classes')); ?></a>-->
                            <!--</li>-->

                            <!--<li class="<?php echo e((request()->is('admin/webinars') and request()->get('type') == 'text_lesson') ? 'active' : ''); ?>">-->
                            <!--    <a class="nav-link <?php if(!empty($sidebarBeeps['textLessons']) and $sidebarBeeps['textLessons']): ?> beep beep-sidebar <?php endif; ?>" href="/admin/webinars?type=text_lesson"><?php echo e(trans('admin/main.text_courses')); ?></a>-->
                            <!--</li>-->
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_batch_create')): ?>
                            <li class="<?php echo e((request()->is('admin/batchs/create')) ? 'active' : ''); ?>">
                                <a class="nav-link" href="/admin/batchs/create"><?php echo e(trans('admin/main.new')); ?></a>
                            </li>
                        <?php endif; ?>

                        

                    </ul>
                </li>
            <?php endif; ?> 
            
            <!--Course Create-->
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_webinars')): ?>
                <li class="nav-item dropdown <?php echo e((request()->is('admin/webinars*') and !request()->is('admin/webinars/comments*')) ? 'active' : ''); ?>">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-graduation-cap"></i>
                        <span><?php echo e(trans('panel.classes')); ?></span>
                    </a>
                    <ul class="dropdown-menu">
                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_webinars_list')): ?>
                            <li class="<?php echo e((request()->is('admin/webinars') and request()->get('type') == 'course') ? 'active' : ''); ?>">
                                <a class="nav-link <?php if(!empty($sidebarBeeps['courses']) and $sidebarBeeps['courses']): ?> beep beep-sidebar <?php endif; ?>" href="/admin/webinars?type=course"><?php echo e(trans('admin/main.courses')); ?></a>
                            </li>

                            <!--<li class="<?php echo e((request()->is('admin/webinars') and request()->get('type') == 'webinar') ? 'active' : ''); ?>">-->
                            <!--    <a class="nav-link <?php if(!empty($sidebarBeeps['webinars']) and $sidebarBeeps['webinars']): ?> beep beep-sidebar <?php endif; ?>" href="/admin/webinars?type=webinar"><?php echo e(trans('admin/main.live_classes')); ?></a>-->
                            <!--</li>-->

                            <!--<li class="<?php echo e((request()->is('admin/webinars') and request()->get('type') == 'text_lesson') ? 'active' : ''); ?>">-->
                            <!--    <a class="nav-link <?php if(!empty($sidebarBeeps['textLessons']) and $sidebarBeeps['textLessons']): ?> beep beep-sidebar <?php endif; ?>" href="/admin/webinars?type=text_lesson"><?php echo e(trans('admin/main.text_courses')); ?></a>-->
                            <!--</li>-->
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_webinars_create')): ?>
                            <li class="<?php echo e((request()->is('admin/webinars/create')) ? 'active' : ''); ?>">
                                <a class="nav-link" href="/admin/webinars/create"><?php echo e(trans('admin/main.new')); ?></a>
                            </li>
                        <?php endif; ?>

                        

                    </ul>
                </li>
            <?php endif; ?> 
            

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_quizzes')): ?>
                <li class="<?php echo e((request()->is('admin/quizzes*')) ? 'active' : ''); ?>">
                    <a class="nav-link " href="/admin/quizzes">
                        <i class="fas fa-file"></i>
                        <span><?php echo e(trans('admin/main.quizzes')); ?></span>
                    </a>
                </li>
            <?php endif; ?>

            

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_webinar_assignments')): ?>
                <li class="<?php echo e((request()->is('admin/assignments')) ? 'active' : ''); ?>">
                    <a href="/admin/assignments" class="nav-link">
                        <i class="fas fa-pen"></i>
                        <span><?php echo e(trans('update.assignments')); ?></span>
                    </a>
                </li>
            <?php endif; ?>

            <!--<?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_course_question_forum_list')): ?>
                <li class="<?php echo e((request()->is('admin/webinars/course_forums')) ? 'active' : ''); ?>">
                    <a class="nav-link " href="/admin/webinars/course_forums">
                        <i class="fas fa-comment-alt"></i>
                        <span><?php echo e(trans('update.course_forum')); ?></span>
                    </a>
                </li>
            <?php endif; ?>-->

            

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_enrollment')): ?>
                <li class="nav-item dropdown <?php echo e((request()->is('admin/enrollments*')) ? 'active' : ''); ?>">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-user-plus"></i>
                        <span><?php echo e(trans('update.enrollment')); ?></span>
                    </a>
                    <ul class="dropdown-menu">
                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_enrollment_history')): ?>
                            <li class="<?php echo e((request()->is('admin/enrollments/history')) ? 'active' : ''); ?>">
                                <a class="nav-link" href="/admin/enrollments/history"><?php echo e(trans('public.history')); ?></a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_enrollment_add_student_to_items')): ?>
                            <li class="<?php echo e((request()->is('admin/enrollments/add-student-to-class')) ? 'active' : ''); ?>">
                                <a class="nav-link" href="/admin/enrollments/add-student-to-class"><?php echo e(trans('update.add_student_to_a_class')); ?></a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </li> 
            <?php endif; ?>

            
            <!--<?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('course_instruction_view')): ?>
                <li class="nav-item dropdown <?php echo e((request()->is('admin/course_instruction*')) ? 'active' : ''); ?>">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-th"></i>
                        <span>Course Instruction</span>
                    </a>
                    <ul class="dropdown-menu">
                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('course_instruction_view')): ?>
                            <li class="<?php echo e((request()->is('admin/course_instruction/list')) ? 'active' : ''); ?>">
                                <a class="nav-link" href="/admin/course_instruction/list">List</a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('course_instruction_view')): ?>
                            <li class="<?php echo e((request()->is('admin/course_instruction/add')) ? 'active' : ''); ?>">
                                <a class="nav-link" href="/admin/course_instruction/add">Add</a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </li> 
            <?php endif; ?>-->

            

            

            






            

            <?php if($authUser->can('admin_users') or
                $authUser->can('admin_roles') or
                $authUser->can('admin_users_not_access_content') or
                $authUser->can('admin_group') or
                $authUser->can('admin_users_badges') or
                $authUser->can('admin_become_instructors_list') or
                $authUser->can('admin_delete_account_requests')
            ): ?>
                <li class="menu-header"><?php echo e(trans('panel.users')); ?></li>
            <?php endif; ?>

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_users')): ?>
                <li class="nav-item dropdown <?php echo e((request()->is('admin/staffs') or request()->is('admin/students') or request()->is('admin/instructors') or request()->is('admin/organizations')) ? 'active' : ''); ?>">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-users"></i>
                        <span><?php echo e(trans('admin/main.users_list')); ?></span>
                    </a>

                    <ul class="dropdown-menu">
                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_staffs_list')): ?>
                            <li class="<?php echo e((request()->is('admin/staffs')) ? 'active' : ''); ?>">
                                <a class="nav-link" href="/admin/staffs"><?php echo e(trans('admin/main.staff')); ?></a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_users_list')): ?>
                            <li class="<?php echo e((request()->is('admin/students')) ? 'active' : ''); ?>">
                                <a class="nav-link" href="/admin/students"><?php echo e(trans('public.students')); ?></a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_instructors_list')): ?>
                            <li class="<?php echo e((request()->is('admin/instructors')) ? 'active' : ''); ?>">
                                <a class="nav-link" href="/admin/instructors"><?php echo e(trans('home.instructors')); ?></a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_organizations_list')): ?>
                            <li class="<?php echo e((request()->is('admin/organizations')) ? 'active' : ''); ?>">
                                <a class="nav-link" href="/admin/organizations">Agent</a>
                            </li>
                        <?php endif; ?>

                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_users_create')): ?>
                            <li class="<?php echo e((request()->is('admin/users/create')) ? 'active' : ''); ?>">
                                <a class="nav-link" href="/admin/users/create"><?php echo e(trans('admin/main.new')); ?></a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </li>
            <?php endif; ?>


            

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_delete_account_requests')): ?>
                <li class="nav-item <?php echo e((request()->is('admin/users/delete-account-requests*')) ? 'active' : ''); ?>">
                    <a href="/admin/users/delete-account-requests" class="nav-link">
                        <i class="fa fa-user-times"></i>
                        <span><?php echo e(trans('update.delete-account-requests')); ?></span>
                    </a>
                </li>
            <?php endif; ?>

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_roles')): ?>
                <li class="nav-item dropdown <?php echo e((request()->is('admin/roles*')) ? 'active' : ''); ?>">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-user-circle"></i> <span><?php echo e(trans('admin/main.roles')); ?></span>
                    </a>
                    <ul class="dropdown-menu">
                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_roles_list')): ?>
                            <li class="<?php echo e((request()->is('admin/roles')) ? 'active' : ''); ?>">
                                <a class="nav-link active" href="/admin/roles"><?php echo e(trans('admin/main.lists')); ?></a>
                            </li>
                        <?php endif; ?>
                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_roles_create')): ?>
                            <li class="<?php echo e((request()->is('admin/roles/create')) ? 'active' : ''); ?>">
                                <a class="nav-link" href="/admin/roles/create"><?php echo e(trans('admin/main.new')); ?></a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </li>
            <?php endif; ?>

            

            



            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_become_instructors_list')): ?>
                <li class="nav-item dropdown <?php echo e((request()->is('admin/users/become-instructors*')) ? 'active' : ''); ?>">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-list-alt"></i>
                        <span><?php echo e(trans('admin/main.instructor_requests')); ?></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="<?php echo e((request()->is('admin/users/become-instructors/instructors')) ? 'active' : ''); ?>">
                            <a class="nav-link" href="/admin/users/become-instructors/instructors">
                                <span><?php echo e(trans('admin/main.instructors')); ?></span>
                            </a>
                        </li>

                        <li class="<?php echo e((request()->is('admin/users/become-instructors/organizations')) ? 'active' : ''); ?>">
                            <a class="nav-link" href="/admin/users/become-instructors/organizations">
                                <span><?php echo e(trans('admin/main.organizations')); ?></span>
                            </a>
                        </li>
                    </ul>
                </li>
            <?php endif; ?>

            

            

            

            

            

            

            

            


            

            

            

            

            <?php if($authUser->can('admin_settings')): ?>
                <li class="menu-header"><?php echo e(trans('admin/main.settings')); ?></li>
            <?php endif; ?>

            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin_settings')): ?>
                <?php
                    $settingClass ='';

                    if (request()->is('admin/settings*') and
                            !(
                                request()->is('admin/settings/404') or
                                request()->is('admin/settings/contact_us') or
                                request()->is('admin/settings/footer') or
                                request()->is('admin/settings/navbar_links')
                            )
                        ) {
                            $settingClass = 'active';
                        }
                ?>

                <li class="nav-item <?php echo e($settingClass ?? ''); ?>">
                    <a href="/admin/settings" class="nav-link">
                        <i class="fas fa-cogs"></i>
                        <span><?php echo e(trans('admin/main.settings')); ?></span>
                    </a>
                </li>
            <?php endif; ?>


            <li>
                <a class="nav-link" href="/admin/logout">
                    <i class="fas fa-sign-out-alt"></i>
                    <span><?php echo e(trans('admin/main.logout')); ?></span>
                </a>
            </li>

        </ul>
        <br><br><br>
    </aside>
</div>
<?php /**PATH /home/wlms/public_html/iiet.wlms.com.au/iiet/resources/views/admin/includes/sidebar.blade.php ENDPATH**/ ?>