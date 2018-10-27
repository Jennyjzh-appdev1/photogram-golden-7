class PicturesController < ApplicationController

def index
    render("pic_templates/all_photos.html.erb")
end

def display_blank_form
    render("pic_templates/blank_photo_form.html.erb")
end

def add_photo_to_list
    @url = params.fetch("the_source").to_s
    @caption = params.fetch("the_caption").to_s
    p = Photo.new
    p.source=@url
    p.caption=@caption
    p.save
    render("pic_templates/new_photo_added.html.erb")
end

def details_one_row
    render("pic_templates/details_one_row.html.erb")
end

def edit_photo
    render("pic_templates/form_edit_photo.html.erb")
end

def update_photo_info
    render("pic_templates/updated_photo")
end

def delete_photo
    render("pic_templates/photo_deleted.html.erb")
end

end