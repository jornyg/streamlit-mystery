import streamlit as st

st.set_page_config(initial_sidebar_state ="expanded", page_title="Kontormysteriet", page_icon=":male-detective:")

st.sidebar.write("""
Datoen er 7. april 2025. Det er en kald mandag morgen og du møter opp på jobb som vanlig, men det tar ikke lang tid før du oppdager at noe er galt. Kontorsjefen Astrid har samlet alle ansatte til et hastemøte i auditoriet, ansiktet hennes er alvorlig.

"Som dere kanskje har lagt merke til," begynner hun, "mangler det noe viktig fra kontoret vårt. Verdifullt utstyr forsvant i løpet av helgen. Vi vet at ustyret ble anskaffet i år og er av fargen sort."

Hun ser utover rommet. "Siden politiet angivelig har viktigere ting å gjøre, har de bedt oss om å finne ut av dette selv."

Astrid peker på deg. "Du har tidligere vist gode evner til å løse problemer og tenke logisk. Kan du ta på deg å finne ut av dette? Vi trenger å vite både hva som er borte og hvem som står bak handlingen"

Bruk SQL til å finne ut av hva som er borte og hvem som står bak handlingen. 

Tips: Start med `select * from tabeller` for å se hva du har å jobbe med.
""")

def query_db(query, params=None):
    conn = st.connection('data_db', type='sql')
    result = conn.query(query, params=params)
    return result

if 'answer1_answered' not in st.session_state:
    st.session_state.answer1_answered = False

if 'query_result' not in st.session_state:
    st.session_state.query_result = None

# Skjema for spørring
query_form = st.form(key="query_form", clear_on_submit=False)

with query_form:
    query_text = st.text_area("SQL-spørring:")
    submitted_query = st.form_submit_button(label="Kjør")

if submitted_query:
    try:
        st.session_state.query_result = query_db(query_text)
    except Exception as e:
        st.error(f"En feil oppstod: {e}")

if st.session_state.query_result is not None:
    st.dataframe(
        st.session_state.query_result
    )

# Skjema for spørsmål 1
answer1_form = st.form(key="answer1_form", clear_on_submit=False)

with answer1_form:
    answer1_text = st.text_input("Hva er borte?")
    submitted_answer1 = st.form_submit_button(label="Svar")

if submitted_answer1:
    try:  
        res = query_db("""
            SELECT (
                    SELECT 1
                    FROM _losning
                    JOIN utstyr ON _losning.losning_id = utstyr.utstyr_id
                    WHERE spm_id = 1 AND utstyr.navn LIKE :answer
                ) AS riktig
            """, params={"answer": answer1_text})
    except Exception as e:
        st.error(f"En feil oppstod: {e}")

    if res['riktig'][0]:
        st.session_state.answer1_answered = True  
        st.success(f"Riktig! Finn svaret på spørsmålet under.")
    else:
        st.session_state.answer1_answered = False 
        st.warning(f"Feil svar. Prøv igjen.")

# Skjema for spørsmål 2
if st.session_state.answer1_answered:
    answer2_form = st.form(key="answer2_form", clear_on_submit=False)
    
    with answer2_form:
        answer2_text = st.text_input("Hvem står bak handlingen?")
        submitted_answer2 = st.form_submit_button(label="Svar")
    
    if submitted_answer2:
        try:  
            res = query_db("""
               SELECT (
                    SELECT 1
                    FROM _losning
                    JOIN ansatt ON _losning.losning_id = ansatt.ansatt_id
                    WHERE spm_id = 2 AND ansatt.navn LIKE :answer
                ) AS riktig
                """, params={"answer": answer2_text})
        except Exception as e:
            st.error(f"En feil oppstod: {e}")
        
        if res["riktig"][0]:
            st.success(f"Bra jobba! Han ville bare overraske de andre med langtidstraktet påskekaffe. Meen det tok litt lengre tid enn antatt og han rakk ikke å komme på kontoret før de andre. Kaffetrakteren er nå tilbake på plassen sin og alle er fornøyd!")
            st.balloons()
        else:
            st.warning(f"Feil svar. Prøv igjen.")