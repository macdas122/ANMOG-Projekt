class MainSearchTerm
    attr_reader :where_clause, :where_args, :order
    def initialize(search_term)
        search_term = search_term.downcase
        @where_clause = ""
        @where_args ={}
        build_for_name_search(search_term)
    end

    private

        def build_for_name_search(search_term)
            @where_clause << case_insensitive_search(:drug_name)
            @where_args[:drug_name] = starts_with(search_term)

            @where_clause << " OR #{case_insensitive_search(:brand_name)}"
            @where_args[:brand_name] = starts_with(search_term)

            @where_clause << " OR #{case_insensitive_search(:manufacturer)}"
            @where_args[:manufacturer] = starts_with(search_term)

            @where_clause << " OR #{case_insensitive_search(:field_of_application)}"
            @where_args[:field_of_application] = starts_with(search_term)

            @where_clause << " OR #{case_insensitive_search(:indication)}"
            @where_args[:indication] = starts_with(search_term)

            @order = "drug_name asc"
        end

        def starts_with(search_term)
            search_term + "%"
        end

        def case_insensitive_search(field_name)
            "lower(#{field_name}) like :#{field_name}"
        end
end
