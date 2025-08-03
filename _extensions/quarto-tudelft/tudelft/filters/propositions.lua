function Meta(meta)
	if meta.propositions then
		local propositions_file = pandoc.utils.stringify(meta.propositions)

		-- Read the propositions file
		local file = io.open(propositions_file, "r")
		if file then
			local content = file:read("*all")
			file:close()

			-- Process the content through Pandoc to convert Markdown to LaTeX
			local doc = pandoc.read(content, "markdown")
			local latex_content = pandoc.write(doc, "latex")

			-- Set the processed content as a template variable
			meta.propositions = pandoc.RawBlock("latex", latex_content)
		else
			-- Handle file not found
			meta.propositions = pandoc.RawBlock("latex", "% Propositions file not found: " .. propositions_file)
		end
	end

	return meta
end
