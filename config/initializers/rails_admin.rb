require 'dragonfly/rails/images'

RailsAdmin.config do |c|

  c.excluded_models = [RelTest]
  c.authenticate_with {}
  c.current_user_method { current_user }
  c.main_app_name = ['Zqgame', 'Navy']
  c.authorize_with :cancan
  c.audit_with :history, User

  c.actions do
    all # NB: comment out this line for RailsAdmin < 0.6.0
    charts
  end

  c.model Cms::BasicPage do
    visible false
  end
  c.model Comment do
    visible false
  end
  c.model Division do
    visible false
  end
  c.model Draft do
    visible false
  end
  c.model Fan do
    visible false
  end
  c.model FieldTest do
    visible false
  end
  c.model League do
    visible false
  end
  c.model Player do
    visible false
  end
  c.model Team do
    visible false
  end
  c.model User do
    visible false
  end
  c.model NestedFieldTest do
    visible false
  end

  c.model BraveBrigage::UserStar do
    exclude_fields :id,:created_at,:updated_at
  end
  c.model BraveBrigage::UserLogin do
    exclude_fields :id,:created_at,:updated_at
    export do
      field :number_of_lanes
    end
  
  end
  c.model BraveBrigage::UserSummary do
    exclude_fields :id,:created_at,:updated_at
  end
  c.model BraveBrigage::UserTrack do
    exclude_fields :id,:created_at,:updated_at
  end

  c.model SoulGuardian::UserStar do
    exclude_fields :id,:created_at,:updated_at
  end
  c.model SoulGuardian::UserLogin do
    exclude_fields :id,:created_at,:updated_at
  end
  c.model SoulGuardian::UserSummary do
    exclude_fields :id,:created_at,:updated_at
  end
  c.model SoulGuardian::UserTrack do
    exclude_fields :id,:created_at,:updated_at
  end

  c.model PocketKnight::UserStar do
    exclude_fields :id,:created_at,:updated_at
  end
  c.model PocketKnight::UserLogin do
    exclude_fields :id,:created_at,:updated_at
  end
  c.model PocketKnight::UserSummary do
    exclude_fields :id,:created_at,:updated_at
  end
  c.model PocketKnight::UserTrack do
    exclude_fields :id,:created_at,:updated_at
  end

  c.model CaptainHero::UserStar do
    exclude_fields :id,:created_at,:updated_at
  end
  c.model CaptainHero::UserLogin do
    exclude_fields :id,:created_at,:updated_at
  end
  c.model CaptainHero::UserSummary do
    exclude_fields :id,:created_at,:updated_at
  end
  c.model CaptainHero::UserTrack do
    exclude_fields :id,:created_at,:updated_at
  end

end
