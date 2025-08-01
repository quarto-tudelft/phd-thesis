function Pandoc(doc)
	-- Check if this document has chapter-level dedication metadata
	if doc.meta["dedication-chapter"] then
		local dedication = doc.meta["dedication-chapter"]
		local dedication_blocks = {}

		-- Add some vertical space
		table.insert(dedication_blocks, pandoc.RawBlock("latex", "\\vspace*{1cm}"))

		-- Start the dedication environment
		table.insert(dedication_blocks, pandoc.RawBlock("latex", "\\begin{flushright}"))

		-- Handle single dedication or multiple dedications
		if dedication.text then
			-- Single dedication
			local text = pandoc.utils.stringify(dedication.text)
			local author = pandoc.utils.stringify(dedication.author or "")

			table.insert(dedication_blocks, pandoc.RawBlock("latex", "\\textit{" .. text .. "}\\\\"))
			table.insert(dedication_blocks, pandoc.RawBlock("latex", "\\vspace{0.5cm}"))
			if author ~= "" then
				table.insert(dedication_blocks, pandoc.RawBlock("latex", "--- " .. author))
			end
		else
			-- Multiple dedications
			for i, ded in ipairs(dedication) do
				local text = pandoc.utils.stringify(ded.text)
				local author = pandoc.utils.stringify(ded.author or "")

				table.insert(dedication_blocks, pandoc.RawBlock("latex", "\\textit{" .. text .. "}\\\\"))
				table.insert(dedication_blocks, pandoc.RawBlock("latex", "\\vspace{0.5cm}"))
				if author ~= "" then
					table.insert(dedication_blocks, pandoc.RawBlock("latex", "--- " .. author .. "\\\\"))
				end
			end
		end

		-- End the dedication environment
		table.insert(dedication_blocks, pandoc.RawBlock("latex", "\\end{flushright}"))
		table.insert(dedication_blocks, pandoc.RawBlock("latex", "\\vspace{1cm}"))

		-- Insert the dedication blocks at the beginning of the document
		for i = #dedication_blocks, 1, -1 do
			table.insert(doc.blocks, 1, dedication_blocks[i])
		end
	end

	return doc
end
