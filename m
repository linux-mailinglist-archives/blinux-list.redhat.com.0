Return-Path: <blinux-list+bncBC7LHOXXWIIRBAGXYGWQMGQEXOO4ZIA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mail.lfdr.de (Postfix) with ESMTPS id B295E839E62
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jan 2024 02:44:34 +0100 (CET)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-6dbdc7135bfsf4119376a34.2
        for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 17:44:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706060673; cv=pass;
        d=google.com; s=arc-20160816;
        b=NH/nCSD/eGORm2eSMAOHeDWHNMBJ7/eGR9Wb5eaSwphJyBl5IaO3ztdWeamTiunmPy
         wJlnfQveIIxmTl/cO9uHAWwYxJmlrKsO4OYUmR5tLcBQYi2pqyoldAPp80gvZnzbPB/8
         A0BPAoRRQqSAyCDE/9CAGRzV9jTtZcs9lC86gsCTzO+QhXhR8xgAJy9g2DdoAoWU1MXp
         uGdqStNrG2QzzLmu7M6WyE/BBghIxnXiDkAALY5yfZ1lR/PQl57vtkFqi45vzMuEc2Xv
         wE2xoxSsmb6Yzw1KKP/sw4Fr+ZX/3Sj+rvCkn+qBzLRdr3klRf/LNlspDk3Pvjq7PLW+
         Calw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=HTQoKJxmOPSxzleCh7q81Kh/eGo+BlBBZmoDxILm5h4=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=QifL6F2GxqI8s3QZvPb1EEHd7GCe0XzCa4OVHW/LJle3LFtAPANPNYAQk/jlFDvhDO
         85ylLxqnc6of2Pkkp5EiUfiWRzxU1XicAtdqdOk4b2yqquxE503Y4rDCccIy1K5dODDc
         K4oL+lUNDDcy4ItQ6yXIh3kUFPjUgIt6CThv3rW3r7kPUfYxDoaSSmuxzMRJsJ97qFM3
         MapNL24gox4an+4MHVCoUnqGoz+dXF9xbatwxQQQT8ZY40kHVAen5u94Pau7F+7lo1+J
         sSPD1eWoxLL/Ow30vIogqa85lfLXBPpiNJKSXdHjljrzpnW3i7W3HbVgh/JXgGoRrP7R
         VKPw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of nimerjaber1@gmail.com designates 209.85.208.171 as permitted sender) smtp.mailfrom=nimerjaber1@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706060673; x=1706665473;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HTQoKJxmOPSxzleCh7q81Kh/eGo+BlBBZmoDxILm5h4=;
        b=qAGXepsJC7X53MF6KEBH/ARxaYwxaai+dFMQPewtseZBRaVmL5InAv0gOCzt+2Avqs
         KWpMdZdi0jHAuc7TLMFNYMDuBUqJGQd/qEO6j+cqqvVqeuOVCkjlGxbYTtDIScdv/mCF
         QTAYLHBGySbGSPucfLCA6dN9vDnHlqnExU3s/tTCVWtwn9psXY5FDhjOHeconpRE2FfB
         pAQ8uT4FQVC8SHyVBj5HcVcBPP11qYB3kMN4kcABAnSPMd1j0aVkRubkCR8MzSQSZkGG
         JnhI6PPM9pXFBt50k9ICmk5AfYccUY0fNfDHI9iIy/YLT40S6t7M6iMRRbAWvB9p0fqt
         AiYA==
X-Gm-Message-State: AOJu0Yw8ajHVchLJeIdi8jP5rPpaZ0B4l1lXremfls9sN7mWpnvTWvRW
	AkWbV0ooqelFZ+g7+nivk2aglfJJB8DnEck13PyugCnoeaGY6MrwHBSBqmXHVrg=
X-Google-Smtp-Source: AGHT+IFtXNGJrpxaDbCawQSOfgQw3bsKpxas5hJcSr5tLem+Qhf1CXuQOVABw66ennkrUagZJ5A5PA==
X-Received: by 2002:a9d:6e06:0:b0:6dc:3e02:92aa with SMTP id e6-20020a9d6e06000000b006dc3e0292aamr769110otr.22.1706060673130;
        Tue, 23 Jan 2024 17:44:33 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:b345:0:b0:67a:203f:dbc7 with SMTP id a5-20020a0cb345000000b0067a203fdbc7ls2551590qvf.1.-pod-prod-06-us;
 Tue, 23 Jan 2024 17:44:32 -0800 (PST)
X-Received: by 2002:a05:6214:f01:b0:685:1ece:8d05 with SMTP id gw1-20020a0562140f0100b006851ece8d05mr2023201qvb.79.1706060672364;
        Tue, 23 Jan 2024 17:44:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706060672; cv=none;
        d=google.com; s=arc-20160816;
        b=c2RhN89wAeIYYLHmXVxevC+7mdXUSSURw05M1WOpbtKjUhO45ONsXliaqWpEyTKY9V
         AfbPK9y2PBGx7HZmBO+Wc+EAyU3ssnCahbccrm/ikoVrUPSaqMjhh5CPJORlE8vHPWv0
         Q+1jyWanvplCQWyOuWBn90XV256H/a9f2NI6rtXvgPwkAQAxJeK1VgYjGZelBulPqf8o
         VDPUeUgVCMradI2ud1VDLCuqCApxpUEcYE/XfQWw1PpvXkREx9dzwOnN8xUGDvPHEEae
         3O9mXNHJqwviuNhygDS0bxkqW0hB+GosERsCAHj1pusy3w9RtdAa8SE/NpbXq9H9z0dE
         vAHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=52RKTchjDZfoNJK4jyb/zUduG3ExYRytKbvbIPCjw7o=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=dBLtL5mUzWqRkyN6StMwgYL1MSYK86pEXFhPOI6gzHmELy13bKAn/BcYKQCnrISK45
         gspzrGvyYvYgSP+UPzbUkWwzW7UOdqBn8RmwKtgfnMB6Lo+Ob3eSrPjxZ0XJYyUk+t4J
         YSI+jWXgG9JfHRqd8k1WJIPYFCYsu/fIG1JmO7BrnW3QRWfjmqX3wQT8fFUcXL/flRCT
         ewkx+MykAyX2n7y0A+hDMpl9calBWS9E+J+JgTHECpTbnjvHjVEqvbdCRa1ex/YnmAhk
         32ONGEaWzRr4fRcOXuYh3fpRPtc+getufMAETRqu61OIJfZvYAhysQ0ndirHZ/9Adlzu
         /Ctw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of nimerjaber1@gmail.com designates 209.85.208.171 as permitted sender) smtp.mailfrom=nimerjaber1@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id n10-20020ac85a0a000000b0042a53198309si2005199qta.13.2024.01.23.17.44.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 17:44:32 -0800 (PST)
Received-SPF: pass (google.com: domain of nimerjaber1@gmail.com designates 209.85.208.171 as permitted sender) client-ip=209.85.208.171;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-490-d3rVZQPZNUiSt249HH2OVQ-1; Tue, 23 Jan 2024 20:44:30 -0500
X-MC-Unique: d3rVZQPZNUiSt249HH2OVQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8770B84A297
	for <blinux-list@gapps.redhat.com>; Wed, 24 Jan 2024 01:44:30 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 842C1400D288; Wed, 24 Jan 2024 01:44:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7CC8840C1430
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 01:44:30 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5514F10193DB
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 01:44:30 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-427-vjijNYYrNvWRfrqwv5qXUA-1; Tue, 23 Jan 2024 20:44:27 -0500
X-MC-Unique: vjijNYYrNvWRfrqwv5qXUA-1
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2cddb0ee311so53368151fa.0
        for <blinux-list@redhat.com>; Tue, 23 Jan 2024 17:44:26 -0800 (PST)
X-Received: by 2002:a05:651c:218:b0:2cd:f563:2e76 with SMTP id
 y24-20020a05651c021800b002cdf5632e76mr191947ljn.24.1706060665486; Tue, 23 Jan
 2024 17:44:25 -0800 (PST)
MIME-Version: 1.0
References: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
 <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com>
 <Pine.LNX.4.64.2401231429500.336098@users.shellworld.net> <CAF2O2CxQbdG-ORf2weztvUF3LESbe=9cdVnXTuF4hrvaXFUQZA@mail.gmail.com>
 <Pine.LNX.4.64.2401231826010.338658@users.shellworld.net> <CAF2O2Cw+6FZ-UyeB8BcfVr6Gyj30kdvXbsPJv1Hm9sBnYGYs=Q@mail.gmail.com>
 <Pine.LNX.4.64.2401232018370.339927@users.shellworld.net> <CAF2O2CzM57KztRTkiJDP_u8V2zVZqYptTB8JyUaRyrx99MYNGQ@mail.gmail.com>
 <Pine.LNX.4.64.2401232031110.340238@users.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2401232031110.340238@users.shellworld.net>
From: Nimer Jaber <nimerjaber1@gmail.com>
Date: Tue, 23 Jan 2024 17:44:16 -0800
Message-ID: <CAF2O2Cz=JVPJPXC4JLYJKaC=fhnpCQpg_o_bHrRCGNnt=EOyxg@mail.gmail.com>
Subject: Re: Linux e-readers do they exist?
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="000000000000ee83ab060fa73300"
X-Original-Sender: nimerjaber1@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of nimerjaber1@gmail.com designates 209.85.208.171 as permitted
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

--000000000000ee83ab060fa73300
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Karen,

I hope you find a solution that meets your needs. Whether you do so by
accident or otherwise. Be well.

On Tue, Jan 23, 2024, 17:33 Karen Lewellen <klewellen@shellworld.net> wrote=
:

> Respectfully, offering a solution  that does not take into account the
> majority of the target market for that solution is concerning.
> I said nothing about the price at all.
> You did, perhaps by accident, find a solution claiming to incorporate
> dectalk  voices.
>
>
>
> On Tue, 23 Jan 2024, Nimer Jaber wrote:
>
> > Respectfully, I offered a solution. If it doesn=E2=80=99t work for you,=
 or if you
> > object to the cost, or whatever, fine. I never claimed the product work=
ed
> > for a majority. I provided it as a possible answer to your question. Do
> > what you want with that information or don=E2=80=99t, I really don=E2=
=80=99t care.
> >
> > On Tue, Jan 23, 2024, 17:21 Karen Lewellen <klewellen@shellworld.net>
> wrote:
> >
> >> We are talking about the experience of blindness, not another
> disability.
> >> braille is not used by 90% of those experiencing blindness.
> >> Your suggestion would be solid, dectalk is referenced, but the input
> >> method is one not used by 90% of those experiencing blindness.
> >>
> >>
> >>
> >> On Tue, 23 Jan 2024, Nimer Jaber wrote:
> >>
> >>> Hello Karen,
> >>>
> >>> I believe your synth can be installed on any machine, including a Pi,
> >>> though only you will know whether a Pi will meet your physical needs.
> >>>
> >>> I don't pretend to keep up with what every disability any given perso=
n
> >> has
> >>> before I respond to queries. If something will work for you, great, i=
f
> it
> >>> won't, well... this is not an inclusive world.
> >>>
> >>> I do actually find myself agreeing with your comments about Braille a=
nd
> >>> Braille keyboards. I've been saying for a while now that the system
> that
> >> is
> >>> so heavily promoted by Blindness entities has failed the majority of
> the
> >>> population it is supposed to serve. There are many reasons for this, =
of
> >>> course, not all those reasons are the fault of Braille. Nevertheless,
> it
> >> is
> >>> difficult to make any headway on a literacy system for the Blind when
> the
> >>> majority cannot make use of that system. Nevertheless, it is the best
> >> that
> >>> exists today that doesn't rely on audio speech, so it is what it is. =
I
> >>> think this about Braille, white canes, and so many solutions that man=
y
> >>> Blind people are stuck using because someone somewhere decided it was
> the
> >>> best they could come up with, and nobody has come along and created
> >> better
> >>> solutions that scale. That's my personal rant, for whatever it's wort=
h,
> >>> about how people who are blind, and indeed, many disabilities, have
> been
> >>> and continue to be left behind in so many ways.
> >>>
> >>> I also would love to see some higher-quality keyboard options and
> choice
> >> of
> >>> input methods, but I don't have millions in funding, a group of
> >> engineers,
> >>> UX researchers, investors, etc., to make an ideal solution for people=
,
> >> and
> >>> the fact that it hasn't really been done well to this point tells me
> that
> >>> the problem is a tough nut to crack. We are, after all, a minority, a=
nd
> >>> achieving scale at a minority level in order to bring down costs and
> >>> provide user choice is quite difficult when any investor wants to see=
 a
> >>> return on their investments and a profitable company.
> >>>
> >>> On Tue, Jan 23, 2024 at 3:32=E2=80=AFPM Karen Lewellen <
> klewellen@shellworld.net
> >>>
> >>> wrote:
> >>>
> >>>> let me see if I follow.
> >>>> A portable device that raves about working for the blind.  Mandates =
an
> >>>> input method used by less than 10% of the blindness population?
> >>>> I did stress dectalk, hacking into a Raspberry pi would not create m=
y
> >>>> goal..never mind the absolute lack of an inclusive method for me
> >>>> personally pi wise. I might add that needing to Cary around a USB
> >> keyboard
> >>>> reduces its portability.
> >>>> Speaking personally of course, limiting input methods limits  sales
> and
> >>>> market share.
> >>>> Just my thoughts,
> >>>>
> >>>>
> >>>>
> >>>> On Tue, 23 Jan 2024, Nimer Jaber wrote:
> >>>>
> >>>>> I believe this device is using a Braille keyboard, though you can
> >> likely
> >>>>> connect a USB keyboard to it. Another solution that was proposed is
> to
> >>>> set
> >>>>> up a note-taker of sorts using a Raspberry Pi.
> >>>>>
> >>>>> On Tue, Jan 23, 2024 at 11:32=E2=80=AFAM Karen Lewellen <
> >>>> klewellen@shellworld.net>
> >>>>> wrote:
> >>>>>
> >>>>>> While that seems to be far more than I need, I am confused by
> >> something?
> >>>>>> It references a braille keyboard, but I am in the majority of the
> >> sight
> >>>>>> loss population, I do not use braille for input.
> >>>>>> Does this device have an actual  button based input method?
> >>>>>> Karen
> >>>>>>
> >>>>>>
> >>>>>>
> >>>>>> On Mon, 22 Jan 2024, Nimer Jaber wrote:
> >>>>>>
> >>>>>>> Hello,
> >>>>>>>
> >>>>>>> Yes, check out the BT Speak. https://www.blazietech.com/products
> >>>>>>>
> >>>>>>> On Mon, Jan 22, 2024 at 8:39=E2=80=AFPM Karen Lewellen <
> >>>> klewellen@shellworld.net
> >>>>>>>
> >>>>>>> wrote:
> >>>>>>>
> >>>>>>>> Hi all,
> >>>>>>>> Let me spell out what I mean.
> >>>>>>>> a portable Linux based in terms of being  open source device tha=
t
> >> can
> >>>>>>>> manage at the very least text files.  Something easy to load fil=
es
> >>>> into,
> >>>>>>>> as well as if possible add an open source edition of speech
> >> synthesis?
> >>>>>>>> Some work  being done  on dectalk if that resonates.
> >>>>>>>> Does such a device exist?
> >>>>>>>> Karen
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>>>
> >>>>>>> --
> >>>>>>> Best,
> >>>>>>>
> >>>>>>> Nimer Jaber
> >>>>>>>
> >>>>>>> Check out and subscribe to BlindTechAdventures
> >>>>>>> <https://www.youtube.com/blindtechadventures> in podcast audio
> form
> >> on
> >>>>>>> YouTube for the latest happenings in tech.
> >>>>>>>
> >>>>>>> You can follow @nimerjaber on Twitter <
> >>>>>> https://www.twitter.com/nimerjaber>
> >>>>>>> for the latest technology news.
> >>>>>>>
> >>>>>>> Thank you, and have a great day!
> >>>>>>>
> >>>>>
> >>>>>
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

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--000000000000ee83ab060fa73300
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Karen,<div dir=3D"auto"><br></div><div dir=3D"auto">I hop=
e you find a solution that meets your needs. Whether you do so by accident =
or otherwise. Be well.</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Jan 23, 2024, 17:33 Karen Lewellen &l=
t;<a href=3D"mailto:klewellen@shellworld.net">klewellen@shellworld.net</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">Respectfully, offering a=
 solution=C2=A0 that does not take into account the <br>
majority of the target market for that solution is concerning.<br>
I said nothing about the price at all.<br>
You did, perhaps by accident, find a solution claiming to incorporate <br>
dectalk=C2=A0 voices.<br>
<br>
<br>
<br>
On Tue, 23 Jan 2024, Nimer Jaber wrote:<br>
<br>
&gt; Respectfully, I offered a solution. If it doesn=E2=80=99t work for you=
, or if you<br>
&gt; object to the cost, or whatever, fine. I never claimed the product wor=
ked<br>
&gt; for a majority. I provided it as a possible answer to your question. D=
o<br>
&gt; what you want with that information or don=E2=80=99t, I really don=E2=
=80=99t care.<br>
&gt;<br>
&gt; On Tue, Jan 23, 2024, 17:21 Karen Lewellen &lt;<a href=3D"mailto:klewe=
llen@shellworld.net" target=3D"_blank" rel=3D"noreferrer">klewellen@shellwo=
rld.net</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; We are talking about the experience of blindness, not another disa=
bility.<br>
&gt;&gt; braille is not used by 90% of those experiencing blindness.<br>
&gt;&gt; Your suggestion would be solid, dectalk is referenced, but the inp=
ut<br>
&gt;&gt; method is one not used by 90% of those experiencing blindness.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Tue, 23 Jan 2024, Nimer Jaber wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; Hello Karen,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I believe your synth can be installed on any machine, includin=
g a Pi,<br>
&gt;&gt;&gt; though only you will know whether a Pi will meet your physical=
 needs.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I don&#39;t pretend to keep up with what every disability any =
given person<br>
&gt;&gt; has<br>
&gt;&gt;&gt; before I respond to queries. If something will work for you, g=
reat, if it<br>
&gt;&gt;&gt; won&#39;t, well... this is not an inclusive world.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I do actually find myself agreeing with your comments about Br=
aille and<br>
&gt;&gt;&gt; Braille keyboards. I&#39;ve been saying for a while now that t=
he system that<br>
&gt;&gt; is<br>
&gt;&gt;&gt; so heavily promoted by Blindness entities has failed the major=
ity of the<br>
&gt;&gt;&gt; population it is supposed to serve. There are many reasons for=
 this, of<br>
&gt;&gt;&gt; course, not all those reasons are the fault of Braille. Nevert=
heless, it<br>
&gt;&gt; is<br>
&gt;&gt;&gt; difficult to make any headway on a literacy system for the Bli=
nd when the<br>
&gt;&gt;&gt; majority cannot make use of that system. Nevertheless, it is t=
he best<br>
&gt;&gt; that<br>
&gt;&gt;&gt; exists today that doesn&#39;t rely on audio speech, so it is w=
hat it is. I<br>
&gt;&gt;&gt; think this about Braille, white canes, and so many solutions t=
hat many<br>
&gt;&gt;&gt; Blind people are stuck using because someone somewhere decided=
 it was the<br>
&gt;&gt;&gt; best they could come up with, and nobody has come along and cr=
eated<br>
&gt;&gt; better<br>
&gt;&gt;&gt; solutions that scale. That&#39;s my personal rant, for whateve=
r it&#39;s worth,<br>
&gt;&gt;&gt; about how people who are blind, and indeed, many disabilities,=
 have been<br>
&gt;&gt;&gt; and continue to be left behind in so many ways.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I also would love to see some higher-quality keyboard options =
and choice<br>
&gt;&gt; of<br>
&gt;&gt;&gt; input methods, but I don&#39;t have millions in funding, a gro=
up of<br>
&gt;&gt; engineers,<br>
&gt;&gt;&gt; UX researchers, investors, etc., to make an ideal solution for=
 people,<br>
&gt;&gt; and<br>
&gt;&gt;&gt; the fact that it hasn&#39;t really been done well to this poin=
t tells me that<br>
&gt;&gt;&gt; the problem is a tough nut to crack. We are, after all, a mino=
rity, and<br>
&gt;&gt;&gt; achieving scale at a minority level in order to bring down cos=
ts and<br>
&gt;&gt;&gt; provide user choice is quite difficult when any investor wants=
 to see a<br>
&gt;&gt;&gt; return on their investments and a profitable company.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Tue, Jan 23, 2024 at 3:32=E2=80=AFPM Karen Lewellen &lt;<a =
href=3D"mailto:klewellen@shellworld.net" target=3D"_blank" rel=3D"noreferre=
r">klewellen@shellworld.net</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; let me see if I follow.<br>
&gt;&gt;&gt;&gt; A portable device that raves about working for the blind.=
=C2=A0 Mandates an<br>
&gt;&gt;&gt;&gt; input method used by less than 10% of the blindness popula=
tion?<br>
&gt;&gt;&gt;&gt; I did stress dectalk, hacking into a Raspberry pi would no=
t create my<br>
&gt;&gt;&gt;&gt; goal..never mind the absolute lack of an inclusive method =
for me<br>
&gt;&gt;&gt;&gt; personally pi wise. I might add that needing to Cary aroun=
d a USB<br>
&gt;&gt; keyboard<br>
&gt;&gt;&gt;&gt; reduces its portability.<br>
&gt;&gt;&gt;&gt; Speaking personally of course, limiting input methods limi=
ts=C2=A0 sales=C2=A0 and<br>
&gt;&gt;&gt;&gt; market share.<br>
&gt;&gt;&gt;&gt; Just my thoughts,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Tue, 23 Jan 2024, Nimer Jaber wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; I believe this device is using a Braille keyboard, tho=
ugh you can<br>
&gt;&gt; likely<br>
&gt;&gt;&gt;&gt;&gt; connect a USB keyboard to it. Another solution that wa=
s proposed is to<br>
&gt;&gt;&gt;&gt; set<br>
&gt;&gt;&gt;&gt;&gt; up a note-taker of sorts using a Raspberry Pi.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Tue, Jan 23, 2024 at 11:32=E2=80=AFAM Karen Lewelle=
n &lt;<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:klewellen@shellworld.net" target=3D"_bla=
nk" rel=3D"noreferrer">klewellen@shellworld.net</a>&gt;<br>
&gt;&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; While that seems to be far more than I need, I am =
confused by<br>
&gt;&gt; something?<br>
&gt;&gt;&gt;&gt;&gt;&gt; It references a braille keyboard, but I am in the =
majority of the<br>
&gt;&gt; sight<br>
&gt;&gt;&gt;&gt;&gt;&gt; loss population, I do not use braille for input.<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt; Does this device have an actual=C2=A0 button based=
 input method?<br>
&gt;&gt;&gt;&gt;&gt;&gt; Karen<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; On Mon, 22 Jan 2024, Nimer Jaber wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hello,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Yes, check out the BT Speak. <a href=3D"https:=
//www.blazietech.com/products" rel=3D"noreferrer noreferrer" target=3D"_bla=
nk">https://www.blazietech.com/products</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; On Mon, Jan 22, 2024 at 8:39=E2=80=AFPM Karen =
Lewellen &lt;<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:klewellen@shellworld.net" target=3D"_bla=
nk" rel=3D"noreferrer">klewellen@shellworld.net</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hi all,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Let me spell out what I mean.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; a portable Linux based in terms of being=
=C2=A0 open source device that<br>
&gt;&gt; can<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; manage at the very least text files.=C2=A0=
 Something easy to load files<br>
&gt;&gt;&gt;&gt; into,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; as well as if possible add an open source =
edition of speech<br>
&gt;&gt; synthesis?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Some work=C2=A0 being done=C2=A0 on dectal=
k if that resonates.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Does such a device exist?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Karen<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Best,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Nimer Jaber<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Check out and subscribe to BlindTechAdventures=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; &lt;<a href=3D"https://www.youtube.com/blindte=
chadventures" rel=3D"noreferrer noreferrer" target=3D"_blank">https://www.y=
outube.com/blindtechadventures</a>&gt; in podcast audio form<br>
&gt;&gt; on<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; YouTube for the latest happenings in tech.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; You can follow @nimerjaber on Twitter &lt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"https://www.twitter.com/nimerjaber" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://www.twitter.com/nimerj=
aber</a>&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; for the latest technology news.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Thank you, and have a great day!<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
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
&gt;</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;blinux-list@redhat.com&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--000000000000ee83ab060fa73300--

