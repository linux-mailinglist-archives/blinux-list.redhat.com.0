Return-Path: <blinux-list+bncBCHY5TMQ6YERB2EU5GYQMGQEOX6UA2I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D60E8BE78A
	for <lists+blinux-list@lfdr.de>; Tue,  7 May 2024 17:36:11 +0200 (CEST)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5b203740f80sf4092885eaf.3
        for <lists+blinux-list@lfdr.de>; Tue, 07 May 2024 08:36:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715096170; cv=pass;
        d=google.com; s=arc-20160816;
        b=DIfnG3bumqM6ymQ+9oJPG9kcs7KFfXgdF5F2JQBoxMHsMp6Twoo3vlIZtDuCa7Wae7
         5bZkqt0NLLAkAId9dCOXfAtvbjF98L0j39qYWOJ0yg0VU87PX3oIR92qsPdFXlZYnM2I
         aohD08SKplqouv0ZUUk+mymPt9mw6P5p4nUVzR8By2S8vTN5aXDGnQHAQOHsC1wYsM/X
         HZgT6H04lya5gavPAxHsatx0DEQpCUjMt1JbyTgXxWDtVFqEjvvlVuOr1RXbWGm5G1SB
         nkwjRhwJGNVf/mkY74d9FvaEzY/ACZkVOIesClxwj5XuKvsy5ZIQg6ZIvtqpcSp6YyaI
         bzEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=c0yi6PPhY8iyi/gqTgSTLRnJ2ENwCeuKzB0o36uYll8=;
        fh=3OOr2vR9A8+swuLRA+qYKPbizD/RbLiBrEQ7NwsSQgE=;
        b=XWTuxRGrmP4ho5/8Ee3M/HqJBkFeqV6PHRjjoNFc4A/DRguKHoAROGbRIOlnP/uC/r
         59S4U2YRQLQFmBVgGmfZNWXr/Ectcv8IwYnmcnXl7g1qy7RmlACTtw95eS+5k7lVA6wj
         h85w/rAXlsqLJwvCSgZGaZGiCSN2Of3eZhtOXxf1ozRrDrbIw0Xcit1WhWE38fWa9t0B
         BhLTyLZVS9frzNp7xgHoSG7bGZZKxYr3p/QSCmTahpauO2mEfD3qkMb9btWjI1N6DhzY
         xsPGqxRMXNaxMJ3a6wyr66p4y7YhZXDoSqbPvvZlnCjwpIoExq3AMA6ie4aZtzOR7Msc
         uY0A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715096170; x=1715700970;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c0yi6PPhY8iyi/gqTgSTLRnJ2ENwCeuKzB0o36uYll8=;
        b=etUJ9PAiU2Fj8LHxvDBIaxCMHTo84vvRAVzr8oJ7FIWNDqrbCUS4AKLHVtsnskO2NB
         lN5EZwnkSBEFUcUwiE0aHUqryJBQ1V6PA2BU0/dzbodQNrRVD2eeXgcYQLDv6sQ9FwbY
         4s0q355v/w4K8RX6FXLxDYnWnEq2qgxtRM1g5f94ruc+fdj9DAMO/AtwPd4iq97mEBV1
         OqfPd130MC+ObFdpBW1rbEvhxhzO5Yr7rfgzaEB5lm7DKH1rUOGFQn+SyVVH53NDPIqA
         DvXtoXirCzztMu0Yx6iOVk/xeLbllnM6pYVuPUXpGyAgORem1xHThp6QafD7gXvMjd+J
         1qNA==
X-Forwarded-Encrypted: i=2; AJvYcCUmb2HpjIklwT1SUblmPGwEPn62FEeSMocFi2tl7giZ9kIz8zkmY9g42nLZEKvIcI+YjeB7Xf0ed2c3+znodCxWzd3TpFj6gyMl
X-Gm-Message-State: AOJu0Yy11VdpKN20fW38OGYwRUuSAKsysSRdsB6wV1ErdaymvS8ws5sq
	FIQoAU5nI0m6WG6JFCJmGRUERVLpiL07nTZifkZNI8uImENh/N57G7rA18NljiM=
X-Google-Smtp-Source: AGHT+IGoQATvESG2ckH3NyY7zsL/Qa+Nq3hEQD7I+/cTfM723X76otq1437owl/TZCt3NDEf62+/Jg==
X-Received: by 2002:a05:6358:c029:b0:186:c06f:437a with SMTP id e5c5f4694b2df-192d367cfa3mr6772255d.28.1715096168692;
        Tue, 07 May 2024 08:36:08 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1a05:b0:43a:4dea:1acf with SMTP id
 d75a77b69052e-43ca75eba9fls8175401cf.0.-pod-prod-01-us; Tue, 07 May 2024
 08:36:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXWBB7TwKCWfQ7lnhrzF7YSn0HLEcVE6n1yPgE1sqYHo8EfgaDMaOXRomsFpPza6RaRMmeTCB8OANSwQwMXzg79YfLACf5BuKv32UAY
X-Received: by 2002:a05:620a:800d:b0:790:ec49:b679 with SMTP id af79cd13be357-792b27dc52emr2161785a.23.1715096167095;
        Tue, 07 May 2024 08:36:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1715096167; cv=none;
        d=google.com; s=arc-20160816;
        b=IlugFVS343RqBkuXMkS+mGvXQZYLtolJ1Jl3WWG9sPPNdnBsInmSvYYxSPVCm1ZpQe
         VqmrneXOYxNdUwI8DfMBEGe5WRwDTgGba8Y3XuU3qQcXxwyovPvpqKvtPM7YWN2GyoDd
         HPTDEaJSMPx94AjmqtUU4xkhOyEwk57aq5i8aSgU/MsLqz/zyiAhc1BKVUaY67ag8CeQ
         E0U8hbIJUN8I6ucc5hfCLe3KiFIAtf3gE5Xw6YbUtmyHKbU+xv5tlbryq43ZXXzdmlJi
         77GRMgOEMW8W3uBB6yxjkPceBj18PLabycNBrsGVlfSyTy/Fu6dCCWTIZPTR4mUmuPWh
         mLTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=iaTUMDli6EwiHQHQHPl4D/IWCK0KHLIXxn82B/BNfns=;
        fh=x03oKV0ON9VCn8ATqg7XyUNKdWmb3T5hF846lrBhrsY=;
        b=HyjdxYYJK/K27UQTD3MGdP85GY8XsplmTbZB5C1+05lCZPQH0bUjCR4wLYoP/00H4q
         +7Z1Qq8jePehL8u1KJ3FKQbL5+QJh3lY5cwAyzsxeHNf/q5zXmXb5k6P1eSNSxcozFMd
         6n1LQhsxitLmpf8K8QZXhr13HviSV6WdbysMSzTRpN0CDpdWq2axy3lXqdsGP5HSQdnn
         N0vv4A/+FtpEOvimTW9djsxyOvXVcBXGK6ZRX1/ipbJoyfF5cr1EluNg0ht/hy5Ae3Nq
         FUQTBQY0iId6IR4E1XN/MhaqHxlaBTqg5tNOWQLRL8J5v7hG9hj3TOTXSYWhanvNP2E+
         N4ng==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id b2-20020a05620a0f8200b007908ab233ccsi8756337qkn.404.2024.05.07.08.36.05
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 08:36:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-335-tyxpi0DeP3CpwzG88Ji7bw-1; Tue,
 07 May 2024 11:36:04 -0400
X-MC-Unique: tyxpi0DeP3CpwzG88Ji7bw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A878E3C3D0CD
	for <blinux-list@gapps.redhat.com>; Tue,  7 May 2024 15:36:03 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id A54681C060AE; Tue,  7 May 2024 15:36:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C19A1C00B17
	for <blinux-list@redhat.com>; Tue,  7 May 2024 15:36:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 17B3A801189
	for <blinux-list@redhat.com>; Tue,  7 May 2024 15:36:03 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-582-DWseOkrSMzyjPhK8NgRq5w-1; Tue, 07 May 2024 11:35:54 -0400
X-MC-Unique: DWseOkrSMzyjPhK8NgRq5w-1
Received: from [192.168.1.20] (178-75-190-98.bb.dnainternet.fi [178.75.190.98])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id B37C74111B;
	Tue,  7 May 2024 18:35:46 +0300 (EEST)
Message-ID: <d18e00f8-3461-46b3-a4b4-7d2d59c61347@harrastenurkka.fi>
Date: Tue, 7 May 2024 18:35:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [orca] Re: lost website linux accessibility
To: orca@freelists.org, Francesco Tissera <francescotissera1211@gmail.com>
Cc: blinux-list@redhat.com
References: <f2d2325e-636a-437d-a489-b2a2fe6fec7a@harrastenurkka.fi>
 <CAL9unEtZYVaSFOLjJ4LRqXceNte4xDv=F=BZnZ5smYn37AELBA@mail.gmail.com>
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
In-Reply-To: <CAL9unEtZYVaSFOLjJ4LRqXceNte4xDv=F=BZnZ5smYn37AELBA@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: harrastenurkka.fi
Content-Type: multipart/alternative;
 boundary="------------eMgEkx1jHnkirL0ieqcRiLRc"
Content-Language: en-US
X-Original-Sender: elias.stahlberg@harrastenurkka.fi
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as
 permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Original-From: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Reply-To: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

This is a multi-part message in MIME format.
--------------eMgEkx1jHnkirL0ieqcRiLRc
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Thanks, that's exactly what I meant.

On 5/7/24 18:15, Francesco Tissera wrote:
> Hello there,
>
> Are you maybe talking about
> https://nashcentral.duckdns.org/projects.html
> and the CamOCR script?
>
> Thanks and kind regards,
>
> Francesco Tissera.
>
>
> On Tue, May 7, 2024 at 5:05=E2=80=AFPM Elias St=C3=A5hlberg=20
> <dmarc-noreply@freelists.org> wrote:
>
>     hi
>
>     Does anyone remember a website where you could download a kind of
>     realtime ocr script, it used your computer's webcam and this person
>     =C2=A0=C2=A0 had been able to install e.g. proxmox independently with=
 it. There
>     was other Linux stuff on the site, among other things,
>     instructions for
>     installing waydroid and android with talkback support
>
>     Elias
>
>     _______________________________________________
>     Orca mailing list
>     orca@freelists.org
>     https://www.freelists.org/list/orca
>     General information: https://orca.gnome.org
>     Orca documentation (English):
>     https://gnome.pages.gitlab.gnome.org/orca/help/
>     Orca documentation (translations):
>     https://gnome.pages.gitlab.gnome.org/orca/
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--------------eMgEkx1jHnkirL0ieqcRiLRc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>Thanks, that's exactly what I meant.<br>
    </p>
    <div class=3D"moz-cite-prefix">On 5/7/24 18:15, Francesco Tissera
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAL9unEtZYVaSFOLjJ4LRqXceNte4xDv=3DF=3DBZnZ5smYn37AELBA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
      <div dir=3D"ltr">
        <div>Hello there,</div>
        <div><br>
        </div>
        <div>Are you maybe talking about <br>
        </div>
        <div><a href=3D"https://nashcentral.duckdns.org/projects.html"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https:=
//nashcentral.duckdns.org/projects.html</a></div>
        <div>and the CamOCR script?</div>
        <div><br>
        </div>
        <div>Thanks and kind regards,</div>
        <div><br>
        </div>
        <div>Francesco Tissera.<br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 7, 2024 at 5:05=
=E2=80=AFPM
          Elias St=C3=A5hlberg &lt;<a
            href=3D"mailto:dmarc-noreply@freelists.org"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">dmarc-=
noreply@freelists.org</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">hi<br>
          <br>
          Does anyone remember a website where you could download a kind
          of <br>
          realtime ocr script, it used your computer's webcam and this
          person<br>
          =C2=A0=C2=A0 had been able to install e.g. proxmox independently =
with
          it. There <br>
          was other Linux stuff on the site, among other things,
          instructions for <br>
          installing waydroid and android with talkback support<br>
          <br>
          Elias<br>
          <br>
          _______________________________________________<br>
          Orca mailing list<br>
          <a href=3D"mailto:orca@freelists.org" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">orca@f=
reelists.org</a><br>
          <a href=3D"https://www.freelists.org/list/orca" rel=3D"noreferrer=
"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://www.freelists.org/list/=
orca</a><br>
          General information: <a href=3D"https://orca.gnome.org"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://orca.gnome.org</a><br>
          Orca documentation (English): <a
            href=3D"https://gnome.pages.gitlab.gnome.org/orca/help/"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://gnome.pages.gitlab.gnom=
e.org/orca/help/</a><br>
          Orca documentation (translations): <a
            href=3D"https://gnome.pages.gitlab.gnome.org/orca/"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://gnome.pages.gitlab.gnom=
e.org/orca/</a><br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--------------eMgEkx1jHnkirL0ieqcRiLRc--

