module Serve
  class Pipeline
    class Context
      def initialize(root_path, request, response)
        @root_path, @request, @response = root_path, request, response
        @custom_design = BwdMock::MockBrownWebsites.new
        @domain = "somedomain.com"
        @user = BwdMock::MockUser.new
        @content = ''
        install_view_helpers
      end
    end
  end
end

module BwdMock
  class MockBrownWebsites
    def image(image)
      "/images/#{image}"
    end

    def stylesheet
      "screen.css"
    end

    def partial(name)
      name
    end
  end

  class MockUser
    def setting
      MockSetting.new
    end

    def name
      "Jess Brown"
    end


  end

  class MockSetting
    def company
      "Company Name"
    end

    def phone
      "770-266-5849"
    end

    def fax
      "770-266-5850"
    end

    def address
      "1390 Giles Rd."
    end

    def address
      ""
    end

    def city
      "Monroe"
    end

    def state
      "GA"
    end

    def zip
      "30655"
    end
  end
end
