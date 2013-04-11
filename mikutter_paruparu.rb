# -*- coding: utf-8 -*-

Plugin.create(:mikutter_paruparu) do
    def paruparu
        paru = String.new
        (rand(70)+1).times do
            paru << 'ぱる'
        end
        Post.primary_service.update(:message => paru )
    end

    on_appear do |msg|
        msg.each do |m|
            paruparu if /妬/ =~ m.to_s
        end
    end
end
