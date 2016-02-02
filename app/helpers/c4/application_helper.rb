module C4
  module ApplicationHelper


    #MAILER HELPERS
    def c4_contact_mailer
      "<div class='c4-contact-mailer'>
        <div id='c4-contact-form' class='mailer-vertical-center'>
          #{render 'c4/admin/contact_sheet'}
        </div>
      </div>
      ".html_safe
    end

    def c4_contact_data
      render 'c4/contact_data'
    end

    #DEBUGGING HELPERS
    
    #Test media queries
    def c4_queries_test
      '<div class="ms-mq-test" style="color:black"></div>'.html_safe
    end

    #Check c4 palette
    def c4_color_palette()
      '<div class="palette">
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
      <div class="p-color"></div>
    </div>'.html_safe
    end


    #Depricated...
    def error_if_exists(object,name)
      str = ''
      object.errors[name].each do |m|
        str += "<div class='error-message'>#{m}</div>"
      end
      str
    end

    def full_field(form,name,title,placeholder)
      str = ''
      str += form.label(name, title)
      str += form.text_field(name, class: 'u-full-width', placeholder: placeholder)
      str += error_if_exists(form.object,name)
      str.html_safe      
    end
    def full_field_tag(name,title,placeholder)
      str = ''
      str += label_tag(name, title)
      str += text_field_tag(name,nil, class: 'u-full-width', placeholder: placeholder)
      str.html_safe
    end
    def full_password_field(form,name,title,placeholder)
      str = ''
      str += form.label(name, title)
      str += form.password_field(name, class: 'u-full-width', placeholder: placeholder)
      str += error_if_exists(form.object,name)
      str.html_safe
    end

    def full_text_area(form,name,title,placeholder)
      str = ''
      str += form.label(name, title)
      str += form.text_area(name, class: 'u-full-width', placeholder: placeholder)
      str += error_if_exists(form.object,name)
      str.html_safe      
    end

    def full_numeric_field(form,name,title,placeholder)
      str = ''
      str += form.label(name, title)
      str += form.text_field(name, class: 'u-full-width mnt-pm-numeric-input', placeholder: placeholder)
      str += error_if_exists(form.object,name)
      str.html_safe
    end


    # NOT REALLY USEFUL RIGHT NOW
    # I HAVE TO DECIDE WHERE THIS GO...
    # PROBABLY WHEN I MAKE DE MENT-PHOTOMANAGER.JS
    def photo_if_exists(c)
      if c.photos.empty?
        image_url('delete_icon.png')
      else
        c.photos.first.photo_file.url(:thumb)
      end
    end

    def echo_spacers(number)
      result = ''
      number.times { result+='<div class="mnt-pm-spacer"></div>' }
      result.html_safe
    end

    def num_to_month(num)
      monthNames = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
      monthNames[num-1]
    end

  end
end
