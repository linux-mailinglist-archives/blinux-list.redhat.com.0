Return-Path: <blinux-list+bncBC7LHOXXWIIRBJMUYGWQMGQEOLDVM3I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFE7839D29
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jan 2024 00:22:15 +0100 (CET)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5952618dad5sf5600108eaf.0
        for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 15:22:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706052134; cv=pass;
        d=google.com; s=arc-20160816;
        b=x/1Fq+yjWmTea8N3sy4jxB+d4pVIAQUlRs/iWDqhI1d6UWvty5KCQiXGz66mYTS0GE
         wjrxmDYu+TEAt63coZERk/yd7fASvBb6aqk/C4DNbkHxXVSYrnV6n+b9lcVQ0qTHYdxb
         6alIhb8+Nxox8A6UqvV5TDassgIW8wgMyLi+YP8Zm+ENJC29AdZwL9bL57iQa+DdGr/u
         ImhU8s2NXvkDxR15VpYbr35BEL9d5oSJkQdjRIF8Vn66Wn5OHtwjpp6/c/nEjys0/Js1
         VVSwapVr2zhdy0tWe3EUNxszSIpt8nSNJeK08ZMsKL2TTW+QOo+SxJPcomK2OXMcJQas
         eo+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=p0+BdHxr5KSycMlhXW4X805OL/n9d8gnbe+XB4nHI1A=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=T+YVVRnsERqm1byHt2cM93ml/iaE/8iVkR1ytCA9uj+lvZm3HpKEr3eVMBMOpK2q2N
         HF2VRFX8XfHmosPV/fm0LTD7jWhusBQGsiWs8TtTseLM2Lkr19mDG1GTmzvN475j/Hs3
         ef2ZTNFUShlDOOdnTeaVjCTtaJ+q9/IqwoPD6nKs0+IjiLwur4xnYOWUmqtmanbXZX6H
         Wfy8OHSB9N5B9S84T0dtYjig058qr7JHDenq9Bb3+hZimy7NCr1lOOupZ+y+gzLksO8N
         RenKf+phdiyWvHuJduJX5AoUEd02EHwVOa+AJOcni3Ar+S45SUfi3iWzrcPUagQPMUwH
         dPCA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of nimerjaber1@gmail.com designates 209.85.208.174 as permitted sender) smtp.mailfrom=nimerjaber1@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706052134; x=1706656934;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p0+BdHxr5KSycMlhXW4X805OL/n9d8gnbe+XB4nHI1A=;
        b=BbAcCLCQJc66CUVACWQWCjDbhOyqTliAZhdpXlIi0TM7l+JYa4cvcxQofy5rT1EMze
         BbjOa2DctV5B1K2YuQNvbKP3Ju8aFEYMTxBxxopnqy/qsjXIY8ddyNLOP103zOgYpydk
         e/aG6dHnCxV4Ub1KaTbFrRq3snyeaxzB2ehVGIz7gq0r7OAugsTaD9bTYkeTqRwe8QRs
         UT5zOuPyg69D7lRUVkN1NyQJldveRw470dXFtC2iTe4sIOo08w/VmgIVr9YNfdFU2WVk
         nR7EpL6WASrtzC04p5T7x6/V81oyTBEOLsHRL3XjEn+EgdnM0Yfyg9x/YH0v7/Qu313O
         PYHA==
X-Gm-Message-State: AOJu0Yzvm9sUsLJ/BIx8RaaIYA7gFq8kaOKwmX9mhVrfLHqn4fL/KtlA
	TN6dR7nVw/EcqCrNhxOaaQr6vTOo8o/schL01CwSyW5Z7N0bxD7aQYIufUFlmsg=
X-Google-Smtp-Source: AGHT+IE9kSc4mW09NyqpDOv/fUfAs6r3N2IBT9RADWDGu1lir7yf1sw9r9BDg0xgOyQwaO6HnwMAyA==
X-Received: by 2002:a4a:e652:0:b0:593:f906:614f with SMTP id q18-20020a4ae652000000b00593f906614fmr620934oot.4.1706052133891;
        Tue, 23 Jan 2024 15:22:13 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:5543:0:b0:599:3bf5:1d23 with SMTP id e64-20020a4a5543000000b005993bf51d23ls1123403oob.1.-pod-prod-05-us;
 Tue, 23 Jan 2024 15:22:13 -0800 (PST)
X-Received: by 2002:a05:6808:22a1:b0:3bd:9f4c:a4e8 with SMTP id bo33-20020a05680822a100b003bd9f4ca4e8mr603805oib.45.1706052133074;
        Tue, 23 Jan 2024 15:22:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706052133; cv=none;
        d=google.com; s=arc-20160816;
        b=je21TS2wMDIMpOhQhAba3C/LagVXixICq6EiiydvEvnhc/DrHGgmLysxu4TDs3jcIM
         o91CT17QFpRpVtZp1bgcBqNEMnx5TupP5rI2w9m6Fs5LXGI2ZfgJw1YmhaNXZBbNJIsG
         lolJFo7o3zvj+ddPrs9ugGFc8qh/+qFwtkHW+7qwFqd9kTvMlnmLpezRmYD55GPKsRpg
         04o2M/x7wW1H032wPr/fCRIXVwBOo+hE1pPaom7NASB+4FAmB7EGARD41IQZGB5jJlul
         IfufkaL6/vLiTF3KM6rt4XfBLq5R6sbEWD3Oz29JHKdR2hiCfL3P8EfHHnS+ftZdmHmH
         dVaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=AeE8GIp1GYkQKlkHP3Teo48DxZEVEeUzHfYeFcwzkYI=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=puYfCiv0/LDjV2ztk0+jAZziY4tkzrOHVL8Mkf8B+QNIxkuR1UyOyC9JbLH/2y2qNl
         NPfo3Bye2p8Ni1sGW8AXlyA4Lt5Ad+shbICFbjYotOqP7YBxbCvYqPWdz7Q/1/PkzlsW
         JIWg5OhonyxONzLeg1Pkxh5tIEdvU/Q2Hv0uSGH89v2L9iaM37kM1txecN0KFi/Bmswm
         KS2EaJSTT9h8IZIev3HZrzIdHrCn7Ril3p18IBnEfp6VGEM5WXvf0ggFMXsv7VMzOFsW
         xJ69DCiSooJ+2Qy8nRqOBj7O650cUBu7U2NMYXm0RflYlOPAvWm6qidXIgmeuCMcW4Eh
         xj/A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of nimerjaber1@gmail.com designates 209.85.208.174 as permitted sender) smtp.mailfrom=nimerjaber1@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id j13-20020a05622a038d00b00429ca915217si8961061qtx.109.2024.01.23.15.22.12
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 15:22:13 -0800 (PST)
Received-SPF: pass (google.com: domain of nimerjaber1@gmail.com designates 209.85.208.174 as permitted sender) client-ip=209.85.208.174;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-80-atMOTaCPPICPZUAQjj8KNA-1; Tue,
 23 Jan 2024 18:22:11 -0500
X-MC-Unique: atMOTaCPPICPZUAQjj8KNA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4921229AC020
	for <blinux-list@gapps.redhat.com>; Tue, 23 Jan 2024 23:22:11 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 45B4D1C060B3; Tue, 23 Jan 2024 23:22:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E8AC1C060AF
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 23:22:11 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1B55E837224
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 23:22:11 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-76-WxzsdIq9N7CrCMM1mQLRMA-1; Tue, 23 Jan 2024 18:22:08 -0500
X-MC-Unique: WxzsdIq9N7CrCMM1mQLRMA-1
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2cf1c8cc870so5259551fa.1
        for <blinux-list@redhat.com>; Tue, 23 Jan 2024 15:22:08 -0800 (PST)
X-Received: by 2002:a05:651c:c87:b0:2cf:1dc1:7faa with SMTP id
 bz7-20020a05651c0c8700b002cf1dc17faamr267586ljb.16.1706052126777; Tue, 23 Jan
 2024 15:22:06 -0800 (PST)
MIME-Version: 1.0
References: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
 <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com> <Pine.LNX.4.64.2401231429500.336098@users.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2401231429500.336098@users.shellworld.net>
From: Nimer Jaber <nimerjaber1@gmail.com>
Date: Tue, 23 Jan 2024 15:21:30 -0800
Message-ID: <CAF2O2CxQbdG-ORf2weztvUF3LESbe=9cdVnXTuF4hrvaXFUQZA@mail.gmail.com>
Subject: Re: Linux e-readers do they exist?
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="000000000000fc2587060fa536a9"
X-Original-Sender: nimerjaber1@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of nimerjaber1@gmail.com designates 209.85.208.174 as permitted
 sender) smtp.mailfrom=nimerjaber1@gmail.com
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

--000000000000fc2587060fa536a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I believe this device is using a Braille keyboard, though you can likely
connect a USB keyboard to it. Another solution that was proposed is to set
up a note-taker of sorts using a Raspberry Pi.

On Tue, Jan 23, 2024 at 11:32=E2=80=AFAM Karen Lewellen <klewellen@shellwor=
ld.net>
wrote:

> While that seems to be far more than I need, I am confused by something?
> It references a braille keyboard, but I am in the majority of the sight
> loss population, I do not use braille for input.
> Does this device have an actual  button based input method?
> Karen
>
>
>
> On Mon, 22 Jan 2024, Nimer Jaber wrote:
>
> > Hello,
> >
> > Yes, check out the BT Speak. https://www.blazietech.com/products
> >
> > On Mon, Jan 22, 2024 at 8:39=E2=80=AFPM Karen Lewellen <klewellen@shell=
world.net
> >
> > wrote:
> >
> >> Hi all,
> >> Let me spell out what I mean.
> >> a portable Linux based in terms of being  open source device that can
> >> manage at the very least text files.  Something easy to load files int=
o,
> >> as well as if possible add an open source edition of speech synthesis?
> >> Some work  being done  on dectalk if that resonates.
> >> Does such a device exist?
> >> Karen
> >>
> >>
> >>
> >
> > --
> > Best,
> >
> > Nimer Jaber
> >
> > Check out and subscribe to BlindTechAdventures
> > <https://www.youtube.com/blindtechadventures> in podcast audio form on
> > YouTube for the latest happenings in tech.
> >
> > You can follow @nimerjaber on Twitter <
> https://www.twitter.com/nimerjaber>
> > for the latest technology news.
> >
> > Thank you, and have a great day!
> >



--=20
Best,

Nimer Jaber

Check out and subscribe to BlindTechAdventures
<https://www.youtube.com/blindtechadventures> in podcast audio form on
YouTube for the latest happenings in tech.

You can follow @nimerjaber on Twitter <https://www.twitter.com/nimerjaber>
for the latest technology news.

Thank you, and have a great day!

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--000000000000fc2587060fa536a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I believe this device is using a Braille keyboard, though =
you can likely connect a USB keyboard to it. Another solution that was prop=
osed is to set up a note-taker of sorts using a Raspberry Pi.</div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 23=
, 2024 at 11:32=E2=80=AFAM Karen Lewellen &lt;<a href=3D"mailto:klewellen@s=
hellworld.net">klewellen@shellworld.net</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">While that seems to be far more than=
 I need, I am confused by something?<br>
It references a braille keyboard, but I am in the majority of the sight <br=
>
loss population, I do not use braille for input.<br>
Does this device have an actual=C2=A0 button based input method?<br>
Karen<br>
<br>
<br>
<br>
On Mon, 22 Jan 2024, Nimer Jaber wrote:<br>
<br>
&gt; Hello,<br>
&gt;<br>
&gt; Yes, check out the BT Speak. <a href=3D"https://www.blazietech.com/pro=
ducts" rel=3D"noreferrer" target=3D"_blank">https://www.blazietech.com/prod=
ucts</a><br>
&gt;<br>
&gt; On Mon, Jan 22, 2024 at 8:39=E2=80=AFPM Karen Lewellen &lt;<a href=3D"=
mailto:klewellen@shellworld.net" target=3D"_blank">klewellen@shellworld.net=
</a>&gt;<br>
&gt; wrote:<br>
&gt;<br>
&gt;&gt; Hi all,<br>
&gt;&gt; Let me spell out what I mean.<br>
&gt;&gt; a portable Linux based in terms of being=C2=A0 open source device =
that can<br>
&gt;&gt; manage at the very least text files.=C2=A0 Something easy to load =
files into,<br>
&gt;&gt; as well as if possible add an open source edition of speech synthe=
sis?<br>
&gt;&gt; Some work=C2=A0 being done=C2=A0 on dectalk if that resonates.<br>
&gt;&gt; Does such a device exist?<br>
&gt;&gt; Karen<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt; -- <br>
&gt; Best,<br>
&gt;<br>
&gt; Nimer Jaber<br>
&gt;<br>
&gt; Check out and subscribe to BlindTechAdventures<br>
&gt; &lt;<a href=3D"https://www.youtube.com/blindtechadventures" rel=3D"nor=
eferrer" target=3D"_blank">https://www.youtube.com/blindtechadventures</a>&=
gt; in podcast audio form on<br>
&gt; YouTube for the latest happenings in tech.<br>
&gt;<br>
&gt; You can follow @nimerjaber on Twitter &lt;<a href=3D"https://www.twitt=
er.com/nimerjaber" rel=3D"noreferrer" target=3D"_blank">https://www.twitter=
.com/nimerjaber</a>&gt;<br>
&gt; for the latest technology news.<br>
&gt;<br>
&gt; Thank you, and have a great day!<br>
&gt;</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmai=
l_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Best,<br><br=
>Nimer Jaber<br><br></div><div>Check out and subscribe to=C2=A0<a href=3D"h=
ttps://www.youtube.com/blindtechadventures" target=3D"_blank">BlindTechAdve=
ntures</a> in podcast audio form on YouTube for the latest happenings in te=
ch.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">You can <a href=3D"htt=
ps://www.twitter.com/nimerjaber" target=3D"_blank">follow @nimerjaber on Tw=
itter</a> for the latest technology news.<br><br></div><div dir=3D"ltr">Tha=
nk you, and have a great day!<br></div></div></div></div></div></div></div>=
</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;blinux-list@redhat.com&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--000000000000fc2587060fa536a9--

