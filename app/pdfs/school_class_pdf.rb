class SchoolClassPdf < Prawn::Document

  def initialize(school_class)
    super()
    @school_class = school_class
    header
    body
    student_table
    job_site_application
  end

  def header
    bounding_box([0, 725], width: 530) do
      if @school_class.business.picture
        school_photo = "#{@school_class.business.picture.url}"
        image open(school_photo), fit: [125,125]
      end

      ja = "#{Rails.root}/app/assets/images/junior_achievement.png"
      image open(ja), fit: [125, 125], vposition: :top, position: :center

      forty_below = "#{Rails.root}/app/assets/images/40B_Logo.jpeg"
      image open(forty_below), fit: [125, 125], vposition: :top, position: :right
    end
  end

  def body
    bounding_box([0, 580], width: 530) do
      text "Hello #{@school_class.contact_first_name} #{@school_class.contact_last_name},"
    end
    bounding_box([0, 555], width: 530) do
      text "Farm-to-table selfies sartorial synth. Tumblr taxidermy Etsy polaroid, fap American Apparel occupy skateboard butcher umami authentic Schlitz disrupt. Lomo disrupt mlkshk ethical asymmetrical polaroid. Literally squid tilde hella iPhone fap, paleo swag Etsy DIY ethical Marfa fingerstache. Pour-over Tonx locavore fap narwhal. Sustainable American Apparel 8-bit Godard Intelligentsia Pinterest whatever lomo mlkshk, stumptown Tonx 90's. Portland freegan hashtag meditation gastropub selfies, food truck pug Banksy PBR&B shabby chic gentrify synth 3 wolf moon Helvetica.

Cliche vegan chillwave photo booth, salvia American Apparel cold-pressed. Tote bag dreamcatcher Pitchfork, art party heirloom XOXO scenester messenger bag flannel hoodie literally deep v. Scenester Intelligentsia mustache, Cosby sweater cliche Godard Brooklyn. Pour-over chia pop-up, scenester farm-to-table Blue Bottle bespoke brunch cred chambray twee Tumblr shabby chic. +1 asymmetrical mixtape scenester, hella paleo brunch chillwave cardigan butcher Truffaut keytar chia. Blog Vice narwhal church-key next level bicycle rights. Messenger bag pork belly drinking vinegar gentrify cardigan plaid.

Austin High Life shabby chic asymmetrical pour-over, dreamcatcher chillwave gastropub banjo VHS gluten-free wayfarers fashion axe. 8-bit cray sustainable, pug hashtag authentic letterpress trust fund 3 wolf moon small batch mixtape leggings gastropub ugh heirloom. Master cleanse Wes Anderson deep v heirloom iPhone chia. Williamsburg gentrify Tumblr 90's readymade drinking vinegar. McSweeney's quinoa try-hard, artisan drinking vinegar tilde jean shorts banjo scenester. Occupy cred meditation Tonx. Williamsburg Truffaut direct trade, wolf tousled farm-to-table cred normcore meh raw denim mustache pork belly skateboard Carles.

Try-hard meggings authentic, retro distillery butcher cliche. Taxidermy post-ironic American Apparel, health goth Odd Future raw denim retro Pitchfork readymade beard wolf Marfa vinyl tattooed +1. Bespoke YOLO Marfa, sustainable disrupt lo-fi Tonx pug Wes Anderson direct trade. High Life Bushwick selvage, Williamsburg Echo Park shabby chic locavore meditation small batch YOLO biodiesel street art. Cray yr raw denim Neutra, Pinterest Tonx tattooed biodiesel quinoa. Mumblecore ethical gluten-free lomo cold-pressed. VHS tilde ethical Cosby sweater meh irony, ugh pour-over before they sold out mlkshk lomo.",
           indent_paragraphs: 30


    end

    pad_top(20) {text ("Thanks for participating in Job Shadow Syracuse!")}

  end

  def student_table
    start_new_page
    bounding_box([0, 700], width: 530) do
      text "Print Your Name Next to an Identification Number:", size: 22
    end
    items =

        @school_class.job_site_applications.map do |app|
          [
              "                                                                               ",
              app.id
          ]

        end


    t = make_table(items)
    pad_top(20) {t.draw}
  end

  def job_site_application
    @school_class.job_site_applications.each do |app|
      start_new_page
      bounding_box([0, 725], width:400) do
        text "Student ID: #{app.id}", size: 32
      end
      pad_top(50){text "Thanks for your Interest in #{@school_class.business.name}!", size: 22}
      bounding_box([400, 725], width: 130) do


        if @school_class.business.picture
          school_photo = "#{@school_class.business.picture.url}"
          image open(school_photo), fit: [125,125], position: :right, vposition: :top
        end
      end
      bounding_box([0, 585], width: 530) do
        text "Farm-to-table selfies sartorial synth. Tumblr taxidermy Etsy polaroid, fap American Apparel occupy skateboard butcher umami authentic Schlitz disrupt. Lomo disrupt mlkshk ethical asymmetrical polaroid. Literally squid tilde hella iPhone fap, paleo swag Etsy DIY ethical Marfa fingerstache. Pour-over Tonx locavore fap narwhal. Sustainable American Apparel 8-bit Godard Intelligentsia Pinterest whatever lomo mlkshk, stumptown Tonx 90's. Portland freegan hashtag meditation gastropub selfies, food truck pug Banksy PBR&B shabby chic gentrify synth 3 wolf moon Helvetica.

Cliche vegan chillwave photo booth, salvia American Apparel cold-pressed. Tote bag dreamcatcher Pitchfork, art party heirloom XOXO scenester messenger bag flannel hoodie literally deep v. Scenester Intelligentsia mustache, Cosby sweater cliche Godard Brooklyn. Pour-over chia pop-up, scenester farm-to-table Blue Bottle bespoke brunch cred chambray twee Tumblr shabby chic. +1 asymmetrical mixtape scenester, hella paleo brunch chillwave cardigan butcher Truffaut keytar chia. Blog Vice narwhal church-key next level bicycle rights. Messenger bag pork belly drinking vinegar gentrify cardigan plaid.

Austin High Life shabby chic asymmetrical pour-over, dreamcatcher chillwave gastropub banjo VHS gluten-free wayfarers fashion axe. 8-bit cray sustainable, pug hashtag authentic letterpress trust fund 3 wolf moon small batch mixtape leggings gastropub ugh heirloom. Master cleanse Wes Anderson deep v heirloom iPhone chia. Williamsburg gentrify Tumblr 90's readymade drinking vinegar. McSweeney's quinoa try-hard, artisan drinking vinegar tilde jean shorts banjo scenester. Occupy cred meditation Tonx. Williamsburg Truffaut direct trade, wolf tousled farm-to-table cred normcore meh raw denim mustache pork belly skateboard Carles.

Try-hard meggings authentic, retro distillery butcher cliche. Taxidermy post-ironic American Apparel, health goth Odd Future raw denim retro Pitchfork readymade beard wolf Marfa vinyl tattooed +1. Bespoke YOLO Marfa, sustainable disrupt lo-fi Tonx pug Wes Anderson direct trade. High Life Bushwick selvage, Williamsburg Echo Park shabby chic locavore meditation small batch YOLO biodiesel street art. Cray yr raw denim Neutra, Pinterest Tonx tattooed biodiesel quinoa. Mumblecore ethical gluten-free lomo cold-pressed. VHS tilde ethical Cosby sweater meh irony, ugh pour-over before they sold out mlkshk lomo.

Asymmetrical tilde distillery American Apparel, squid salvia meggings meditation. Tumblr Carles kale chips fashion axe sriracha. Thundercats chia pug narwhal Cosby sweater aesthetic. Craft beer direct trade sriracha butcher, paleo Wes Anderson literally beard sustainable occupy mustache. Schlitz freegan YOLO, Austin slow-carb crucifix fanny pack hella wolf wayfarers bicycle rights post-ironic keffiyeh Thundercats letterpress. Cornhole XOXO Pinterest, flannel cold-pressed Blue Bottle squid. Aesthetic XOXO 8-bit, keffiyeh ennui Carles tattooed.",
             indent_paragraphs: 30


      end
    end

  end
end