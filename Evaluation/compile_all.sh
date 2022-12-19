cd ../build/Evaluation

ninja clean > /dev/null

echo ""
echo "Library Times:"

std_time=$(\time -f "%e" ninja Std 2>&1  1>/dev/null)
echo "Time Std: $(echo ${std_time} | bc)"

type_erasue_time=$(\time -f "%e" ninja Evaluation.TypeErasure.Library 2>&1  1>/dev/null)
echo "Time TypeErasure: $(echo ${type_erasue_time} | bc)"

dyno_time=$(\time -f "%e" ninja Evaluation.Dyno.Library 2>&1  1>/dev/null)
echo "Time Dyno $(echo ${dyno_time} | bc)"

polymorphic_time=$(\time -f "%e" ninja Evaluation.Polymorphic.Library 2>&1  1>/dev/null)
echo "Time Polymorphic: $(echo ${polymorphic_time} | bc)"

meta_time=$(\time -f "%e" ninja Meta 2>&1  1>/dev/null)
echo "Time Meta: $(echo ${meta_time} | bc)"

atr_time=$(\time -f "%e" ninja ATR 2>&1  1>/dev/null)
echo "Time ATR: $(echo ${atr_time} | bc)"

evaluation_time=$(\time -f "%e" ninja Evaluation.Shared 2>&1  1>/dev/null)
echo "Time Shared: $(echo ${evaluation_time} | bc)"

crtp_time=$(\time -f "%e" ninja Evaluation.CRTP 2>&1  1>/dev/null)
echo "Time CRTP: $(echo ${crtp_time} | bc)"

echo ""
echo "Executable Times:"

evaluation_virtual_time=$(\time -f "%e" ninja evaluation_virtual 2>&1  1>/dev/null)
echo "Time evaluation_virtual: $(echo ${evaluation_virtual_time} | bc)"

evaluation_any_time=$(\time -f "%e" ninja evaluation_any 2>&1  1>/dev/null)
echo "Time evaluation_any: $(echo ${evaluation_any_time} + ${crtp_time} | bc)"

evaluation_polymorphic_time=$(\time -f "%e" ninja evaluation_polymorphic 2>&1  1>/dev/null)
echo "Time evaluation_polymorphic: $(echo ${evaluation_polymorphic_time} + ${crtp_time} | bc)"

evaluation_type_erasure_time=$(\time -f "%e" ninja evaluation_type_erasure 2>&1  1>/dev/null)
echo "Time evaluation_type_erasure: $(echo ${evaluation_type_erasure_time} + ${crtp_time} | bc)"

evaluation_dyno_time=$(\time -f "%e" ninja evaluation_dyno 2>&1  1>/dev/null)
echo "Time evaluation_dyno: $(echo ${evaluation_dyno_time} + ${crtp_time} | bc)"

evaluation_variant_time=$(\time -f "%e" ninja evaluation_variant 2>&1  1>/dev/null)
echo "Time evaluation_variant: $(echo ${evaluation_variant_time} + ${crtp_time} | bc)"

evaluation_archetype_time=$(\time -f "%e" ninja evaluation_archetype 2>&1  1>/dev/null)
echo "Time evaluation_archetype: $(echo ${evaluation_archetype_time} | bc)"

evaluation_replication_time=$(\time -f "%e" ninja evaluation_replication 2>&1  1>/dev/null)
echo "Time evaluation_replication: $(echo ${evaluation_replication_time} | bc)"


cd ../../Evaluation
