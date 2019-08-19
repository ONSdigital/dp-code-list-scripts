CREATE CONSTRAINT ON (n:`_code_decades`) ASSERT n.code IS UNIQUE;
CREATE CONSTRAINT ON (n:`_code_list_decades`) ASSERT n.code IS UNIQUE;
CREATE (node:`_code_list`:`_code_list_decades` { label:"decade", edition:"one-off" });
MERGE (node:`_code`:`_code_decades` { value:"1960s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1960s" }) MERGE (node)-[:usedBy { label:"1960s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1970s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1970s" }) MERGE (node)-[:usedBy { label:"1970s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1980s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1980s" }) MERGE (node)-[:usedBy { label:"1980s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1990s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1990s" }) MERGE (node)-[:usedBy { label:"1990s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1950s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1950s" }) MERGE (node)-[:usedBy { label:"1950s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1940s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1940s" }) MERGE (node)-[:usedBy { label:"1940s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1930s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1930s" }) MERGE (node)-[:usedBy { label:"1930s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1920s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1920s" }) MERGE (node)-[:usedBy { label:"1920s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1910s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1910s" }) MERGE (node)-[:usedBy { label:"1910s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1900s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1900s" }) MERGE (node)-[:usedBy { label:"1900s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"2060s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"2060s" }) MERGE (node)-[:usedBy { label:"2060s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"2070s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"2070s" }) MERGE (node)-[:usedBy { label:"2070s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"2080s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"2080s" }) MERGE (node)-[:usedBy { label:"2080s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"2090s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"2090s" }) MERGE (node)-[:usedBy { label:"2090s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"2050s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"2050s" }) MERGE (node)-[:usedBy { label:"2050s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"2040s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"2040s" }) MERGE (node)-[:usedBy { label:"2040s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"2030s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"2030s" }) MERGE (node)-[:usedBy { label:"2030s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"2020s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"2020s" }) MERGE (node)-[:usedBy { label:"2020s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"2010s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"2010s" }) MERGE (node)-[:usedBy { label:"2010s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"2000s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"2000s" }) MERGE (node)-[:usedBy { label:"2000s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1860s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1860s" }) MERGE (node)-[:usedBy { label:"1860s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1870s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1870s" }) MERGE (node)-[:usedBy { label:"1870s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1880s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1880s" }) MERGE (node)-[:usedBy { label:"1880s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1890s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1890s" }) MERGE (node)-[:usedBy { label:"1890s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1850s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1850s" }) MERGE (node)-[:usedBy { label:"1850s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1840s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1840s" }) MERGE (node)-[:usedBy { label:"1840s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1830s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1830s" }) MERGE (node)-[:usedBy { label:"1830s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1820s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1820s" }) MERGE (node)-[:usedBy { label:"1820s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1810s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1810s" }) MERGE (node)-[:usedBy { label:"1810s"}]->(parent);
MERGE (node:`_code`:`_code_decades` { value:"1800s" });
MATCH (parent:`_code_list`:`_code_list_decades`),(node:`_code`:`_code_decades` { value:"1800s" }) MERGE (node)-[:usedBy { label:"1800s"}]->(parent);


