require("spec_helper")

   describe(Service) do
     describe(".all") do
        it("starts off with no sevices") do
          expect(Service.all()).to(eq([]))
        end
      end
     describe("#owner") do
      it("returns the car Owner's name") do
        test_service = Service.new({:owner=> "Mike",:id => nil :phone => "+25471234432",
          :make => "Toyota", :model => "Prius", :services => "Bodywork"})
        expect(test_service.owner()).to(eq("Mike"))
      end
    end
    describe("#id") do
     it("returns the car Owner's name") do
       test_service = Service.new({:owner=> "Mike",:id => nil :phone => "+25471234432",
         :make => "Toyota", :model => "Prius", :services => "Bodywork"})
       expect(test_service.id()).to(e_an_instance_of(Fixnum))
     end
   end
    describe("#phone") do
     it("returns the car Owner's Phone no.") do
       test_service = Service.new({:owner=> "Mike",:id => nil :phone => "+25471234432",
         :make => "Toyota", :model => "Prius", :services => "Bodywork"})
         expect(test_service.phone()).to(eq("+25471234432"))
       end
     end
     describe("#make") do
      it("returns the car make") do
        test_service = Service.new({:owner=> "Mike",:id => nil :phone => "+25471234432",
          :make => "Toyota", :model => "Prius", :services => "Bodywork"})
          expect(test_service.make()).to(eq("Toyota"))
        end
      end
    describe("#model") do
     it("returns the car model") do
       test_service = Service.new({:owner=> "Mike",:id => nil :phone => "+25471234432",
         :make => "Toyota", :model => "Prius", :services => "Bodywork"})
         expect(test_service.model()).to(eq("Prius"))
       end
     end
   describe("#work") do
    it("returns the service works") do
      test_service = Service.new({:owner=> "Mike",:id => nil :phone => "+25471234432",
        :make => "Toyota", :model => "Prius", :services => "Bodywork"})
        expect(test_service.work()).to(eq("Bodywork"))
      end
    end
    describe("#save") do
      it("lets you save services to the database") do
        service = Service.new({:owner=> "Mike",:id => nil :phone => "+25471234432",
          :make => "Toyota", :model => "Prius", :services => "Bodywork"})
        service.save()
        expect(Service.all()).to(eq([service]))
      end
    end
    describe("#==") do
      it("is the same service if it has the same name") do
        service1 = Service.new({:owner=> "Mike",:id => nil :phone => "+25471234432",
          :make => "Toyota", :model => "Prius", :services => "Bodywork"})
        service2 = Service.new({:owner=> "Mike",:id => nil :phone => "+25471234432",
          :make => "Toyota", :model => "Prius", :services => "Bodywork"})
        expect(service1).to(eq(service2))
      end
    end
   end
