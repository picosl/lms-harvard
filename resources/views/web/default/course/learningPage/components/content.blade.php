@php
    $showLoading = false;

    if(
        (!empty($noticeboards) and $noticeboards) or
        !empty($assignment) or
        (!empty($isForumPage) and $isForumPage) or
        (!empty($isForumAnswersPage) and $isForumAnswersPage)
    ) {
        $showLoading = false;
    }
@endphp

<div class="learning-content" id="learningPageContent">


    @if(!empty($isForumAnswersPage) and $isForumAnswersPage)
        {{-- dd('1') --}}
        @include('web.default.course.learningPage.components.forum.forum_answers')
    @elseif(!empty($isForumPage) and $isForumPage)
        {{-- dd('2') --}}
        @include('web.default.course.learningPage.components.forum.forum')
    @elseif(!empty($noticeboards) and $noticeboards)
        {{-- dd('3') --}}
        @include('web.default.course.learningPage.components.noticeboards')
    @elseif(!empty($assignment))
        {{-- dd('4') --}}
        @include('web.default.course.learningPage.components.assignment')
    @endif

    <div class="learning-content-loading align-items-center justify-content-center flex-column w-100 h-100 {{ $showLoading ? 'd-flex' : 'd-none' }}">
        <img src="/assets/default/img/loading.gif" alt="">
        <p class="mt-10">{{ trans('update.please_wait_for_the_content_to_load') }}</p>
    </div>
</div>
