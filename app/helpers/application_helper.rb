module ApplicationHelper


    def no_beds
      [
        [1,1],
        [2,2],
        [3,3],
        [4,4],
        [5,5],
        [6,6]
      ]
    end

    def no_baths
      [
        [1,1],
        [1.5,1.5],
        [2,2],
        [2.5,2.5],
        [3,3],
        [3.5,3.5],
        [4,4],
        [4.5,4.5],
        [5,5]
      ]
    end

    def building_types
      [
        ["House","House"],
        ["Condo","Condo"],
        ["Townhouse","Townhouse"],
        ["Apartment","Apartment"],
        ["Mobile Home","Mobile Home"]
      ]
    end

    def parking_types
      [
        ["Garage Parking Available","Garage Parking Available"],
        ["Permit Parking Available","Permit Parking Available"],
        ["Street Parking Available","Street Parking Available"],
        ["No Parking Available","No Parking Available"]
      ]
    end

    def statuses
      [
        ["For Rent","For Rent"],
        ["For Sale","For Sale"],
        ["Foreclosed","Foreclosed"],
        ["New Construction","New Construction"]
      ]
    end





end
