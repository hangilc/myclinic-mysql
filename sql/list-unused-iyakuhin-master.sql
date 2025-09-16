select m.* from iyakuhin_master_arch as m left outer join (visit_drug as d join visit as v on d.visit_id = v.visit_id) 
  on m.iyakuhincode = d.d_iyakuhincode and m.valid_from <= date(v.v_datetime)
    and (m.valid_upto = '0000-00-00' or date(v.v_datetime) <= m.valid_upto) 
  where d.d_iyakuhincode is NULL and m.valid_upto <> '0000-00-00';