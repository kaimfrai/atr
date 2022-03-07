cd ../build/clang-release

ninja clean > /dev/null

std_time=$(\time -f "%e" ninja Std 2>&1  1>/dev/null)
echo "Time Std: ${std_time}"

type_erasue_time=$(\time -f "%e" ninja Boost.TypeErasure 2>&1  1>/dev/null)
echo "Time Boost.TypeErasure: ${type_erasue_time}"

dyno_time=$(\time -f "%e" ninja Dyno 2>&1  1>/dev/null)
echo "Time Dyno: ${dyno_time}"

polymorphic_time=$(\time -f "%e" ninja Polymorphic 2>&1  1>/dev/null)
echo "Time Polymorphic: ${polymorphic_time}"

atr_time=$(\time -f "%e" ninja ATR 2>&1  1>/dev/null)
echo "Time ATR: ${atr_time}"

evaluation_time=$(\time -f "%e" ninja Evaluation.Shared 2>&1  1>/dev/null)
echo "Time Evaluation.Shared: ${evaluation_time}"

crtp_time=$(\time -f "%e" ninja Evaluation.CRTP 2>&1  1>/dev/null)
echo "Time Evaluation.CRTP: ${crtp_time}"

echo ""

evaluation_virtual_time=$(\time -f "%e" ninja evaluation_virtual 2>&1  1>/dev/null)
echo "Time evaluation_virtual: ${evaluation_virtual_time}"

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
echo "Time evaluation_archetype: ${evaluation_archetype_time}"

evaluation_replication_time=$(\time -f "%e" ninja evaluation_replication 2>&1  1>/dev/null)
echo "Time evaluation_replication: ${evaluation_replication_time}"


cd ../../Evaluation
