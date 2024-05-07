Return-Path: <blinux-list+bncBCHY5TMQ6YERBX4X5GYQMGQEUWXQPUA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF448BE797
	for <lists+blinux-list@lfdr.de>; Tue,  7 May 2024 17:42:26 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6a0cf23b982sf44126806d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 07 May 2024 08:42:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715096545; cv=pass;
        d=google.com; s=arc-20160816;
        b=RsvHDZtgvb6nArbWCWz3Pyiu9k4MEz+4bsqYV1oJBULn9BtSQXZYs4Mg5m1GSl2y8E
         IO2aC2ysSrRiLUQXHXc6DrzyjiVrx6xzesJlKy6ZfywPsbIRQ69MCl9DQmOEuVfwqnmi
         lhZxS7h87lFi/2Ie8S2P7YE77iJhRzIZCbNOKacPDvvcnyD2ierSp+YDG5N7LEvrm7DW
         6XprCuOJgjkeo54oV5d0h9lwf85iidFVDhOuqhYX7ilxDEiR5GIq4Zv7cx04HYPKKBQh
         wdnczCrmSjpKSyJ+V2LSCbCtc/Ef63I/xhLr+wdC1sCYl9R5zP2hk1yz8I0c6QJ4Cble
         2e0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=f03y+51aJRLK0UgJlyrrb0vQY/WLb/s9Qx6pUjWOTn0=;
        fh=GhzRfWlNMFIKwX/BqWeW6w7zDAA3iDmPHU1LkftBHZo=;
        b=aS9DdiUafwBi6YyIvhUJc+ATnCRNyaPLjiU2l72zPG7+5uCNszdc4HKJkofuIx4f/K
         PhIHG55rbmjFjPEOZt5HjUHc5Hf65CltDmnWeqYtHaQk1P7s+C4LcLqyN0uUyFoBXOH6
         7gmW6zkvXTl8hdKpco2PzcAtEzIlloT0CVZn5jwrxMwzR6UNjMFRR8vANmy6ULJ8q3Df
         HIzcUnSUXbsTDfvhhB9Ylj//NGKJN4yMArdK7fNN7RrzoHNDm+dmFolp0fG7MhkyCmQa
         Eg5MvnqgTXMh4iztuG0Yb+KO+K0GMOMUUlOsulZzSCfPQcPmti4c0vg/+fzxuE5SNlEb
         C5eA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715096545; x=1715701345;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f03y+51aJRLK0UgJlyrrb0vQY/WLb/s9Qx6pUjWOTn0=;
        b=ZfMrj7xuJy+YVROfa9eadQNmOja4ljtrvfvOTtrR8HIxp/T+ZGZmLBGYODzYy4bDSJ
         D2s21bOi4GDivo1MfjSDtbe6On1ASjdgxsnmI1osxjs1VJbepNwHwCHb+uYMxa982M1S
         i3X54umCeQwixW+SSSh5QsN7PRKDhoAJV5gfsK27T89E4gny+As6E1DOG+hh5Ae10Wym
         6mLXLO6P+AbuBE9qMBu74Z29r8Q38M/WPSDDUrux6tocUG4j9OQfVjKtCNyb3d34vDS9
         KhVELujUTC+I2g4QHtLmWHQIqjCoPYqHk4TaJLI/xQfnbWpLvKxU15LB5OlrwtxpJQPk
         6KlA==
X-Forwarded-Encrypted: i=2; AJvYcCWQc3Mjy0C4N/5fo8xGVDDSFf22ahwtEszNPaUdUTm+5uX06jMnY2fTadauMFN+iWowKPY3ScJoxEak+kW38AsrxlZaQeoVeMtQ
X-Gm-Message-State: AOJu0Yx9JXyNKjWlUb3mQR7JOUM8EPsnP84Em4ZK2E62bqELYJqbsYgN
	3PBHnEZuxtPnG/8vwUmcETxLWfmEh3m92/Zu9bjZl0xBqdoM6zE/kEw6uCMN2F0=
X-Google-Smtp-Source: AGHT+IGjv3cxbYwOP2Qa+KOZL+vX9PTV0W5rEZn26Ao6OklaezRFQ43hbj9YDrwN4cG3GXtdIHHnYA==
X-Received: by 2002:a05:6214:1246:b0:6a0:6545:2306 with SMTP id 6a1803df08f44-6a1514e92e3mr1862386d6.28.1715096545027;
        Tue, 07 May 2024 08:42:25 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1d02:b0:6a0:e152:6b47 with SMTP id
 6a1803df08f44-6a0fefc877als104008936d6.1.-pod-prod-09-us; Tue, 07 May 2024
 08:42:23 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWHiEUtGmkSVg3uGzmIcVylFy0m/IAsMQrc2EY2W/eD5qZnry/Z7kEwxHcmRQPcuQo7uglTUdWyQ9eAX0CJ9o4jfSgbtVRCgKbyp8Xi
X-Received: by 2002:a05:6214:1246:b0:6a0:6545:2306 with SMTP id 6a1803df08f44-6a1514e92e3mr1861356d6.28.1715096542964;
        Tue, 07 May 2024 08:42:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1715096542; cv=none;
        d=google.com; s=arc-20160816;
        b=gNeXUKEtF18dzBq/CRSENANKpA7EG/cL0yyZXGQz2uAWKJxbqzrRkXj7F3op+7tzzu
         MYKDgwnvd9UoeWxCoFViC4uNmRDFu9xEzr/KyeCvCL9vzENINltO4Y901O8CJsSccCxQ
         qTqBnlm2YUZvScYH7jQkp6K3UFTZzlrQYJdJMcnVRxR+uVn51TPqE4FjV1MrlKv50cIo
         mdIlr0jc6v6Ku0008FJb+UWnqaEysZxVeMP3Mj1wW52ZEaCDtiiMMuXX3FDPNULYGjI1
         UhFH2yU7UsP0OHLa0LcnG4mCJ8tWi1AcSW0f1MJT22ic4Sjz9YBv3rfg5/rQGhFVWzWR
         4Tmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=oelNvYTj6hHQk/6v4aMjuAw36yfLYZjFcULYx5emlVo=;
        fh=x03oKV0ON9VCn8ATqg7XyUNKdWmb3T5hF846lrBhrsY=;
        b=DLtRdwvctjtfT4TLna9dBE62V6oi49fpXED0gXwXVTy9COP9xXOH33kRoR9VDylnrG
         eAKRQF6OdV0OeBNInr4LhjQiPDGiBYZ4Av2QpUOEj1gQRYcx2d5HSpd//lMdJjqgMkgA
         Tut040VPdOMVUgj2vebn8paFIb3bjL5GqqZIM1G6XKMd4Ih0xcsh7EEXl3qkFzndb4/i
         J4ho9nw0YqsQJah5rDMahd9KSSfodB4cQtP5zXJo7E3WigaAnHxLCS/S+YvzGluMs1HB
         DYd43cAoxvaGBjo9BNAXX32BXOE1dyHHtR95pdgmMC/1E2LhHur4QMJm7AYXU86wSZ0S
         gSkw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id js13-20020a0562142aad00b006a0b359779esi11539318qvb.330.2024.05.07.08.42.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 08:42:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-395-uXUrG2y6Pr2AThWJwGVAaw-1; Tue,
 07 May 2024 11:42:20 -0400
X-MC-Unique: uXUrG2y6Pr2AThWJwGVAaw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B07053C3D0CF
	for <blinux-list@gapps.redhat.com>; Tue,  7 May 2024 15:42:19 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id AD2B7C08F3A; Tue,  7 May 2024 15:42:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 75159C08F39
	for <blinux-list@redhat.com>; Tue,  7 May 2024 15:42:19 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 02AB03C3D0CE
	for <blinux-list@redhat.com>; Tue,  7 May 2024 15:42:19 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-599-4sVT0wnhMueeczx8C_AWFA-1; Tue, 07 May 2024 11:42:16 -0400
X-MC-Unique: 4sVT0wnhMueeczx8C_AWFA-1
Received: from [192.168.1.20] (178-75-190-98.bb.dnainternet.fi [178.75.190.98])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id 9512A4111B;
	Tue,  7 May 2024 18:42:12 +0300 (EEST)
Message-ID: <33303af7-4eaf-449b-a356-043e93f4f138@harrastenurkka.fi>
Date: Tue, 7 May 2024 18:41:51 +0300
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
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: harrastenurkka.fi
Content-Type: multipart/alternative;
 boundary="------------7woF0I7wd0CM5dOHFoEQi9nG"
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
--------------7woF0I7wd0CM5dOHFoEQi9nG
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

hi

Do you have experience with the camocr script,
have you used it, what kind of webcam or capture card would you=20
recommend for the purpose, my purpose would be to be able to navigate=20
the bios independently and maybe install proxmox. Would there be a=20
capture card for this that would be connected to the machine to be=20
installed and to the other port a machine running camocr

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

--------------7woF0I7wd0CM5dOHFoEQi9nG
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>hi<br>
    </p>
    <p>Do you have experience with the camocr script,<br>
      have you used it, what kind of webcam or capture card would you
      recommend for the purpose, my purpose would be to be able to
      navigate the bios independently and maybe install proxmox. Would
      there be a capture card for this that would be connected to the
      machine to be installed and to the other port a machine running
      camocr<br>
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

--------------7woF0I7wd0CM5dOHFoEQi9nG--

