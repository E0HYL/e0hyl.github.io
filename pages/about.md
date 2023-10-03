---
layout: page
permalink: /about.html
title: About Me
description: Get to know what I'm up too
header-img: 
last-updated: 2020-10-30 5:55 PM
---

<h1 class="mx-auto" style="font-family:Courgette;">{{ page.title }}</h1>

I am a PhD candidate at Zhejiang University (Hangzhou, China), under the supervision of <a href="https://scholar.google.com/citations?user=uuQA_rcAAAAJ">Prof. Kui Ren</a> and <a href="https://scholar.google.com/citations?user=5fa4lOQAAAAJ&amp;hl=en">Zhan Qin</a>.

Currently, I am actively seeking post-doctoral opportunities abroad.

<div class="tab-pane overflow-auto" id="{{section.id}}" role="tabpanel" aria-labelledby="{{section.id}}-tab">  
    <p><i>{{section.description}}</i></p>
    <!-- Education & Awards Section -->
    <p style="font-size:large;"><i class="fas fa-school"></i> Education & Awards </p>
    {% for edu in site.data.education %}
    <div class="list-group">
        <div class="list-group-item list-group-item-action">
            <div class="d-flex w-100 justify-content-between">
                <p class="mb-1">
                    <b>{{ edu.School }}:</b> <em>{{ edu.Degree }}</em>
                </p>
                <small>{{ edu.StartDate }} - {{ edu.EndDate }}</small>
            </div>
            <em>{{ edu.Program }}, {{ edu.Department }}</em>
            <br><small>Awards: </small>
            {% for award in edu.Awards %}
            <span class="badge badge-secondary mr-1" style="background-color:black;">{{ award }}</span>
            {% endfor %}
        </div>
    </div>
    {% endfor %}
    <!-- Internships Section -->
    <p style="font-size:large;"><i class="fas fa-building"></i> Internships </p>
    {% for int in site.data.intern %}
    <div class="list-group">
        <div class="list-group-item list-group-item-action">
            <div class="d-flex w-100 justify-content-between">
                <p class="mb-1">
                    <b>{{ int.Company }}:</b> <em>{{ int.Department }}</em>
                </p>
                <small>{{ int.StartDate }} - {{ int.EndDate }}</small>
            </div>
            <em>{{ int.Description }}</em>
            <div class="title font-weight-bold">
                &nbsp; {{int.title}}
            </div>
            <a href="{{ int.pdf }}" class="btn btn-sm z-depth-0" role="button" target="_blank"><i class="fas fa-file-pdf"></i> PDF</a>
            <a href="{{ int.issues }}" class="btn btn-sm z-depth-0" role="button" target="_blank"><i class="fas fa-info-circle"></i> Issues</a>
        </div>
    </div>
    {% endfor %}
    <!-- Professional Services Section -->
    <p style="font-size:large;"><i class="fas fa-book-reader"></i> Professional Services </p>
    {% for ser in site.data.services %}
    <div class="list-group">
        <div class="list-group-item list-group-item-action">
            <div class="d-flex w-100 justify-content-between">
                <p class="mb-1">
                    <b>{{ ser.Association }}:</b> <em>{{ ser.Job }}</em>
                </p>
                <small>{{ ser.Time }}</small>
            </div>
            {% if ser.Awards %}
            <small>Awards: </small>
            {% for award in ser.Awards %}
            <span class="badge badge-secondary mr-1" style="background-color:black;">{{ award }}</span>
            {% endfor %}
            {% endif %}
        </div>
    </div>
    {% endfor %}
</div>


<!-- 
*This is an example of code*
```js
<script>
    $(document).ready(function() {
        $(".toast").toast('show');
    });
</script>
``` -->
