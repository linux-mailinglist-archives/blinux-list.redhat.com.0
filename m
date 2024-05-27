Return-Path: <blinux-list+bncBDY3L4PG5ENRB2O72KZAMGQEMLVZJRY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D5D8D0799
	for <lists+blinux-list@lfdr.de>; Mon, 27 May 2024 18:08:13 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6ab9e01225esf62017616d6.0
        for <lists+blinux-list@lfdr.de>; Mon, 27 May 2024 09:08:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716826090; cv=pass;
        d=google.com; s=arc-20160816;
        b=XtQOmMJhF9dyCuZE2DySg4XIBLlgV7QUbEYnYpKkyhS4SkhOxnl5VynBoM5siitckF
         KD9iaoOg+jxU3aARN71hp+UPBPTrrwdLC58/nVxuIAYhjgO64u4jzjMoHsOkEWK7Jujn
         i4hT9qAfIWioCkSmQkIUAIs3H9WmyAMJZ1GTZJjIR+xb+nVb/icvBWBqbmXJYKFvDwll
         Ikx+8nYK/hK+JJy4oprk5mMw7WlZFlBfKY/JJhYvBwzcdYaFCMj+W3xYHXuK4eMaEL3E
         pOB1EX0kwvK72B269pjLtupvWnug+QliuONrS2reV6PKbw1jo9XhxA5zw+XLGdS1lDyD
         uIlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=vY5ptBl3GcuiFl2gdfw89ViBqtfQyeqqmjwMqxOiaM4=;
        fh=aly6AryAwoCZKvSh6A+h35GgMEHA1+0QUQXlm0oXoTk=;
        b=nOxrBqVUGw/i+Jvn3Letr+5NEXKOToC8/J6X5bHLN5iWxv0VRRknk1zrruj+5BdZKf
         wvD4d7UJgd3cGWMxcxhE8wPsReNZZNXtN/Ol5kh/w5g1waKUqKvv17+MiPCG4kQcNeq1
         EW24sYJKTgtAFrE0NwtxXLQUfrTxOkOx1MbGdzXDW/1o0QWjXKLWEhbGmLdGG60S89T/
         H6Oq4Qkw/DY3KAW10R4bYxA3Jx4bDRPxwfW46sdSty4TJMPC8dUKGvwlkbayKHFjYCA4
         hzHThU6tTXkMjiXXQebGtIZ+86NFMiix8YVgyS+/AdOLB60hmRssrr70KCvvQDnD7i4I
         SVxQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of marbux@gmail.com designates 209.85.219.176 as permitted sender) smtp.mailfrom=marbux@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716826090; x=1717430890;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vY5ptBl3GcuiFl2gdfw89ViBqtfQyeqqmjwMqxOiaM4=;
        b=V3EwtvJ3RQIzmEQWjzDfxPLkmSnMkyN1H9vSdmuU/NwTOelNpOJ43o3FqS4nuGK8E/
         fdwWdAQpTUSpocHglyWoWF2RPsGfAaC0IQej5Sb6ziI1S9+j+GdxKUfritYRqcRycIjP
         PRFU1GB5nqWqZvV5Pta2CGTqijLPIzGq5bbF92UNYTB18XBVLq9ZMuJsTaWqqMD1xHRK
         S2+dSQJzJiGEscpEXnOWzp1cRW1P/3tf0TaNT+xt2SWBGJbDep+fvvyFsbdg1M/X5YTv
         ntEPyD0HqZmqnod6GXZQ8p29rGU6JtlsbWQoGiqhvZGyTY/QlQAxZaBCITQUpFlbNosu
         H3lA==
X-Forwarded-Encrypted: i=2; AJvYcCX1+6SsXMapFLvdxkTpnO8AMbWraP+m4hrLJamLg12EWn6DYHeGclvZoYexYsxZnaigSUV1x07OOuQOPtTDjRQdS39YBo2+KAfO
X-Gm-Message-State: AOJu0YwA/aXfEcJ2RnpR5HmXkGP08ReJIAtZ6T7gaIODob/iGn7uOuWV
	yHQvi4/bGVf5gavoPVT3xaHcHMfUABu6BNBpzU9cvLkSs6X/z1N+v5++pmnLvJM=
X-Google-Smtp-Source: AGHT+IFvJGYBmYYSbkbQ0dkF0dzNHxsG8p4CRU9+Tjh2/XX4MmuHaPfwEOkdBXTp0tBLXGyHVcTV5A==
X-Received: by 2002:a05:6214:2c13:b0:6ab:996d:425b with SMTP id 6a1803df08f44-6ab9cfbeb68mr211568266d6.4.1716826090193;
        Mon, 27 May 2024 09:08:10 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:4eef:0:b0:69b:a44:bb68 with SMTP id 6a1803df08f44-6ab9b172c75ls6601516d6.0.-pod-prod-00-us;
 Mon, 27 May 2024 09:08:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW6y5k8MSRrcnz0A2VTXnJUMuNTmVpAx8BOsQLX2hsZRw115Xky/sVbYTMf19oa71tjBLclxAk4KAMKZUStKY5Utd0sVHWvH2ffv0Ue
X-Received: by 2002:a05:6214:c87:b0:6ab:8434:d4f7 with SMTP id 6a1803df08f44-6ab8f556418mr261085876d6.16.1716826089324;
        Mon, 27 May 2024 09:08:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716826089; cv=none;
        d=google.com; s=arc-20160816;
        b=UkCda/eZxeoxY0eXBLcHkJJ0UpHJblWIWutEmgnpNo/io9kH10Qcwlu5reNnyNRsJW
         VEig2aATack4bXnYGTGah12L8EghIjVMJnRMQE876MckButSzs5ETQnlYWnf3FT1fi6z
         GxHT6tYY4qnCuYnVDUF+7Z/ehez3dlKosBetKjRwk3T2zyzxoswld/KlhnTcPqiZbsuL
         wjfQiGrQaVgWckhL3mfJeYHWjLpuc2csnC4qU3sbKfxFSme+nlmtiogLKloXsy6bIE88
         pGsMVOa1G62MmW+ZPcJBGDWnhCg0ZaO/9JYvkLrcdgNXbuD7qMmLQBKNtncqVxvUvwsk
         O0yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=gpKK3pqGu6uveQHTMThwhoj2LN6cPFlfosEw+SmJRgE=;
        fh=+Zxwq9BLY3KW4yVpTZQdCfH22hbeRWR48EwhjtBD7+0=;
        b=G/qwqVNHco8tc27IXgRo9hFC5lSzsiu5B+Pp93v2tsAm1Nvzxy59majHPZOxqVEzwe
         qx3gjvY5ZZWsvq0ymWTxc5/2PugtHqvRh8b73Lk4cMH5p7fePKhtpN3Z+dM1dfD0PU7m
         kCJlrTgIeO5IcR4IGiWi8Xf087dXDOSGC3x5xgxd3JmOcOM68t+xzu7T/x5Sp0+j7Kqh
         wf70mHSUTqZVTZjK0Oe2t7BU9U7a5SgL6Vijikj/zUFszysCnk1/pTITAUUxM3i2fUcU
         B4evU60K7k6NIQgb2dXJskd7qEvf+/p7cPG9OHmW/VRPi2jWwFelw5tKjTma+D0GCwga
         d2+g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of marbux@gmail.com designates 209.85.219.176 as permitted sender) smtp.mailfrom=marbux@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6ac070f0ee9si84184356d6.211.2024.05.27.09.08.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 09:08:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of marbux@gmail.com designates 209.85.219.176 as permitted sender) client-ip=209.85.219.176;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-595-0GyqLfPOO5C5B_lxDvXKqg-1; Mon,
 27 May 2024 12:08:07 -0400
X-MC-Unique: 0GyqLfPOO5C5B_lxDvXKqg-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AADDD1954195
	for <blinux-list@gapps.redhat.com>; Mon, 27 May 2024 16:08:06 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 965801954202; Mon, 27 May 2024 16:08:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 93CE81955D7D
	for <blinux-list@redhat.com>; Mon, 27 May 2024 16:08:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 14F501956076
	for <blinux-list@redhat.com>; Mon, 27 May 2024 16:08:06 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com
 [209.85.219.176]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-99-lGwQLFcjMbSWerUvoQkJgw-1; Mon, 27 May 2024 12:08:03 -0400
X-MC-Unique: lGwQLFcjMbSWerUvoQkJgw-1
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-df7721eee79so2273938276.0
        for <blinux-list@redhat.com>; Mon, 27 May 2024 09:08:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVyQUMNm/x9FIr3GglO2GP7WoxYkkvOV/YwYAN003Izs+oUwqVirdrK01I/yeXG+pOG/YKtb6oDxBA5vb8hl00JB9j9dILK
X-Received: by 2002:a05:6902:2189:b0:dc2:2f3f:2148 with SMTP id
 3f1490d57ef6-df770f2d1c2mr8107895276.29.1716826081513; Mon, 27 May 2024
 09:08:01 -0700 (PDT)
MIME-Version: 1.0
References: <ZlPijW01gZgptZTU@panix.com> <Pine.LNX.4.64.2405262206320.2441188@users.shellworld.net>
 <ZlSBlK5r9RWbf1d0@panix.com> <Pine.LNX.4.64.2405271111380.2449385@users.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2405271111380.2449385@users.shellworld.net>
From: Paul Merrell <marbux@gmail.com>
Date: Mon, 27 May 2024 09:07:50 -0700
Message-ID: <CAJ1g4g87_hKnn8yfwfcnFeO9xXukBV1Y5QnoVMJXmD5oOt00hw@mail.gmail.com>
Subject: Re: getting BARD 2.0 to work with lynx on Linux
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Rudy Vener <salt@panix.com>, blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="000000000000bafa9f061971b817"
X-Original-Sender: marbux@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of marbux@gmail.com designates 209.85.219.176 as permitted sender) smtp.mailfrom=marbux@gmail.com
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

--000000000000bafa9f061971b817
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2024 at 8:17=E2=80=AFAM Karen Lewellen <klewellen@shellworl=
d.net>
wrote:

> That is interesting.
> When I first tried to walk through these steps, I had no issue with lynx
> at all.  I did notice  that the indicated government privacy policy  was
> not provided.
> So, I used the DOS build of Links the chain, which is actually on my
> desktop.
> Good thing too, all of said privacy policy appeared, allowing me to agree
> and finish.
> granted Its not a service I can actually use, but I am required to keep
> the thing active as part of the overseas part of my nls qualification..
> never mind the double standard.
> Kare
>
>
>
> On Mon, 27 May 2024, Rudy Vener wrote:
>
> > There is, but it isn't saved to disk and I didn't want to change it
> every time I visit bard.
> >
> > On Sun, May 26, 2024 at 10:10:14PM -0400, Karen Lewellen wrote:
> >> Most interesting Rudy.
> >> I wonder if there is an options menu  choice for this?
> >> Personally,  very personally, I am profoundly   disturbs by the patron
> >> double standard.
> >> Bard users get to keep library books indefinitely.  Those who prefer, =
or
> >> require physical cartridges  must return that same content..for a
> publicly
> >> funded library.
> >> How is that equal?
> >> Karen
> >>
> >>
> >>
> >> On Sun, 26 May 2024, Rudy Vener wrote:
> >>
> >>> After testing the new BARD 2.0 interface on my Linux system (slint v
> 15.0)  using lynx, I
> >>> had a few bad hours when access was denied with a cookie error messag=
e.
> >>>
> >>> I finally got BARD 2.0 interface to work with lynx, but had
> >>> to change the cookie version to do so.
> >>>
> >>>
> >>> To save others future anguish, here's what I did.
> >>>
> >>> 1. cp /etc/lynx.cfg to ~/.config/lynx.cfg
> >>> 2. vi ~/.config/lynx.cfg
> >>>  copy the line:
> >>> #COOKIE_VERSION:RFC-6265
> >>> and edit it to:
> >>> COOKIE_VERSION:RFC-2965
> >>> 3. In a script file you can name bard or whatever suits your fancy,
> call lynx as follows:
> >>> lynx -cfg=3D~/.config/lynx.cfg  https://nlsbard.loc.gov
> >>>
> >>> At some point BARD might fix their cookies to work with the default
> cookie version. Then again, they might not.
> >>>
> >>> --
> >>> Rudy Vener
> >>> Website: http://www.rudyvener.com
> >>> Check out my latest story: Dwindling at
> http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/
> >>>
> >>> To unsubscribe from this group and stop receiving emails from it, sen=
d
> an email to blinux-list+unsubscribe@redhat.com.
> >>>
> >>>
> >>
> >
> > --
> > Rudy Vener
> > Website: http://www.rudyvener.com
> > Check out my latest story: Dwindling at
> http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/
> > Need a Limerick Fix? Visit https://limerickdude.substack.com
> >
>
>

--=20
[Notice not included in the above original message:  The U.S. National
Security Agency neither confirms nor denies that it intercepted this
message.]
                                                =C2=AF\_(=E3=83=84)_/=C2=AF

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--000000000000bafa9f061971b817
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 27, 2024 at 8:17=E2=80=AF=
AM Karen Lewellen &lt;<a href=3D"mailto:klewellen@shellworld.net">klewellen=
@shellworld.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">That is interesting.<br>
When I first tried to walk through these steps, I had no issue with lynx <b=
r>
at all.=C2=A0 I did notice=C2=A0 that the indicated government privacy poli=
cy=C2=A0 was <br>
not provided.<br>
So, I used the DOS build of Links the chain, which is actually on my <br>
desktop.<br>
Good thing too, all of said privacy policy appeared, allowing me to agree <=
br>
and finish.<br>
granted Its not a service I can actually use, but I am required to keep <br=
>
the thing active as part of the overseas part of my nls qualification.. <br=
>
never mind the double standard.<br>
Kare<br>
<br>
<br>
<br>
On Mon, 27 May 2024, Rudy Vener wrote:<br>
<br>
&gt; There is, but it isn&#39;t saved to disk and I didn&#39;t want to chan=
ge it every time I visit bard.<br>
&gt;<br>
&gt; On Sun, May 26, 2024 at 10:10:14PM -0400, Karen Lewellen wrote:<br>
&gt;&gt; Most interesting Rudy.<br>
&gt;&gt; I wonder if there is an options menu=C2=A0 choice for this?<br>
&gt;&gt; Personally,=C2=A0 very personally, I am profoundly=C2=A0 =C2=A0dis=
turbs by the patron<br>
&gt;&gt; double standard.<br>
&gt;&gt; Bard users get to keep library books indefinitely.=C2=A0 Those who=
 prefer, or<br>
&gt;&gt; require physical cartridges=C2=A0 must return that same content..f=
or a publicly<br>
&gt;&gt; funded library.<br>
&gt;&gt; How is that equal?<br>
&gt;&gt; Karen<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Sun, 26 May 2024, Rudy Vener wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; After testing the new BARD 2.0 interface on my Linux system (s=
lint v 15.0)=C2=A0 using lynx, I<br>
&gt;&gt;&gt; had a few bad hours when access was denied with a cookie error=
 message.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I finally got BARD 2.0 interface to work with lynx, but had<br=
>
&gt;&gt;&gt; to change the cookie version to do so.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; To save others future anguish, here&#39;s what I did.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; 1. cp /etc/lynx.cfg to ~/.config/lynx.cfg<br>
&gt;&gt;&gt; 2. vi ~/.config/lynx.cfg<br>
&gt;&gt;&gt;=C2=A0 copy the line:<br>
&gt;&gt;&gt; #COOKIE_VERSION:RFC-6265<br>
&gt;&gt;&gt; and edit it to:<br>
&gt;&gt;&gt; COOKIE_VERSION:RFC-2965<br>
&gt;&gt;&gt; 3. In a script file you can name bard or whatever suits your f=
ancy, call lynx as follows:<br>
&gt;&gt;&gt; lynx -cfg=3D~/.config/lynx.cfg=C2=A0 <a href=3D"https://nlsbar=
d.loc.gov" rel=3D"noreferrer" target=3D"_blank">https://nlsbard.loc.gov</a>=
<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; At some point BARD might fix their cookies to work with the de=
fault cookie version. Then again, they might not.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; Rudy Vener<br>
&gt;&gt;&gt; Website: <a href=3D"http://www.rudyvener.com" rel=3D"noreferre=
r" target=3D"_blank">http://www.rudyvener.com</a><br>
&gt;&gt;&gt; Check out my latest story: Dwindling at <a href=3D"http://www.=
starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/" rel=3D"noref=
errer" target=3D"_blank">http://www.starshipsofa.com/blog/2024/02/14/starsh=
ipsofa-726-rudy-vener/</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; To unsubscribe from this group and stop receiving emails from =
it, send an email to <a href=3D"mailto:blinux-list%2Bunsubscribe@redhat.com=
" target=3D"_blank">blinux-list+unsubscribe@redhat.com</a>.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt; -- <br>
&gt; Rudy Vener<br>
&gt; Website: <a href=3D"http://www.rudyvener.com" rel=3D"noreferrer" targe=
t=3D"_blank">http://www.rudyvener.com</a><br>
&gt; Check out my latest story: Dwindling at <a href=3D"http://www.starship=
sofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/" rel=3D"noreferrer" t=
arget=3D"_blank">http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-7=
26-rudy-vener/</a><br>
&gt; Need a Limerick Fix? Visit <a href=3D"https://limerickdude.substack.co=
m" rel=3D"noreferrer" target=3D"_blank">https://limerickdude.substack.com</=
a><br>
&gt;<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">[N=
otice not included in the above original message: =C2=A0The U.S. National S=
ecurity Agency neither confirms nor denies that it intercepted this message=
.]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=AF\_(=E3=83=84)_/=C2=AF</div></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--000000000000bafa9f061971b817--

