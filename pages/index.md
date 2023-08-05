---
layout: default
post_list: false
toc: false
comment: false
home_btn: true
btn_text: true
footer: true
highlight: false
permalink: /
---

# TOWER OF BABEL FOR THE IGNORANT

<br>
 (๑•̀ㅂ•́)و✧

**Being interested or not is the most important thing for me; it can be said to be my everything in life.**

## Quick Access

<tr>
    <td>
        <ul>
            {% if site.collection_order %}
                {% for col_in_order in site.collection_order %}
                    {% for collection in site.collections %}
                        {% if collection.label == col_in_order %}
                            {% for post in collection.docs %}
                                {% if post.publish != false %}
                                   {% if post.highlight == true %}
                                    <li>
                                        <a class="a_title" href="{{site.url}}{{site.baseurl}}{{post.url}}">{{post.title}}</a>
                                    </li>
                                    {% endif %}
                                {% endif %}
                            {% endfor %}
                        {% endif %}
                    {% endfor %}
                {% endfor %}
            {% else %}
                {% for collection in site.collections %}
                    <p class="h_collection_label">
                        {% if collection.alias %}
                            {{collection.alias}}
                        {% else %}
                            {{collection.label}}
                        {% endif %}
                    </p>
                    {% for post in collection.docs %}
                        {% if post.publish != false %}
                            <li>
                                <a class="a_title" href="{{site.url}}{{site.baseurl}}{{post.url}}">{{post.title}}</a>
                            </li>
                        {% endif %}
                    {% endfor %}
                {% endfor %}
            {% endif %}
        </ul>
    </td>
</tr>



## Quotes of the lifetime

**“The unexamined life is not worth living.”**
  - Socrates

**“I am the wisest man alive, for I know one thing, and that is that I know nothing.”**
  - Plato, The Republic

**Knowing yourself is the beginning of all wisdom.**
  - Aristotle

**“The reading of all good books is like conversation with the finest men of past centuries.”**
  - René Descartes

**“No man ever threw away life while it was worth keeping.”**
  - David Hume, Essays on Suicide and the Immortality of the Soul

**“We are not rich by what we possess but by what we can do without.”**
  - Immanuel Kant

**“Nothing great in the world was accomplished without passion.”**
  - Georg Wilhelm Friedrich Hegel

**“We should consider every day lost on which we have not danced at least once.“**
  - Friedrich Wilhelm Nietzsche

**“Anyone can achieve their fullest potential, who we are might be predetermined, but the path we follow is always of our own choosing. We should never allow our fears or the expectations of others to set the frontiers of our destiny. Your destiny can't be changed but, it can be challenged. Every man is born as many men and dies as a single one.”**
  - Martin Heidegger

**“Do not fear to be eccentric in opinion, for every opinion now accepted was once eccentric.”**
  - Bertrand Russell

**“Q- What makes you depressed?<br>A- Seeing stupid people happy.”**
  - Slavoj Žižek