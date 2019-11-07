defmodule Brutos.Query.Transmission.Find do 
    import Ecto.Query
    alias Brutos.Transmission

    def find_by_id(ref_id) do 
        from transmission in Transmission, 
        where: transmission.ref_id == ^ref_id
    end
end