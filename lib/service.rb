class Service
  attr_reader(:owner, :phone, :make, :model, :work)

  define_method(:initialize) do |attributes|
    @owner = attributes.fetch(:owner)
    @phone = attributes.fetch(:phone)
    @make = attributes.fetch(:make)
    @model = attributes.fetch(:model)
    @work = attributes.fetch(:work)
  end

  define_method(:owner) do
    @owner
  end
  define_method(:phone) do
    @phone
  end
  define_method(:make) do
    @make
  end
  define_method(:model) do
    @model
  end
  define_method(:work) do
    @work
  end
  
end
