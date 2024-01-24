Return-Path: <blinux-list+bncBC7LHOXXWIIRBHGOYGWQMGQEANMQJSI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0C2839E33
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jan 2024 02:25:50 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-68685a54f98sf33661166d6.2
        for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 17:25:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706059549; cv=pass;
        d=google.com; s=arc-20160816;
        b=UntnzlMYHhHjWQgJhZJR3JQ+5qIbyTvX1FiYlVt6sJiGbO/slAkCROwnNzThEQqlhG
         3TFdVhmKVmjeLjeDUq9zyiyI/dNf2n45x0/K6HQLx/6/z+UOCQt2EaWCNfKYl3cnlOjp
         nwP+pgyPReTatv/Y6rgeOp2vyXsmM6Bt/lLuoRg67YMmukc2oU26P0XTpaHndohMkGMc
         UFL0pYnE98CLO6d5SFDBHdUJGHVthAL86ACr+XrQFKmUFw1uNUUGLMmdmuFTOMD2fWbp
         UaUelvddP74/+2iiR715vH4q2QW+7zD6YjoY0hivS8EjjLnUBnkJnPOLS2a4swRzT1DA
         9Y9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=LWs/MsdPbrxXegfzMEDSo4QSu+EqGUe3BIPAQnZ9drY=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=1FCSauqe1YMvYRce1M543G8y6Z7nvGzPZW8pROhfenHDKg1CJodFOm+pri+IgSYss6
         nAcI/zpIAjTOn2xFarjkwORrBaE2/pBgtgcuO+giTzi+g06cdI0yLRjnlyb3IaCJp0l7
         tpFt90Is6vq4uR3SSKA4TpH74896U3v4pFbNRtp0W74jVJ2e+B6Sd64Bxi0dWMQWU4Op
         VBhyVqSaZc+4O4CwI712PyEqjdD3TAkl4ltOOLmGQfxneJPQUYtFobHne/Q1C1s/k9n4
         Tpb7h6/CkLogYozhExcPwnW2Begey1ht+ptk6iJpEYS8KRMOSYi15jUHvO3ZoNSOqoAy
         +y+Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of nimerjaber1@gmail.com designates 209.85.208.182 as permitted sender) smtp.mailfrom=nimerjaber1@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706059549; x=1706664349;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LWs/MsdPbrxXegfzMEDSo4QSu+EqGUe3BIPAQnZ9drY=;
        b=LKwk9bDxtHctKVsLR7v+fnQLEG2+l70bmrInbZ+DfL/wwvYYhs/6ZqGBLvYblWaSNK
         HBVurkLdSjjSW/t+5jIQZ7ahqCcUjQIMcssVCwfH/Vz6dJj+CU/zuqAKiTViP1RJr9tY
         TqEXKjh9mA2IuaB+OY+yDfXPT4IA5bVnu0Fvq9H5KnGy3fF0BdDJEUbGh6JaJch6o3HA
         fLHPsrjU1eOjaWE1Zb8E2RSGTISK86ManUZW32WyobQxkKtfE0u1imlHAdrGTgvMwDe7
         ac78KmB5MgxqEruC1SMerClAtrMdDpzM5njJ+ViH/B7MJV7G6UyJDt1vuec3bjd/FfhQ
         ZzxQ==
X-Gm-Message-State: AOJu0YzPsozdThALZ5oVQ9e4eYvOfogRG8+FVLMYsj+CT++NqZG/aDrM
	YMGHaGsm7oYlHrpopYBX6Lfw8nX2qwNLpKl71hwF2ibFCJwQhsc/J0R5qXWSIfA=
X-Google-Smtp-Source: AGHT+IHihSsG3eOZw0RZkp+PtbHP11toviUZj6qPR2lHTZH4F7TNXTU1mn76XjX5GJ/cmO3oD7A1og==
X-Received: by 2002:a05:6214:262a:b0:684:6077:f923 with SMTP id gv10-20020a056214262a00b006846077f923mr1775641qvb.5.1706059549215;
        Tue, 23 Jan 2024 17:25:49 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:a994:0:b0:681:97c6:44c9 with SMTP id a20-20020a0ca994000000b0068197c644c9ls2625024qvb.1.-pod-prod-02-us;
 Tue, 23 Jan 2024 17:25:48 -0800 (PST)
X-Received: by 2002:a05:620a:2408:b0:783:9006:11f9 with SMTP id d8-20020a05620a240800b00783900611f9mr7679801qkn.153.1706059548418;
        Tue, 23 Jan 2024 17:25:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706059548; cv=none;
        d=google.com; s=arc-20160816;
        b=Af91sG0vwWP4iEBCvW3Roqul0Gs/nrvhSaREAoafWUQE43VrFmFX4CZ/oE797biYyf
         CY+afSbyXShDVQqMEomIHXeOonpQDwbdT2BKGXDJIrkOkA1IDScP3sdz+T5AOX32f8Ei
         C8tTDZRe2QeHb/raYsd4EXQn2QK3Kr16HrQR16dEYLMeKM2nVE5DfNGZs4hwRNIunSRH
         xlX92Gg1H/P2qn5ihIbMV99W+CafWux0mx2XlSfnMh3fNdQlgZ6KgpiMJ29PJOH80vot
         WO9HYFhSI6h71wrk7e3uof+/8PMPPwoSIeXKZsMBuAbrc2HtnnVRVllQAygVHn6CLoYw
         DnEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=+6cWPXuC2jN30yt2XOzIbCF+NUIyUY8x6DHTNgeLMVw=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=DGDkqFbB7HhqYRhoCRIsDumegqG1mhJ9C5/b1igYcBGBzj58fSlbQBnMJIHKy3YACa
         MhHE5cFCmWRAGvpzRpITQmYXJVPaNuv+AMmzWkbbS7q6ijirjZpehIPtETd+Kt5IwxFl
         Cx1mTcHOSDlG1d01uM8ZadLeNxIkITQPbhYmyucrFlxHjFbHqJyOdHaso14Jvyngqga0
         cr6I0ODoCOjW/YVM7vnig/7+quFFl8n514R+IUBE6NMFUPLCBazxD5TQzt5YyRy96sng
         9FneOWORmR6yH7P3Sx8vyq6KCGhkumYwkqDUYDRUE1CwYR4FXjMNCctEnT1FtZhdCj47
         fPIw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of nimerjaber1@gmail.com designates 209.85.208.182 as permitted sender) smtp.mailfrom=nimerjaber1@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id br31-20020a05620a461f00b00783b4b9f348si210738qkb.329.2024.01.23.17.25.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 17:25:48 -0800 (PST)
Received-SPF: pass (google.com: domain of nimerjaber1@gmail.com designates 209.85.208.182 as permitted sender) client-ip=209.85.208.182;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-112-vfuy9xMBP2eG-7ESWytuGw-1; Tue,
 23 Jan 2024 20:25:46 -0500
X-MC-Unique: vfuy9xMBP2eG-7ESWytuGw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8555C1C03D81
	for <blinux-list@gapps.redhat.com>; Wed, 24 Jan 2024 01:25:46 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 825AC1C060B3; Wed, 24 Jan 2024 01:25:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A35C1C060AF
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 01:25:46 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5423A1C03D81
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 01:25:46 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-90-fLM3UIWYP5uur00e2XvIKg-1; Tue, 23 Jan 2024 20:25:43 -0500
X-MC-Unique: fLM3UIWYP5uur00e2XvIKg-1
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2cd1a1c5addso58747421fa.1
        for <blinux-list@redhat.com>; Tue, 23 Jan 2024 17:25:43 -0800 (PST)
X-Received: by 2002:a2e:7d08:0:b0:2cf:23e:3d27 with SMTP id
 y8-20020a2e7d08000000b002cf023e3d27mr317317ljc.21.1706059541787; Tue, 23 Jan
 2024 17:25:41 -0800 (PST)
MIME-Version: 1.0
References: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
 <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com>
 <Pine.LNX.4.64.2401231429500.336098@users.shellworld.net> <CAF2O2CxQbdG-ORf2weztvUF3LESbe=9cdVnXTuF4hrvaXFUQZA@mail.gmail.com>
 <Pine.LNX.4.64.2401231826010.338658@users.shellworld.net> <CAF2O2Cw+6FZ-UyeB8BcfVr6Gyj30kdvXbsPJv1Hm9sBnYGYs=Q@mail.gmail.com>
 <Pine.LNX.4.64.2401232018370.339927@users.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2401232018370.339927@users.shellworld.net>
From: Nimer Jaber <nimerjaber1@gmail.com>
Date: Tue, 23 Jan 2024 17:25:32 -0800
Message-ID: <CAF2O2CzM57KztRTkiJDP_u8V2zVZqYptTB8JyUaRyrx99MYNGQ@mail.gmail.com>
Subject: Re: Linux e-readers do they exist?
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="000000000000f43836060fa6f083"
X-Original-Sender: nimerjaber1@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of nimerjaber1@gmail.com designates 209.85.208.182 as permitted
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

--000000000000f43836060fa6f083
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Respectfully, I offered a solution. If it doesn=E2=80=99t work for you, or =
if you
object to the cost, or whatever, fine. I never claimed the product worked
for a majority. I provided it as a possible answer to your question. Do
what you want with that information or don=E2=80=99t, I really don=E2=80=99=
t care.

On Tue, Jan 23, 2024, 17:21 Karen Lewellen <klewellen@shellworld.net> wrote=
:

> We are talking about the experience of blindness, not another disability.
> braille is not used by 90% of those experiencing blindness.
> Your suggestion would be solid, dectalk is referenced, but the input
> method is one not used by 90% of those experiencing blindness.
>
>
>
> On Tue, 23 Jan 2024, Nimer Jaber wrote:
>
> > Hello Karen,
> >
> > I believe your synth can be installed on any machine, including a Pi,
> > though only you will know whether a Pi will meet your physical needs.
> >
> > I don't pretend to keep up with what every disability any given person
> has
> > before I respond to queries. If something will work for you, great, if =
it
> > won't, well... this is not an inclusive world.
> >
> > I do actually find myself agreeing with your comments about Braille and
> > Braille keyboards. I've been saying for a while now that the system tha=
t
> is
> > so heavily promoted by Blindness entities has failed the majority of th=
e
> > population it is supposed to serve. There are many reasons for this, of
> > course, not all those reasons are the fault of Braille. Nevertheless, i=
t
> is
> > difficult to make any headway on a literacy system for the Blind when t=
he
> > majority cannot make use of that system. Nevertheless, it is the best
> that
> > exists today that doesn't rely on audio speech, so it is what it is. I
> > think this about Braille, white canes, and so many solutions that many
> > Blind people are stuck using because someone somewhere decided it was t=
he
> > best they could come up with, and nobody has come along and created
> better
> > solutions that scale. That's my personal rant, for whatever it's worth,
> > about how people who are blind, and indeed, many disabilities, have bee=
n
> > and continue to be left behind in so many ways.
> >
> > I also would love to see some higher-quality keyboard options and choic=
e
> of
> > input methods, but I don't have millions in funding, a group of
> engineers,
> > UX researchers, investors, etc., to make an ideal solution for people,
> and
> > the fact that it hasn't really been done well to this point tells me th=
at
> > the problem is a tough nut to crack. We are, after all, a minority, and
> > achieving scale at a minority level in order to bring down costs and
> > provide user choice is quite difficult when any investor wants to see a
> > return on their investments and a profitable company.
> >
> > On Tue, Jan 23, 2024 at 3:32=E2=80=AFPM Karen Lewellen <klewellen@shell=
world.net
> >
> > wrote:
> >
> >> let me see if I follow.
> >> A portable device that raves about working for the blind.  Mandates an
> >> input method used by less than 10% of the blindness population?
> >> I did stress dectalk, hacking into a Raspberry pi would not create my
> >> goal..never mind the absolute lack of an inclusive method for me
> >> personally pi wise. I might add that needing to Cary around a USB
> keyboard
> >> reduces its portability.
> >> Speaking personally of course, limiting input methods limits  sales  a=
nd
> >> market share.
> >> Just my thoughts,
> >>
> >>
> >>
> >> On Tue, 23 Jan 2024, Nimer Jaber wrote:
> >>
> >>> I believe this device is using a Braille keyboard, though you can
> likely
> >>> connect a USB keyboard to it. Another solution that was proposed is t=
o
> >> set
> >>> up a note-taker of sorts using a Raspberry Pi.
> >>>
> >>> On Tue, Jan 23, 2024 at 11:32=E2=80=AFAM Karen Lewellen <
> >> klewellen@shellworld.net>
> >>> wrote:
> >>>
> >>>> While that seems to be far more than I need, I am confused by
> something?
> >>>> It references a braille keyboard, but I am in the majority of the
> sight
> >>>> loss population, I do not use braille for input.
> >>>> Does this device have an actual  button based input method?
> >>>> Karen
> >>>>
> >>>>
> >>>>
> >>>> On Mon, 22 Jan 2024, Nimer Jaber wrote:
> >>>>
> >>>>> Hello,
> >>>>>
> >>>>> Yes, check out the BT Speak. https://www.blazietech.com/products
> >>>>>
> >>>>> On Mon, Jan 22, 2024 at 8:39=E2=80=AFPM Karen Lewellen <
> >> klewellen@shellworld.net
> >>>>>
> >>>>> wrote:
> >>>>>
> >>>>>> Hi all,
> >>>>>> Let me spell out what I mean.
> >>>>>> a portable Linux based in terms of being  open source device that
> can
> >>>>>> manage at the very least text files.  Something easy to load files
> >> into,
> >>>>>> as well as if possible add an open source edition of speech
> synthesis?
> >>>>>> Some work  being done  on dectalk if that resonates.
> >>>>>> Does such a device exist?
> >>>>>> Karen
> >>>>>>
> >>>>>>
> >>>>>>
> >>>>>
> >>>>> --
> >>>>> Best,
> >>>>>
> >>>>> Nimer Jaber
> >>>>>
> >>>>> Check out and subscribe to BlindTechAdventures
> >>>>> <https://www.youtube.com/blindtechadventures> in podcast audio form
> on
> >>>>> YouTube for the latest happenings in tech.
> >>>>>
> >>>>> You can follow @nimerjaber on Twitter <
> >>>> https://www.twitter.com/nimerjaber>
> >>>>> for the latest technology news.
> >>>>>
> >>>>> Thank you, and have a great day!
> >>>>>
> >>>
> >>>
> >>>
> >>> --
> >>> Best,
> >>>
> >>> Nimer Jaber
> >>>
> >>> Check out and subscribe to BlindTechAdventures
> >>> <https://www.youtube.com/blindtechadventures> in podcast audio form o=
n
> >>> YouTube for the latest happenings in tech.
> >>>
> >>> You can follow @nimerjaber on Twitter <
> >> https://www.twitter.com/nimerjaber>
> >>> for the latest technology news.
> >>>
> >>> Thank you, and have a great day!
> >>>
> >
> >
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
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--000000000000f43836060fa6f083
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Respectfully, I offered a solution. If it doesn=E2=80=99t=
 work for you, or if you object to the cost, or whatever, fine. I never cla=
imed the product worked for a majority. I provided it as a possible answer =
to your question. Do what you want with that information or don=E2=80=99t, =
I really don=E2=80=99t care.</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Jan 23, 2024, 17:21 Karen Lewellen &l=
t;<a href=3D"mailto:klewellen@shellworld.net">klewellen@shellworld.net</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">We are talking about the=
 experience of blindness, not another disability.<br>
braille is not used by 90% of those experiencing blindness.<br>
Your suggestion would be solid, dectalk is referenced, but the input <br>
method is one not used by 90% of those experiencing blindness.<br>
<br>
<br>
<br>
On Tue, 23 Jan 2024, Nimer Jaber wrote:<br>
<br>
&gt; Hello Karen,<br>
&gt;<br>
&gt; I believe your synth can be installed on any machine, including a Pi,<=
br>
&gt; though only you will know whether a Pi will meet your physical needs.<=
br>
&gt;<br>
&gt; I don&#39;t pretend to keep up with what every disability any given pe=
rson has<br>
&gt; before I respond to queries. If something will work for you, great, if=
 it<br>
&gt; won&#39;t, well... this is not an inclusive world.<br>
&gt;<br>
&gt; I do actually find myself agreeing with your comments about Braille an=
d<br>
&gt; Braille keyboards. I&#39;ve been saying for a while now that the syste=
m that is<br>
&gt; so heavily promoted by Blindness entities has failed the majority of t=
he<br>
&gt; population it is supposed to serve. There are many reasons for this, o=
f<br>
&gt; course, not all those reasons are the fault of Braille. Nevertheless, =
it is<br>
&gt; difficult to make any headway on a literacy system for the Blind when =
the<br>
&gt; majority cannot make use of that system. Nevertheless, it is the best =
that<br>
&gt; exists today that doesn&#39;t rely on audio speech, so it is what it i=
s. I<br>
&gt; think this about Braille, white canes, and so many solutions that many=
<br>
&gt; Blind people are stuck using because someone somewhere decided it was =
the<br>
&gt; best they could come up with, and nobody has come along and created be=
tter<br>
&gt; solutions that scale. That&#39;s my personal rant, for whatever it&#39=
;s worth,<br>
&gt; about how people who are blind, and indeed, many disabilities, have be=
en<br>
&gt; and continue to be left behind in so many ways.<br>
&gt;<br>
&gt; I also would love to see some higher-quality keyboard options and choi=
ce of<br>
&gt; input methods, but I don&#39;t have millions in funding, a group of en=
gineers,<br>
&gt; UX researchers, investors, etc., to make an ideal solution for people,=
 and<br>
&gt; the fact that it hasn&#39;t really been done well to this point tells =
me that<br>
&gt; the problem is a tough nut to crack. We are, after all, a minority, an=
d<br>
&gt; achieving scale at a minority level in order to bring down costs and<b=
r>
&gt; provide user choice is quite difficult when any investor wants to see =
a<br>
&gt; return on their investments and a profitable company.<br>
&gt;<br>
&gt; On Tue, Jan 23, 2024 at 3:32=E2=80=AFPM Karen Lewellen &lt;<a href=3D"=
mailto:klewellen@shellworld.net" target=3D"_blank" rel=3D"noreferrer">klewe=
llen@shellworld.net</a>&gt;<br>
&gt; wrote:<br>
&gt;<br>
&gt;&gt; let me see if I follow.<br>
&gt;&gt; A portable device that raves about working for the blind.=C2=A0 Ma=
ndates an<br>
&gt;&gt; input method used by less than 10% of the blindness population?<br=
>
&gt;&gt; I did stress dectalk, hacking into a Raspberry pi would not create=
 my<br>
&gt;&gt; goal..never mind the absolute lack of an inclusive method for me<b=
r>
&gt;&gt; personally pi wise. I might add that needing to Cary around a USB =
keyboard<br>
&gt;&gt; reduces its portability.<br>
&gt;&gt; Speaking personally of course, limiting input methods limits=C2=A0=
 sales=C2=A0 and<br>
&gt;&gt; market share.<br>
&gt;&gt; Just my thoughts,<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Tue, 23 Jan 2024, Nimer Jaber wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; I believe this device is using a Braille keyboard, though you =
can likely<br>
&gt;&gt;&gt; connect a USB keyboard to it. Another solution that was propos=
ed is to<br>
&gt;&gt; set<br>
&gt;&gt;&gt; up a note-taker of sorts using a Raspberry Pi.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Tue, Jan 23, 2024 at 11:32=E2=80=AFAM Karen Lewellen &lt;<b=
r>
&gt;&gt; <a href=3D"mailto:klewellen@shellworld.net" target=3D"_blank" rel=
=3D"noreferrer">klewellen@shellworld.net</a>&gt;<br>
&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; While that seems to be far more than I need, I am confused=
 by something?<br>
&gt;&gt;&gt;&gt; It references a braille keyboard, but I am in the majority=
 of the sight<br>
&gt;&gt;&gt;&gt; loss population, I do not use braille for input.<br>
&gt;&gt;&gt;&gt; Does this device have an actual=C2=A0 button based input m=
ethod?<br>
&gt;&gt;&gt;&gt; Karen<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Mon, 22 Jan 2024, Nimer Jaber wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Hello,<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Yes, check out the BT Speak. <a href=3D"https://www.bl=
azietech.com/products" rel=3D"noreferrer noreferrer" target=3D"_blank">http=
s://www.blazietech.com/products</a><br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Mon, Jan 22, 2024 at 8:39=E2=80=AFPM Karen Lewellen=
 &lt;<br>
&gt;&gt; <a href=3D"mailto:klewellen@shellworld.net" target=3D"_blank" rel=
=3D"noreferrer">klewellen@shellworld.net</a><br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Hi all,<br>
&gt;&gt;&gt;&gt;&gt;&gt; Let me spell out what I mean.<br>
&gt;&gt;&gt;&gt;&gt;&gt; a portable Linux based in terms of being=C2=A0 ope=
n source device that can<br>
&gt;&gt;&gt;&gt;&gt;&gt; manage at the very least text files.=C2=A0 Somethi=
ng easy to load files<br>
&gt;&gt; into,<br>
&gt;&gt;&gt;&gt;&gt;&gt; as well as if possible add an open source edition =
of speech synthesis?<br>
&gt;&gt;&gt;&gt;&gt;&gt; Some work=C2=A0 being done=C2=A0 on dectalk if tha=
t resonates.<br>
&gt;&gt;&gt;&gt;&gt;&gt; Does such a device exist?<br>
&gt;&gt;&gt;&gt;&gt;&gt; Karen<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt;&gt; Best,<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Nimer Jaber<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Check out and subscribe to BlindTechAdventures<br>
&gt;&gt;&gt;&gt;&gt; &lt;<a href=3D"https://www.youtube.com/blindtechadvent=
ures" rel=3D"noreferrer noreferrer" target=3D"_blank">https://www.youtube.c=
om/blindtechadventures</a>&gt; in podcast audio form on<br>
&gt;&gt;&gt;&gt;&gt; YouTube for the latest happenings in tech.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; You can follow @nimerjaber on Twitter &lt;<br>
&gt;&gt;&gt;&gt; <a href=3D"https://www.twitter.com/nimerjaber" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">https://www.twitter.com/nimerjaber</a>=
&gt;<br>
&gt;&gt;&gt;&gt;&gt; for the latest technology news.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Thank you, and have a great day!<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; Best,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Nimer Jaber<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Check out and subscribe to BlindTechAdventures<br>
&gt;&gt;&gt; &lt;<a href=3D"https://www.youtube.com/blindtechadventures" re=
l=3D"noreferrer noreferrer" target=3D"_blank">https://www.youtube.com/blind=
techadventures</a>&gt; in podcast audio form on<br>
&gt;&gt;&gt; YouTube for the latest happenings in tech.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; You can follow @nimerjaber on Twitter &lt;<br>
&gt;&gt; <a href=3D"https://www.twitter.com/nimerjaber" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">https://www.twitter.com/nimerjaber</a>&gt;<br>
&gt;&gt;&gt; for the latest technology news.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thank you, and have a great day!<br>
&gt;&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; -- <br>
&gt; Best,<br>
&gt;<br>
&gt; Nimer Jaber<br>
&gt;<br>
&gt; Check out and subscribe to BlindTechAdventures<br>
&gt; &lt;<a href=3D"https://www.youtube.com/blindtechadventures" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">https://www.youtube.com/blindtechadve=
ntures</a>&gt; in podcast audio form on<br>
&gt; YouTube for the latest happenings in tech.<br>
&gt;<br>
&gt; You can follow @nimerjaber on Twitter &lt;<a href=3D"https://www.twitt=
er.com/nimerjaber" rel=3D"noreferrer noreferrer" target=3D"_blank">https://=
www.twitter.com/nimerjaber</a>&gt;<br>
&gt; for the latest technology news.<br>
&gt;<br>
&gt; Thank you, and have a great day!<br>
&gt;</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;blinux-list@redhat.com&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--000000000000f43836060fa6f083--

