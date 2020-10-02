class SetupsController < ApplicationController
     
    def new
        @setup = Setup.new
    end

    def show
        @setup = Setup.find(params[:id])
        @parts = @setup.my_parts
    end
    
    def create
        @setup = Setup.create(name: params[:setup][:name], user_id: session[:id], budget: params[:max_budget], use: params[:use], size: params[:size], color: params[:color])
        if @setup.valid?
            @setup.select_parts(name: params[:setup][:name], user_id: session[:id], budget: params[:max_budget], use: params[:use], size: params[:size], color: params[:color])
            flash[:alert] = "Your custom setup has been added to your profile!"
            redirect_to "/user/profile"
        else
            flash[:errors] = @setup.errors.full_messages            
            redirect_to "/setups/new"
        end
    end

    def edit
        @setup = Setup.find(params[:id])
        @parts = Part.all
        
        @graphiccards = @setup.all_graphics
        @cpus = @setup.all_cpus
        @mothers = @setup.all_mothers
        @rams = @setup.all_rams
        @ssds = @setup.all_ssds
        @powers = @setup.all_powers
        @monitors = @setup.all_monitors
        @mouses = @setup.all_mouses
        @keyboards = @setup.all_keyboards
        @towers = @setup.all_towers
        @fans = @setup.all_fans

        @graphic = @setup.graphics_object
        @cpu = @setup.processor_object
        @mother = @setup.mother_object
        @ram = @setup.ram_object
        @ssd = @setup.ssd_object
        @power = @setup.power_object
        @monitor = @setup.monitor_object
        @mouse = @setup.mouse_object
        @keyboard = @setup.keyboard_object
        @tower = @setup.tower_object
        @fan = @setup.fan_object
    end

    def update
        @setup = Setup.find(params[:id])
        @setup.update(name: params[:setup][:name])
        @setup.revise_setup(graphic: params[:graphic][:id], cpu: params[:cpu][:id], mother: params[:mother][:id], ram: params[:ram][:id], ssd: params[:ssd][:id], power: params[:power][:id], monitor: params[:monitor][:id], mouse: params[:mouse][:id], keyboard: params[:keyboard][:id], tower: params[:tower][:id], fan: params[:fan][:id])
        flash[:alert] = "Your setup has been revised!"
        redirect_to setup_path
    end

    def destroy
        #incomplete - need to not delete if confirm is 'no'
        @setup = Setup.find(params[:id])
        @setup.destroy
        flash[:alert] = "Your setup has been deleted!"
        redirect_to "/user/profile"
    end
end
