Return-Path: <blinux-list+bncBCM2V5WE3MDBBMM4YC3QMGQEK37JUHA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 831D997E18C
	for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2024 14:31:47 +0200 (CEST)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7ac9ce5844esf700595585a.0
        for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2024 05:31:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727008306; cv=pass;
        d=google.com; s=arc-20240605;
        b=PWjHbKkqLyJBqzxZtwt7qmf0adm5slF5dGpO4VZmLLQF11A/NbmUoPtUjrI5vHhyyz
         S+zJIyWCmiKvTbb5n1Inh2BGbwxQWUYwPOOWIbu/WEQm3e9NOfnI6lNRGw4PSc+wViQg
         w3l5SunWsSnVVxG+huJa+e0SXVNL2gl4hdMgobiPWq/dyRDoQeUO6paTQI5BoJp3WDM4
         0CdufL0sSz4kIna3MuxZGILQRYYBwNIDCYx1nPyfhJpvcwM68Y30PfRJIEJVHHM5MCU8
         Y3qoi6iILTal43HZOCDHVSJQPupljIUTQA/iGN3dPiF1aHgWorx3DegVUFj2wwUOLP8i
         fpuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:feedback-id
         :message-id:subject:from:to:date:delivered-to;
        bh=Y0DB0AP7bs4IoguDTNXpsl5WIN6GgtjefdG19KHNkC8=;
        fh=lyymKt0mPW9naVcHJRoAeOV+yTSni6P8/JmzEpenzHQ=;
        b=j4ZMtov9hfRDCpeAuHPnq5EBpH/E/RZ5q2lRYFW237+iJRqYAvqajCF6JxER37LOm9
         zD8LU5dYY4S9YTeEjhA2XuFvhi9kM3/4SZrc0Bc03GAjitmlWQKaE37HyEN94qZr0FLa
         tir/IGASbCM+pw1Mlljf/m2DHPM7AikUMKNqvq/BzfsR8vyKJUa6Du0KWwdGZ9mysTKS
         4FyVmxoaApSlVRJ6OUm0hHK8IrvG2Tkg0pQ3nCDIuZlrTvaX9lZ9qopxhD/RaZcZeDlI
         16EjfS2jhtk9Q3M8rMKz1P4uZmcODziKKevRYLTHOuzhIIHK1XFia/ujnCk7/ticlrb1
         +gJA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 188.165.51.139 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727008306; x=1727613106;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :feedback-id:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y0DB0AP7bs4IoguDTNXpsl5WIN6GgtjefdG19KHNkC8=;
        b=dNbg2RLIsHO9aju0UWAGxeRhVPdtxPgDJ3CikhmX/EhHygqDXFArX6SOOp3IvcUany
         xbVDYg6uDQ86K7YEBI0BlFeAFaVy1ymgN12qWbwKUwP9ZPAV3CuJCVPD0Ih16McmORXi
         cDMf97og2aQBMmRSrlOLrpPPJhvFnWNeEuPHUa9D9L1C28mo2S/ZHjpRVI/ckoEqooDQ
         xZW2HvUcBK/0SD0smfDGnh3X0yTpboloxl1y/AGzw4CULUkbROsfPq6pQdXQOr3r4hC/
         C0XOj1YYp4FawH9e4F5+N9mxPiu/iIjWizApW6ATy+ssy6MSgqCwwQr4VZpIVB/HG9NF
         Ie6A==
X-Forwarded-Encrypted: i=2; AJvYcCWsGnos4JREjCz3VAUIRUdETXRSrUPoAqsrd2PvyxvoHO9MHkV/4Wbb2moBxErQgzO55H9uOw==@lfdr.de
X-Gm-Message-State: AOJu0YymRM5cz/WiP2JpqU0McENV2fZg+EMSbKM2yZ50lGlHbX2vp3IX
	dN49YZjHLRv7R2dH75kOtCKe5ArWCoKS8wRqSaOCudwOq6dPPHQmXgbyFLSvgfw=
X-Google-Smtp-Source: AGHT+IERO/pLpSX13pr8n72A8iy+DblXYFA2lq8Y/dSMV1UXZoLOHzGHezBKP+cqETCYMdJU5Aobfg==
X-Received: by 2002:a05:6214:4b0a:b0:6c6:5f0:1d6d with SMTP id 6a1803df08f44-6c7bc61477emr122126016d6.2.1727008306000;
        Sun, 22 Sep 2024 05:31:46 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5f08:0:b0:6c3:62ce:cbb9 with SMTP id 6a1803df08f44-6c6823b2e4fls49566d6.0.-pod-prod-01-us;
 Sun, 22 Sep 2024 05:31:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWo4VmmpA/PJP/y5xSos7T5iQReIrs2pGRrhH7URZ0GJVDyTIEH2fk1bVrMaBf2urhdxrWtBQp5nMc9DQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:1a20:b0:7a3:5f3f:c084 with SMTP id af79cd13be357-7acb80d17fdmr1229439385a.30.1727008304906;
        Sun, 22 Sep 2024 05:31:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1727008304; cv=none;
        d=google.com; s=arc-20240605;
        b=Uo0HsccCWxILKZ19lx0FEWEIdwyyb392/bhAFGAVhTh/QJK/tgZ3Tcg9IIwEpWR0Y5
         Mb1XlvTHaMgds2IC6bey8xbMf/+zaMo76IQ+irBw/hklV53JPMt5fZY+fOULyTAk4xS7
         s0GifM97WwRlCbVaTKq86Q2jHp2EmfZg6G1iymFx9NV8yqEVQmA+2OxdroiqyOSMGPV4
         TQucID8ZVBGz+WjlBW+WOXZfQXeaY6qG1ONy8XVqhvjt2rHmxvQ8A8Pkw2CkIGWo0LW8
         jtcFSxeAMwQS7SqAObAi8q5HZN9zQQ5uDGhR8AC/Bzkg8AI4gsPf13cQZqJOSHtE1yzL
         ZiwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:feedback-id:message-id:subject:from:to:date
         :delivered-to;
        bh=gE0aqjbkHOCA3D6kPR8Nei3ZweUZNxIjM3qDzRBkY5Y=;
        fh=RvQDheITTmuYyfluYd+u35+WhTCH9xq08wjC5cbgfH0=;
        b=a3K3h8vFHZkxpiGy/6Jj+KVtBVBVoww7y1CyC5g83eS0NOZRBu9KJTsIvOol3k36oe
         GV9b++Lo0oKQxHHN9N7Rd/kDXLswHGAh+OxsDvdgPYhtZFBIIvpFLNksW+xy3yFyBt8a
         RpkVuNTKTYZXNOCxYN4o8CNe8QYVcNunlkt3/gOdSErBTEAwm2UAWRSCjmDiSFxQzzbI
         q+C1GMOKrvMxXMOvfCWf0iunnpVhPsSsRVQEy6rZaX2jt84L7ukVVXyaIxqkxgJZpTlo
         nrNAU6uHbdxqErfjfKwRINIYO8gPhZ6s4p18mIAIm6tx4EIRwbWOCoykbDGPyKC+UZrt
         34vQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 188.165.51.139 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7acb07fc017si861065885a.11.2024.09.22.05.31.44
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Sep 2024 05:31:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 188.165.51.139 as permitted sender) client-ip=188.165.51.139;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-256-lVs0XjtKMoW6c29SQlwyTw-1; Sun,
 22 Sep 2024 08:31:43 -0400
X-MC-Unique: lVs0XjtKMoW6c29SQlwyTw-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1FBE418F655A
	for <blinux-list@gapps.redhat.com>; Sun, 22 Sep 2024 12:31:42 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1CC41195605A; Sun, 22 Sep 2024 12:31:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.23])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 19D1E1956054
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 12:31:41 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 56FAA19792DA
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 12:31:41 +0000 (UTC)
Received: from mail-0301.mail-europe.com (mail-0301.mail-europe.com
 [188.165.51.139]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-166-4nPM7NwXMrOJDBb9LFvBIg-1; Sun, 22 Sep 2024 08:31:37 -0400
X-MC-Unique: 4nPM7NwXMrOJDBb9LFvBIg-1
Date: Sun, 22 Sep 2024 12:31:28 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>, orca@freelists.org
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: UMAI 0.5: Welcome on Ubuntu Mate 24.04
Message-ID: <ab803beb-ce5a-4c30-ba7e-41e24594202b@protonmail.com>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: 51d137d90313679ec2fb0d3a3dbdd954dfe15503
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: multipart/alternative;
 boundary="b1_wYLolRUsqrNuuytWUk6wHop9FDYiWTbd13GHr2lxvI"
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 188.165.51.139 as
 permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Original-From: Rastislav Kish <rastislav.kish@protonmail.com>
Reply-To: Rastislav Kish <rastislav.kish@protonmail.com>
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
--b1_wYLolRUsqrNuuytWUk6wHop9FDYiWTbd13GHr2lxvI
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,
today I decided to finally release my [accessibility improving script](http=
s://github.com/RastislavKish/umai) for Ubuntu Mate 24.04. I=E2=80=99m not e=
ntirely satisfied with certain things, mostly Orca not starting on the logi=
n screen despite an explicit configuration of Arctica to launch it, but the=
 rest of things seem to be pretty okay. Plus we have the new workaround for=
 Orca not starting after session login because of Mate bug (this affects al=
l other Mate distros btw, like Fedora).
Speaking of the Redhat distro, I=E2=80=99m seriously considering writing a =
Fedora version of UMAI. The thing is, the new Flutter based installer which=
 UM uses is something=E2=80=A6 I can deal with as someone who has gone thro=
ugh countless Linux installation processes, like many of us, but I=E2=80=99=
m not sure how convincing would the experience be for an entirely new user,=
 who, in addition, may not even be used to work with flat review and know h=
ow to apply it.
Fedora has a really cute installer which is imo even better than Ubiquity w=
as, GUI-wise, but many of the things it requires to setup after the initial=
 installation are likely to require quite a bit of GSettings research, such=
 as figuring out how to activate the advanced mate menu programmatically. T=
hus for now, this stays an open thing.

Anyway, if anyone decides to go with UM these days, anything else than 24.0=
4 is pretty much obsolete from accessibility viewpoint. So, welcome on Ubun=
tu Mate 24.04!

Note: Automatic system upgrades to 24.04 are known to go bad for pretty muc=
h everyone, blind or sighted, I would strongly encourage a clean installati=
on if you=E2=80=99re running an older version of the distro.

Best regards

Rastislav

=E2=80=8B

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--b1_wYLolRUsqrNuuytWUk6wHop9FDYiWTbd13GHr2lxvI
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <div class=3D"markdown-here-wrapper" data-md-url=3D"" style=3D"">
      <p style=3D"margin: 0px 0px 1.2em !important;">Hello everyone,<br>
        today I decided to finally release my <a
          href=3D"https://github.com/RastislavKish/umai">accessibility
          improving script</a> for Ubuntu Mate 24.04. I=E2=80=99m not entir=
ely
        satisfied with certain things, mostly Orca not starting on the
        login screen despite an explicit configuration of Arctica to
        launch it, but the rest of things seem to be pretty okay. Plus
        we have the new workaround for Orca not starting after session
        login because of Mate bug (this affects all other Mate distros
        btw, like Fedora).<br>
        Speaking of the Redhat distro, I=E2=80=99m seriously considering wr=
iting
        a Fedora version of UMAI. The thing is, the new Flutter based
        installer which UM uses is something=E2=80=A6 I can deal with as so=
meone
        who has gone through countless Linux installation processes,
        like many of us, but I=E2=80=99m not sure how convincing would the
        experience be for an entirely new user, who, in addition, may
        not even be used to work with flat review and know how to apply
        it.<br>
        Fedora has a really cute installer which is imo even better than
        Ubiquity was, GUI-wise, but many of the things it requires to
        setup after the initial installation are likely to require quite
        a bit of GSettings research, such as figuring out how to
        activate the advanced mate menu programmatically. Thus for now,
        this stays an open thing.</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">Anyway, if anyone
        decides to go with UM these days, anything else than 24.04 is
        pretty much obsolete from accessibility viewpoint. So, welcome
        on Ubuntu Mate 24.04!</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">Note: Automatic
        system upgrades to 24.04 are known to go bad for pretty much
        everyone, blind or sighted, I would strongly encourage a clean
        installation if you=E2=80=99re running an older version of the dist=
ro.</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">Best regards</p>
      <p style=3D"margin: 0px 0px 1.2em !important;">Rastislav</p>
      <div
title=3D"MDH:PHA+SGVsbG8gZXZlcnlvbmUsPGJyPnRvZGF5IEkgZGVjaWRlZCB0byBmaW5hbG=
x5IHJlbGVhc2Ug
bXkgW2FjY2Vzc2liaWxpdHkgaW1wcm92aW5nIHNjcmlwdF0oaHR0cHM6Ly9naXRodWIuY29tL1J=
h
c3Rpc2xhdktpc2gvdW1haSkgZm9yIFVidW50dSBNYXRlIDI0LjA0LiBJJ20gbm90IGVudGlyZWx=
5
IHNhdGlzZmllZCB3aXRoIGNlcnRhaW4gdGhpbmdzLCBtb3N0bHkgT3JjYSBub3Qgc3RhcnRpbmc=
g
b24gdGhlIGxvZ2luIHNjcmVlbiBkZXNwaXRlIGFuIGV4cGxpY2l0IGNvbmZpZ3VyYXRpb24gb2Y=
g
QXJjdGljYSB0byBsYXVuY2ggaXQsIGJ1dCB0aGUgcmVzdCBvZiB0aGluZ3Mgc2VlbSB0byBiZSB=
w
cmV0dHkgb2theS4gUGx1cyB3ZSBoYXZlIHRoZSBuZXcgd29ya2Fyb3VuZCBmb3IgT3JjYSBub3Q=
g
c3RhcnRpbmcgYWZ0ZXIgc2Vzc2lvbiBsb2dpbiBiZWNhdXNlIG9mIE1hdGUgYnVnICh0aGlzIGF=
m
ZmVjdHMgYWxsIG90aGVyIE1hdGUgZGlzdHJvcyBidHcsIGxpa2UgRmVkb3JhKS48YnI+U3BlYWt=
p
bmcgb2YgdGhlIFJlZGhhdCBkaXN0cm8sIEknbSBzZXJpb3VzbHkgY29uc2lkZXJpbmcgd3JpdGl=
u
ZyBhIEZlZG9yYSB2ZXJzaW9uIG9mIFVNQUkuIFRoZSB0aGluZyBpcywgdGhlIG5ldyBGbHV0dGV=
y
IGJhc2VkIGluc3RhbGxlciB3aGljaCBVTSB1c2VzIGlzIHNvbWV0aGluZy4uLiBJIGNhbiBkZWF=
s
IHdpdGggYXMgc29tZW9uZSB3aG8gaGFzIGdvbmUgdGhyb3VnaCBjb3VudGxlc3MgTGludXggaW5=
z
dGFsbGF0aW9uIHByb2Nlc3NlcywgbGlrZSBtYW55IG9mIHVzLCBidXQgSSdtIG5vdCBzdXJlIGh=
v
dyBjb252aW5jaW5nIHdvdWxkIHRoZSBleHBlcmllbmNlIGJlIGZvciBhbiBlbnRpcmVseSBuZXc=
g
dXNlciwgd2hvLCBpbiBhZGRpdGlvbiwgbWF5IG5vdCBldmVuIGJlIHVzZWQgdG8gd29yayB3aXR=
o
IGZsYXQgcmV2aWV3IGFuZCBrbm93IGhvdyB0byBhcHBseSBpdC48YnI+RmVkb3JhIGhhcyBhIHJ=
l
YWxseSBjdXRlIGluc3RhbGxlciB3aGljaCBpcyBpbW8gZXZlbiBiZXR0ZXIgdGhhbiBVYmlxdWl=
0
eSB3YXMsIEdVSS13aXNlLCBidXQgbWFueSBvZiB0aGUgdGhpbmdzIGl0IHJlcXVpcmVzIHRvIHN=
l
dHVwIGFmdGVyIHRoZSBpbml0aWFsIGluc3RhbGxhdGlvbiBhcmUgbGlrZWx5IHRvIHJlcXVpcmU=
g
cXVpdGUgYSBiaXQgb2YgR1NldHRpbmdzIHJlc2VhcmNoLCBzdWNoIGFzIGZpZ3VyaW5nIG91dCB=
o
b3cgdG8gYWN0aXZhdGUgdGhlIGFkdmFuY2VkIG1hdGUgbWVudSBwcm9ncmFtbWF0aWNhbGx5LiB=
U
aHVzIGZvciBub3csIHRoaXMgc3RheXMgYW4gb3BlbiB0aGluZy48YnI+PGJyPkFueXdheSwgaWY=
g
YW55b25lIGRlY2lkZXMgdG8gZ28gd2l0aCBVTSB0aGVzZSBkYXlzLCBhbnl0aGluZyBlbHNlIHR=
o
YW4gMjQuMDQgaXMgcHJldHR5IG11Y2ggb2Jzb2xldGUgZnJvbSBhY2Nlc3NpYmlsaXR5IHZpZXd=
w
b2ludC4gU28sIHdlbGNvbWUgb24gVWJ1bnR1IE1hdGUgMjQuMDQhPGJyPjxicj5Ob3RlOiBBdXR=
v
bWF0aWMgc3lzdGVtIHVwZ3JhZGVzIHRvIDI0LjA0IGFyZSBrbm93biB0byBnbyBiYWQgZm9yIHB=
y
ZXR0eSBtdWNoIGV2ZXJ5b25lLCBibGluZCBvciBzaWdodGVkLCBJIHdvdWxkIHN0cm9uZ2x5IGV=
u
Y291cmFnZSBhIGNsZWFuIGluc3RhbGxhdGlvbiBpZiB5b3UncmUgcnVubmluZyBhbiBvbGRlciB=
2
ZXJzaW9uIG9mIHRoZSBkaXN0cm8uPGJyPjxicj5CZXN0IHJlZ2FyZHM8YnI+PGJyPlJhc3Rpc2x=
h
djxicj48YnI+PC9wPg=3D=3D" aria-hidden=3D"true"
style=3D"height:0;width:0;max-height:0;max-width:0;overflow:hidden;font-siz=
e:0;padding:0;margin:0;">=E2=80=8B</div>
    </div>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--b1_wYLolRUsqrNuuytWUk6wHop9FDYiWTbd13GHr2lxvI--

