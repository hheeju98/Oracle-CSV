select ����,�߻��ڼ�
from CANCER1
where �߻��ڼ� =(
select MAX(�߻��ڼ�)
from CANCER1
where ���� not in('����(C00-C96)'));

select ����, rank() over (ORDER by �߻��ڼ� DESC)
from CANCER1
where ROWNUM <=5;

select ����,����
from (select ����, ����
from CANCER1
where ���� not in('����(C00-C96)'))
where ����>=10;

select ����, �߻��ڼ�
from CANCER1
where ����='������(C91-C95)'; 