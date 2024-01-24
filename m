Return-Path: <blinux-list+bncBC7LHOXXWIIRBJNNYGWQMGQE7LDKBVQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 10ABE839D8F
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jan 2024 01:15:35 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-42a1e487360sf54766271cf.3
        for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 16:15:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706055334; cv=pass;
        d=google.com; s=arc-20160816;
        b=hH0MuWvxTSp+i4nIyM65vsFPAmlIUZT3euVy6lBa72KsLrliL84S2Yc5JRwHS1w97T
         Utz7NvKQFwOy+c6nmSE/3UblqFL69lhyI56CbpoDs1h8zFydkQSohxudk0aYeJEek/Xt
         hdYseQl5m6+FiPhKdOwHzEucGWFDsBtVZjZKmlcr8k5AWKss4lyKlTMhPH7cKBg1f6BI
         rknsVTZ6D2O6MaOtKZEqaY73kMc0rKla6kW7U1LWMXMqPrRgth73oeN4Re9JW96lD8jm
         rbmMN1STG/NVtiHfNJ6vcGQsav8qyJiMHnSWrBLrQxssBybhoWuDPQwG6IzZCENLqr4n
         spHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=eoVrb9AMvTRp45bIw8olF3Lmw5LAozNCkIA+Stt7s8I=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=W1pqdBKPUiEOM9Crp8W4j8ROO5KvazXHs7mHldM/yWK3s+PS0rKLpkPpKHfQMAwz6W
         4aDFUKJadUTYsoGZjvDzMmkGr37MSGZTvsKGm9cfub62W/ZL1N3PXwSxRN3e6Sz3Y4vd
         uQ/SNLR/bGDnNWX8lB0qps1hvtLn71tfXGnn2pqa5ZA2+YwEUWb9ff1VO8IBVfVIAeXF
         LwIUNiGUhPBXcPkaPbXrKRnv7gYMoyxv0L1uaqADnsEttcM4HzEtnU2UogNYdaQAVUPA
         MzVJroFAhADg1k6lOWenP/Z8hPFbTBM9szWldxG7P08hW+ehvX+6yUlvQKHpzDc26T5+
         WDzQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of nimerjaber1@gmail.com designates 209.85.208.175 as permitted sender) smtp.mailfrom=nimerjaber1@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706055334; x=1706660134;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eoVrb9AMvTRp45bIw8olF3Lmw5LAozNCkIA+Stt7s8I=;
        b=WEhg5YV1kuS3VX5IjIJZVXZrBxQt+HzA00uiAq5Z4UE8AQEEY0HFu5ft+Q+fgXOEvT
         XC3wfP8TjDxM6LbDHhWuJHLexRm3jZSkxdbJk3/nwamKC72YkKtEe6ojeoiK6cDQ3FXm
         OU7QuKAVzpLn2B7zj4oTHDzKgOD9EukhqLCX70eS1m+s7o4AQ7NaB9maAz2RWFhbpXfK
         mHcEaofSUZmpyGqnzgv/X3Q8BI0AMHT9DNkKK0z0XxLuoAEOjvdX7sqxzX0RTgmuUWGB
         599FjzHxizgt503YiwPSXfacd1V8CvjZ0eQ3SGX3cVTlJj2bC8Q6ZKvj6lNJClr7KXkK
         RRsA==
X-Gm-Message-State: AOJu0Yww0By4wofPTtBnPUE2tIkgKWzr39oV0ih+VXYBVazyq145Mc9z
	kp41vIDYXyPS6RR8TvIemUGbduudB2DqmM180WEjoRkqyw1LxIFGiaq2xmohbf0=
X-Google-Smtp-Source: AGHT+IF58ZH7dGzPpWH8RcGbs0+HNK8+HW64ICG/s1qUyNKGEIuHpOuGPLBD77mDtQlDMUmADxaLTA==
X-Received: by 2002:ac8:59c5:0:b0:42a:5419:bf83 with SMTP id f5-20020ac859c5000000b0042a5419bf83mr1463461qtf.34.1706055333648;
        Tue, 23 Jan 2024 16:15:33 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:4c8a:0:b0:42a:30ba:32cb with SMTP id j10-20020ac84c8a000000b0042a30ba32cbls3352229qtv.1.-pod-prod-08-us;
 Tue, 23 Jan 2024 16:15:33 -0800 (PST)
X-Received: by 2002:a05:620a:146e:b0:783:9acd:29e4 with SMTP id j14-20020a05620a146e00b007839acd29e4mr4408018qkl.17.1706055332814;
        Tue, 23 Jan 2024 16:15:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706055332; cv=none;
        d=google.com; s=arc-20160816;
        b=FHJ+j7w2Cm4NgULXiYNd6aV8juVoJ8nu4CfpqP5kuIKEs3Cnqt5yQGM6aLIo5Aho7I
         pg3Y9q1hK2lQUgM3HOT+ssueEE+gMltwWbZHefGwNePfug+nKcUn2rfBPmM3LhZpQrc1
         XvArUqZCDI4VmBgmTRD45CSoxEcuvt1TJHYjEoeyF2w+jCF0uz6kX0Gf4Xg3HPCi9KPz
         PpBFSffZmhJWV+9A3h/7BUh/mk6xGqCDXYHudY20zFHoYjThw9KsZBENj0oNbSejErCb
         I7DTWSZXZb6jD/WssBjs0EfptnEXsbTRqJKsNDoq/07Ab856vciU4en2xzq/DCRDxDPH
         UDfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=CrH5yfAYZQbLsQlkCK19ae76ZBuG2LgJE52LAHW+IIs=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=QrnK0uwOmB+DqSrcZ8uwkTYpHH/E7wObIRwR4leiFxzqCsn6F/+mMPxjmtCuUI4txt
         lQuviKjVRw0F3RnNPYdsLDBiDuVyJgjzUwqTCCCTRVQUJtu6UjFIDY1PL49FqxuUm8Zc
         pwX0nw2oyF9k+mR+qaHsyac7SawHfTiWI7cm1183jt4ZyzgZSKy4CyCtZu3TqQcp38A7
         n7Mqv5pHU6BPNUJzeVPBj2jv6TJv0uOtgXSE88+dOaBBSo91lrRZUDMfHp0TciMG6Ej+
         MkVQqG3ydmG2piPIrcAuA49nmwSI4uc0Obr12AMYL+7sjpwoN5h9lm4XDvf0nU5fIR1l
         VReA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of nimerjaber1@gmail.com designates 209.85.208.175 as permitted sender) smtp.mailfrom=nimerjaber1@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id l23-20020a37f517000000b007839e747700si5652914qkk.192.2024.01.23.16.15.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 16:15:32 -0800 (PST)
Received-SPF: pass (google.com: domain of nimerjaber1@gmail.com designates 209.85.208.175 as permitted sender) client-ip=209.85.208.175;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-483-QcCPpasCP3eaFqWkOStPCw-1; Tue, 23 Jan 2024 19:15:31 -0500
X-MC-Unique: QcCPpasCP3eaFqWkOStPCw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 45E5B185A783
	for <blinux-list@gapps.redhat.com>; Wed, 24 Jan 2024 00:15:31 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 42E782166B34; Wed, 24 Jan 2024 00:15:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3BA572166B32
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 00:15:31 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 16EE083106E
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 00:15:31 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-331-TQ4Yp9CYOIiIyI4laV31cw-1; Tue, 23 Jan 2024 19:15:26 -0500
X-MC-Unique: TQ4Yp9CYOIiIyI4laV31cw-1
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2cf1288097aso12371961fa.0
        for <blinux-list@redhat.com>; Tue, 23 Jan 2024 16:15:26 -0800 (PST)
X-Received: by 2002:a05:651c:19ac:b0:2cd:1472:ce0b with SMTP id
 bx44-20020a05651c19ac00b002cd1472ce0bmr316318ljb.47.1706055323857; Tue, 23
 Jan 2024 16:15:23 -0800 (PST)
MIME-Version: 1.0
References: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
 <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com>
 <Pine.LNX.4.64.2401231429500.336098@users.shellworld.net> <CAF2O2CxQbdG-ORf2weztvUF3LESbe=9cdVnXTuF4hrvaXFUQZA@mail.gmail.com>
 <Pine.LNX.4.64.2401231826010.338658@users.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2401231826010.338658@users.shellworld.net>
From: Nimer Jaber <nimerjaber1@gmail.com>
Date: Tue, 23 Jan 2024 16:14:46 -0800
Message-ID: <CAF2O2Cw+6FZ-UyeB8BcfVr6Gyj30kdvXbsPJv1Hm9sBnYGYs=Q@mail.gmail.com>
Subject: Re: Linux e-readers do they exist?
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="0000000000008bba76060fa5f523"
X-Original-Sender: nimerjaber1@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of nimerjaber1@gmail.com designates 209.85.208.175 as permitted
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

--0000000000008bba76060fa5f523
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Karen,

I believe your synth can be installed on any machine, including a Pi,
though only you will know whether a Pi will meet your physical needs.

I don't pretend to keep up with what every disability any given person has
before I respond to queries. If something will work for you, great, if it
won't, well... this is not an inclusive world.

I do actually find myself agreeing with your comments about Braille and
Braille keyboards. I've been saying for a while now that the system that is
so heavily promoted by Blindness entities has failed the majority of the
population it is supposed to serve. There are many reasons for this, of
course, not all those reasons are the fault of Braille. Nevertheless, it is
difficult to make any headway on a literacy system for the Blind when the
majority cannot make use of that system. Nevertheless, it is the best that
exists today that doesn't rely on audio speech, so it is what it is. I
think this about Braille, white canes, and so many solutions that many
Blind people are stuck using because someone somewhere decided it was the
best they could come up with, and nobody has come along and created better
solutions that scale. That's my personal rant, for whatever it's worth,
about how people who are blind, and indeed, many disabilities, have been
and continue to be left behind in so many ways.

I also would love to see some higher-quality keyboard options and choice of
input methods, but I don't have millions in funding, a group of engineers,
UX researchers, investors, etc., to make an ideal solution for people, and
the fact that it hasn't really been done well to this point tells me that
the problem is a tough nut to crack. We are, after all, a minority, and
achieving scale at a minority level in order to bring down costs and
provide user choice is quite difficult when any investor wants to see a
return on their investments and a profitable company.

On Tue, Jan 23, 2024 at 3:32=E2=80=AFPM Karen Lewellen <klewellen@shellworl=
d.net>
wrote:

> let me see if I follow.
> A portable device that raves about working for the blind.  Mandates an
> input method used by less than 10% of the blindness population?
> I did stress dectalk, hacking into a Raspberry pi would not create my
> goal..never mind the absolute lack of an inclusive method for me
> personally pi wise. I might add that needing to Cary around a USB keyboar=
d
> reduces its portability.
> Speaking personally of course, limiting input methods limits  sales  and
> market share.
> Just my thoughts,
>
>
>
> On Tue, 23 Jan 2024, Nimer Jaber wrote:
>
> > I believe this device is using a Braille keyboard, though you can likel=
y
> > connect a USB keyboard to it. Another solution that was proposed is to
> set
> > up a note-taker of sorts using a Raspberry Pi.
> >
> > On Tue, Jan 23, 2024 at 11:32=E2=80=AFAM Karen Lewellen <
> klewellen@shellworld.net>
> > wrote:
> >
> >> While that seems to be far more than I need, I am confused by somethin=
g?
> >> It references a braille keyboard, but I am in the majority of the sigh=
t
> >> loss population, I do not use braille for input.
> >> Does this device have an actual  button based input method?
> >> Karen
> >>
> >>
> >>
> >> On Mon, 22 Jan 2024, Nimer Jaber wrote:
> >>
> >>> Hello,
> >>>
> >>> Yes, check out the BT Speak. https://www.blazietech.com/products
> >>>
> >>> On Mon, Jan 22, 2024 at 8:39=E2=80=AFPM Karen Lewellen <
> klewellen@shellworld.net
> >>>
> >>> wrote:
> >>>
> >>>> Hi all,
> >>>> Let me spell out what I mean.
> >>>> a portable Linux based in terms of being  open source device that ca=
n
> >>>> manage at the very least text files.  Something easy to load files
> into,
> >>>> as well as if possible add an open source edition of speech synthesi=
s?
> >>>> Some work  being done  on dectalk if that resonates.
> >>>> Does such a device exist?
> >>>> Karen
> >>>>
> >>>>
> >>>>
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

--0000000000008bba76060fa5f523
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Karen,<div><br></div><div>I believe your synth can b=
e installed on any machine,=C2=A0including a Pi, though only you will know =
whether a Pi will meet your physical needs.</div><div><br></div><div>I don&=
#39;t pretend to keep up with what every disability any given person has be=
fore I respond to queries. If something will work for you, great, if it won=
&#39;t, well... this is not an inclusive world.</div><div><br></div><div>I =
do actually find myself agreeing with your comments about Braille and Brail=
le keyboards. I&#39;ve been saying for a while now that the system that is =
so heavily promoted by Blindness entities has failed the majority of the po=
pulation it is supposed to serve. There are many reasons for this, of cours=
e, not all those reasons are the fault of Braille. Nevertheless, it is diff=
icult to make any headway on a literacy system for the Blind when the major=
ity cannot make use of that system. Nevertheless, it is the best that exist=
s today that doesn&#39;t rely on audio speech, so it is what it is. I think=
 this about Braille, white canes, and so many solutions that many Blind peo=
ple are stuck using because someone somewhere decided it was the best they =
could come up with, and nobody has come along and created better solutions =
that scale. That&#39;s my personal rant, for whatever it&#39;s worth, about=
 how people who are blind, and indeed, many disabilities, have been and con=
tinue to be left behind in so many ways.</div><div><br></div><div>I also wo=
uld love to see some higher-quality keyboard options and choice of input me=
thods, but I don&#39;t have millions in funding, a group of engineers, UX r=
esearchers, investors, etc., to make an ideal solution for people, and the =
fact that it hasn&#39;t really been done well to this point tells me that t=
he problem is a tough nut to crack. We are, after all, a minority,=C2=A0and=
 achieving scale at a minority level in order to bring down costs and provi=
de user=C2=A0choice is quite difficult when any investor wants to see a ret=
urn on their=C2=A0investments and a profitable=C2=A0company.</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, J=
an 23, 2024 at 3:32=E2=80=AFPM Karen Lewellen &lt;<a href=3D"mailto:klewell=
en@shellworld.net">klewellen@shellworld.net</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">let me see if I follow.<br>
A portable device that raves about working for the blind.=C2=A0 Mandates an=
 <br>
input method used by less than 10% of the blindness population?<br>
I did stress dectalk, hacking into a Raspberry pi would not create my <br>
goal..never mind the absolute lack of an inclusive method for me <br>
personally pi wise. I might add that needing to Cary around a USB keyboard =
<br>
reduces its portability.<br>
Speaking personally of course, limiting input methods limits=C2=A0 sales=C2=
=A0 and <br>
market share.<br>
Just my thoughts,<br>
<br>
<br>
<br>
On Tue, 23 Jan 2024, Nimer Jaber wrote:<br>
<br>
&gt; I believe this device is using a Braille keyboard, though you can like=
ly<br>
&gt; connect a USB keyboard to it. Another solution that was proposed is to=
 set<br>
&gt; up a note-taker of sorts using a Raspberry Pi.<br>
&gt;<br>
&gt; On Tue, Jan 23, 2024 at 11:32=E2=80=AFAM Karen Lewellen &lt;<a href=3D=
"mailto:klewellen@shellworld.net" target=3D"_blank">klewellen@shellworld.ne=
t</a>&gt;<br>
&gt; wrote:<br>
&gt;<br>
&gt;&gt; While that seems to be far more than I need, I am confused by some=
thing?<br>
&gt;&gt; It references a braille keyboard, but I am in the majority of the =
sight<br>
&gt;&gt; loss population, I do not use braille for input.<br>
&gt;&gt; Does this device have an actual=C2=A0 button based input method?<b=
r>
&gt;&gt; Karen<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Mon, 22 Jan 2024, Nimer Jaber wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; Hello,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Yes, check out the BT Speak. <a href=3D"https://www.blazietech=
.com/products" rel=3D"noreferrer" target=3D"_blank">https://www.blazietech.=
com/products</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Mon, Jan 22, 2024 at 8:39=E2=80=AFPM Karen Lewellen &lt;<a =
href=3D"mailto:klewellen@shellworld.net" target=3D"_blank">klewellen@shellw=
orld.net</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Hi all,<br>
&gt;&gt;&gt;&gt; Let me spell out what I mean.<br>
&gt;&gt;&gt;&gt; a portable Linux based in terms of being=C2=A0 open source=
 device that can<br>
&gt;&gt;&gt;&gt; manage at the very least text files.=C2=A0 Something easy =
to load files into,<br>
&gt;&gt;&gt;&gt; as well as if possible add an open source edition of speec=
h synthesis?<br>
&gt;&gt;&gt;&gt; Some work=C2=A0 being done=C2=A0 on dectalk if that resona=
tes.<br>
&gt;&gt;&gt;&gt; Does such a device exist?<br>
&gt;&gt;&gt;&gt; Karen<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; Best,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Nimer Jaber<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Check out and subscribe to BlindTechAdventures<br>
&gt;&gt;&gt; &lt;<a href=3D"https://www.youtube.com/blindtechadventures" re=
l=3D"noreferrer" target=3D"_blank">https://www.youtube.com/blindtechadventu=
res</a>&gt; in podcast audio form on<br>
&gt;&gt;&gt; YouTube for the latest happenings in tech.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; You can follow @nimerjaber on Twitter &lt;<br>
&gt;&gt; <a href=3D"https://www.twitter.com/nimerjaber" rel=3D"noreferrer" =
target=3D"_blank">https://www.twitter.com/nimerjaber</a>&gt;<br>
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

--0000000000008bba76060fa5f523--

