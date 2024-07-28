Return-Path: <blinux-list+bncBDYPVTOXSQEBBCP7TK2QMGQEN6MPGMY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199])
	by mail.lfdr.de (Postfix) with ESMTPS id C942993E9E4
	for <lists+blinux-list@lfdr.de>; Mon, 29 Jul 2024 00:00:45 +0200 (CEST)
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-66af35f84a3sf51152577b3.1
        for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 15:00:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722204043; cv=pass;
        d=google.com; s=arc-20160816;
        b=lF/xJZiceXRsWCZUXTP9qQ6KXX+/l7HH/wEHs9oDpOXMaVdMKbvsWgr/gJHgEVBA63
         n55S/SzyFCcnQ9S2En4z46I3onHVm7na7p2LBIyygFwBmMxPeJBYlwxnS2wn0saqkLhU
         GDdKCCpUkoLgObwQBuBGnxsXXGsy9gLdglAdVuJ3Zxl3dFNDGGgXm59RR9aMfq/AGFkS
         3KIBtALSCbV0JcAHEAh4tB6zt9VXrSbOmhnIVp0LrYVMTFmY8XjXlr/+hlByW/O/gOBh
         LC+r70/hDwFrhcXf2KVnfWX7YgmcUWC49WbNobuz8VPuhlbq16zAsnXWfIu2rAi0uZiZ
         cY3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=SpHnXOnmRVRFNu28fCXlwRw/QKU562BKpjVzL67Y7lw=;
        fh=MitG4kB2j+tXNzBEmmpq1muiXGkGK9I4eISUhkmFjaE=;
        b=HA0YGxLtgjIf4P9Q61kXmKFIh7+Pd9vTBOwNElSnqIi6jIGky2a5WY94ls2DEP8mqG
         83EJWPt0rCDBn88nXll1ZO6OcdcuKqu0obCR9TYk0bWEpj5TmBFaI54gTZ+QhhM1mYa1
         ++OHeMha5WxiegDISL711EwdbV70WihKBmNweGzIeop5Ia5Euxcv0x269t3TNR5Awgf/
         KmOEjDVq7o5Bs7BCUmHQZFEnudwJWZb53dwQB6f7m/iVwioHs2R9Y+efYDC5PTHSj7Va
         jylROoScOSnuydR3A+9RxOP+TzRTgFrw2CkWaCU60NmB/f357hRjyB7AzqDiGPc5Ovpy
         KJDg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722204043; x=1722808843;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :content-transfer-encoding:x-original-authentication-results
         :x-original-sender:mime-version:references:message-id:in-reply-to
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SpHnXOnmRVRFNu28fCXlwRw/QKU562BKpjVzL67Y7lw=;
        b=Um/dhY2rOX/pfvWjHxDuoqiL7BYIpIO+ahgWZkZRQeRANPXoEeuklnazEJD6BV1SsG
         oP8SZUxUlQEVYvEwaTsZnZUZ9spPw8VBD8rkTmkdXdWszLgGAECzzu+kAujGNTbKx9vi
         ZvuyZVTOBtkjHXh/nCK8YwjwCZl7bm1B9hFFMRZQRffXY6S7eDmSF0SkGEtkNZ/cRisu
         x6akibea/W8H06VvtuSu2C5CMUIRStX2xotJcSGTHYW+Lv5yvZwkIRmaqshKX8j3np+r
         +SHufdCkUcXwRzem/1wTeW7lQH6QZHRq1JbKK9rqhmA+7bqXxnuC0WeKz31PbVodfkos
         DFEA==
X-Forwarded-Encrypted: i=2; AJvYcCVEFQ141F+fvIUaMHGADppOjxA8mATIqrELz1ZqyHRjyzLdQs/9u8ibaiS3PsyET2HqRa7GWrfADpHSHnjsnaD2eHM8iY6bdFQo
X-Gm-Message-State: AOJu0YxZzO6JolDe7Kj4dlIRfrfmvI7xVHqMRFw4x6JrmA5oM+FnkXuN
	FmfjLloce6pdZxZpFEUpMUgtonzuI9y3Nfp7TqzJwofeiQiET4q68J+xZDoZZRs=
X-Google-Smtp-Source: AGHT+IENS0BBbO83PMx2Myr628uA/4BJeSsSZA1RaxAZ3hQUCUr2pyAZ4hsItpNrnoi/ILF5yQ1dsg==
X-Received: by 2002:a05:6902:1889:b0:e0b:2c11:bc4 with SMTP id 3f1490d57ef6-e0b543f2cf1mr7185588276.6.1722204041572;
        Sun, 28 Jul 2024 15:00:41 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6902:1021:b0:e05:a000:6f3 with SMTP id
 3f1490d57ef6-e0b22a72e68ls5724479276.1.-pod-prod-05-us; Sun, 28 Jul 2024
 15:00:40 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWZ5Jxm766vTPkMwQ7ODlgB0+TT6EF1H+8dAtG6LMtXZN2MBwyjD9zAUQvRyzp7wAr8qD9IT80au+wm8crDmnmlTH2rPkCkKNURN8Hg
X-Received: by 2002:a05:690c:698c:b0:64a:5ff5:73ef with SMTP id 00721157ae682-679fffd70eamr84992577b3.0.1722204040189;
        Sun, 28 Jul 2024 15:00:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722204040; cv=none;
        d=google.com; s=arc-20160816;
        b=NCaAojtbIf8ae/PyG+9GG7amAFovo3FoX/uiTJl39NkTU9Uv/qLaCDhbzb9iTb03rj
         blSZQfXPJIyEWWhD83Fb/dHz4wkzpW7bHyzPqsle9PpaYumGywnRBJ48d2schQ+bHOqS
         dIPIjloh0b6AM7vKZkN304uYld//Dw4ArbOfPsCo9hCZK3J84dt/wXFHeVurS7/zhHT0
         bNz8w3u91p+hf+3WilQr4U85lHcfWB7ZYNd2K88p1ecONWoNFoe4+RDdUlInHLcmAhKk
         sh7gUBSgrvM8Z5NuCnwBxTXFweNRo2Wdy3rOl8LHuMUjOZ0h9LgeQsvVLz+f94NVlP+I
         9q5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=3yn6FzZzKDJ4XxiOII1HwU4U8LitqoSrBIm2+ASoJ+w=;
        fh=AdcABl06ylR3cy0jKCWLWxSFciR605LM8bivWxFNCss=;
        b=mLo5onMYnO2P/vaRrN8WIRHzeO9WrjxBkD0lbrP77Mp/Vj7O5ola8BTcNCCW52kGS9
         IcAAwXiqWr1CuMy5hE2AimuHPfTxQEMlKuJ3sfs+acdAABTtzegvTE9SHrIsdyRKhpn3
         JEr5MtS4eY1+laRe35L1DsxiqTHGTfXMKLjgnhaIyKSzqHl1JNzMpK9BqOKCzP+qLsaJ
         RTrXLyun8k0kPc/2aaeLDSeY4PoEEg7K+if79NlQ7swGPZ8YhaquZHmHlTiV4xsVB3Y7
         P29OEx+RBQ7zxjsigQYCtdeOJtX24l1KpSqAflMkh8QYt31kAPjmSCiTjZr+b94m0qsJ
         JTBw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bb3faabba8si85291306d6.384.2024.07.28.15.00.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 15:00:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-687-pdl78I6KNMuUud9JJIvWgA-1; Sun,
 28 Jul 2024 18:00:38 -0400
X-MC-Unique: pdl78I6KNMuUud9JJIvWgA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D4BAE1955D44
	for <blinux-list@gapps.redhat.com>; Sun, 28 Jul 2024 22:00:37 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C503A1956046; Sun, 28 Jul 2024 22:00:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C2C0A19560AE
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 22:00:37 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 440CA19560A2
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 22:00:37 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-306-yIhpFKzUPrm3zSXubbwhtg-1; Sun,
 28 Jul 2024 18:00:33 -0400
X-MC-Unique: yIhpFKzUPrm3zSXubbwhtg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WXFmK4J4zzpWh;
	Sun, 28 Jul 2024 18:00:33 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WXFmK48LDzcbc; Sun, 28 Jul 2024 18:00:33 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WXFmK45BhzcbV;
	Sun, 28 Jul 2024 18:00:33 -0400 (EDT)
Date: Sun, 28 Jul 2024 18:00:33 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Rob Hudson <rob_hudson_3182@gmx.com>, blinux-list@redhat.com
Subject: Re: making YouTube (etc) videos more accessible?
In-Reply-To: <20240728.200136.645.5@[192.168.1.100]>
Message-ID: <4b6bb7f8-b192-9a39-4761-ecd0db924e58@panix.com>
References: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com> <8eedfc39-ac45-444b-8759-c76cb94406b9@jasonjgw.net> <D4A63476-AD01-4437-8F3B-AF0EB0B214B4@cfcl.com> <20240728.190255.886.4@[192.168.1.100]> <99B4EEFF-D063-459A-8C68-C437E4758811@cfcl.com>
 <20240728.200136.645.5@[192.168.1.100]>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Content-Transfer-Encoding: quoted-printable
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

Perhaps more useful would be one message stating presentation visual
content available then the system grabs each piece and puts it in a slides
folder and maybe does ocr on each of the slides in the folder in the
background and saves the output to a texts folder.  A user then could
listen to the presentation then read the texts shortly after the
presentation.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Sun, 28 Jul 2024, 'Rob Hudson' via blinux-list@redhat.com wrote:

> Oh, recorded presentations. Yeah that's different. Your scheme could work=
, it sure would be interesting to try out. Especially with code camps.
>
> ----- Original Message -----
> From: Rich Morin <rdm@cfcl.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Date: Sun, 28 Jul 2024 12:23:43 -0700
> Subject: Re: making YouTube (etc) videos more accessible?
>
> > The screen reader (or whatever) wouldn't have to be "jabbering over the=
 presenter".  For example, the user could pause the video to examine and/or=
 discuss a given slide.  If desired, the user could be alerted each time a =
new slide comes up (eg, by a short tone).
> >
> > One of the useful aspects of recorded presentations is the ability to p=
ause and review sections which "went by too fast".  I frequently do this my=
self, pausing the video to examine a slide of interest.
> >
> > -r
> >
> > > On Jul 28, 2024, at 12:02, 'Rob Hudson' via blinux-list@redhat.com <b=
linux-list@redhat.com> wrote:
> > >
> > > You would have the screen reader jabbering over the presenter, so I'm=
 not sure that would take off. Audio description is usually slotted between=
 dialog in tv shows and movies, so I'm not sure this approach would work fo=
r the type of content you are talking about.
> >
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to blinux-list+unsubscribe@redhat.com.
> >
> >
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

