FROM postgres:9.4
MAINTAINER Arthur Burkart <artburkart@gmail.com>

RUN apt-get update \
  && apt-get install -y g++ make git ruby ruby-dev libpq-dev postgresql-server-dev-9.4 \
  && rm -rf /var/lib/apt/lists/* \
  && gem install bundler \
  && gem install gitrob

COPY start.sh /start.sh
COPY accept_agreement.rb /accept_agreement.rb
COPY .gitrobrc /root/.gitrobrc

CMD ["/start.sh"]
