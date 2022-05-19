select 암종,발생자수
from CANCER1
where 발생자수 =(
select MAX(발생자수)
from CANCER1
where 암종 not in('모든암(C00-C96)'));

select 암종, rank() over (ORDER by 발생자수 DESC)
from CANCER1
where ROWNUM <=5;

select 암종,분율
from (select 암종, 분율
from CANCER1
where 암종 not in('모든암(C00-C96)'))
where 분율>=10;

select 암종, 발생자수
from CANCER1
where 암종='백혈병(C91-C95)'; 