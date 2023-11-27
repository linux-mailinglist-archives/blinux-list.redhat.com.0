Return-Path: <blinux-list+bncBDYPVTOXSQEBBZOKR6VQMGQEXPCH7YI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDA37F96DB
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 01:40:07 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-423afeb1cbcsf10577801cf.1
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 16:40:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701045606; cv=pass;
        d=google.com; s=arc-20160816;
        b=rXWbmOqxU6lTJyJtEEuQcHu75NzlJ48YBKFt7yJ1zA4xLghfEVO+fXSg7k/v7PUmKc
         ZyuLOFbhix690iN2rNsKuj8nNxAoMQvXsDZAYB7zdgq+8mUW7qRb0jSK1qzrVWlhoVAM
         e1KT4dkS+A1Dq3Ohru17hrcVT7XwPM//V2iygDDjaZaRW6gkHC7SLURY2tpddVXTdt/I
         pYaa+3hEODuDsqf0OG8/7pMq30fbXZctvhc69DuYEVF7qWc3rrdZuT8sM/nj50ICpTLc
         txA/2WpMBHG2o8Lbulk7J4+MKlnknWGRChe6jgrzUQh7heRs5KK3TuSLcyqlKOEbsgW9
         MlFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=wSJ7b7oDY930prLFgnxnvuLFcD+MA/PIAYPtAHYUZy4=;
        fh=lJAGBAsFChiX7WX4DzbJyYXvfmjGiiu9EwbP6bCEQ+Y=;
        b=rj+oQBBHxclXEkPoIfLGBhRpzHECgZ/kpax4Jcn36WnN13zWxQAQXJPsqeTBdiajoq
         N5sZDbe9MuZ9enOG2Rbkhlx1tGmlnmnf6DSR0nZeADCmcnUGnDTeqnRAgebNMqs9cgG9
         ctVH1t3NTmpqQbjIpLzDkUWfJyTMHIN2ODT/eo8xypSv7+3c9vdEbi5bD4Nr7hTLXB5i
         pBIudx2ooNHixFzAvx+zATozf2tThjzFlIQkY4rSoqW9qd5pLhiAITc9RpwrGEyE2mT1
         Kc7G+YwW0mZMsn5gMiQgTWMq/QEGJFvEzO9i/he3F5MRPJBuAxrAQNyIy7Yt9olbBlTl
         U0og==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701045606; x=1701650406;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wSJ7b7oDY930prLFgnxnvuLFcD+MA/PIAYPtAHYUZy4=;
        b=R9/jxahSsEXtXVjcDOwmIWivKjeAAO4icdRlPM39OShlelLRcJQzSQJqCYLB32hJOo
         1ORFSQ5twtfznecu5idAvQCRPY2hQbOY7q81KmK91eFrVJCDHORU0n2PlE4PXaSsOyHO
         v0TX+tfPzdQjD0MHu4I0bjZZL7e95vCX1aN7jBV7/S0KLLdwBuWIyq/GXBpMmxeB3e2V
         yCN1BFZu8chaj6cPtxbnP9oknybL7uU6hdL+kHSk7VoJsGFtJ46FcicyKxwlWK1blFwf
         9xWjYPn01+nRPSmehwUYoGW4ybReCLz2LnNJciqaecw+w48ikA6UsMt6Zz6k8rowFNyP
         nsMg==
X-Gm-Message-State: AOJu0YzZ+xuUbQugeqc/ZB2viVc8t9UyJxa7QfiYSzq8zgppyyKSedvr
	n0FEU5f78Hu0nLfdznVzAJZfwA==
X-Google-Smtp-Source: AGHT+IFWDBcAsvOVUzaEWnUUDkWCyAZ0xxodY69iSx9shYMNPeBi/LUtRh93yrAhLvIrgCnCBbKwvA==
X-Received: by 2002:ac8:40c1:0:b0:423:a89d:df9c with SMTP id f1-20020ac840c1000000b00423a89ddf9cmr4922674qtm.60.1701045606195;
        Sun, 26 Nov 2023 16:40:06 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:11c4:b0:423:84c3:cf91 with SMTP id
 n4-20020a05622a11c400b0042384c3cf91ls908645qtk.2.-pod-prod-02-us; Sun, 26 Nov
 2023 16:40:05 -0800 (PST)
X-Received: by 2002:ae9:e113:0:b0:77d:9ba1:ceeb with SMTP id g19-20020ae9e113000000b0077d9ba1ceebmr3911646qkm.6.1701045605416;
        Sun, 26 Nov 2023 16:40:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701045605; cv=none;
        d=google.com; s=arc-20160816;
        b=pXIE4Ig16vt6BCUxjJbXrCtc2EQsiIBx+t7XQTnetZYAnb8OWTVVd61Us847A0N9yQ
         KHs/lE89hflNgCbKM2K+V386soEdLDqg2lzlGONH/IWqoIJfjknVyaEyZMacESIaL513
         p0fL+wyNXirmcs/rs9YofjjmLj4JWhEo5f/k5oNN2A+TWQbueWz17UMpCg372AEStBVl
         76RLRKFey5+vgYaQeFHkAsClbTI8FBToi4N6sckErOT/jN7Sb6H8i6VAt8uuRmxmSdqO
         ogQNai0vKehu9j8YMf6rnAfRRlMLmSLn8RwgYsV4NvuH9othAaOQuh24Wu2V0s/6GG4a
         7tgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=+G6eRBzFvI9j4eU/fF4+1mbe0vkbO51SUjU4LY2mdek=;
        fh=lJAGBAsFChiX7WX4DzbJyYXvfmjGiiu9EwbP6bCEQ+Y=;
        b=NURq+95RGkZ60vnlaxpkpSbnKuYyNLTjEawSOwzjL3HoK4M1IbM9VXEktHAe3DCHJ7
         WBOcGSI8yL9aaaHSns5cLANs4b944d959rW6Irs7l3mvQFRJBs3Jus3fIpRkpHxYfNFj
         HTP3/pVMytbARu6X6TUN7ekpqRt/FuaLDfhQUg6eUPu1QaoWrA9nwE81IxxdELRbO5Gb
         G4SAKNKUdmEoO+38JZ6dkl/Zitl6Vo7BvuNXcxC5g2SiOhDqkTG+9mVLGxRFGCGOjy52
         nP4OcORb/mCaHduQF730lqGZ84TiBDrEFduWwgsQBdnZwiunJb0iQvnirbH8VhAuUsdB
         cjBQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id b12-20020a05620a04ec00b0077d85a0327asi4949135qkh.503.2023.11.26.16.40.05
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 16:40:05 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-681-aaPYJMGdPCG201ndwF1HcA-1; Sun, 26 Nov 2023 19:40:03 -0500
X-MC-Unique: aaPYJMGdPCG201ndwF1HcA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F49B85A58C
	for <blinux-list@gapps.redhat.com>; Mon, 27 Nov 2023 00:40:03 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 7BE242166B2C; Mon, 27 Nov 2023 00:40:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 746C32166B26
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 00:40:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 502BD3800BA3
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 00:40:03 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-58-4g7xgm5mMw-olGcCV1DaJg-1; Sun,
 26 Nov 2023 19:40:00 -0500
X-MC-Unique: 4g7xgm5mMw-olGcCV1DaJg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SdmvN3RJ6zttv;
	Sun, 26 Nov 2023 19:40:00 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SdmvN35JMzcbc; Sun, 26 Nov 2023 19:40:00 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SdmvN30r4zcbP;
	Sun, 26 Nov 2023 19:40:00 -0500 (EST)
Date: Sun, 26 Nov 2023 19:40:00 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Rob Hudson <rob_hudson_3182@gmx.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: vlcrc file needed
In-Reply-To: <6b078b1f-ce39-9b27-ad72-49c574d409d4@panix.com>
Message-ID: <b7b519f6-651e-039a-c45a-824a8016e78c@panix.com>
References: <433e1464-0c97-bd74-32bf-06ab48664fdf@panix.com> <CAMuGJS=qR4KKwsFrDNa3+tENTWHMZ3r1Z+zHc=AgGHTg0st5Mg@mail.gmail.com> <0ac79846-59e1-8efe-8444-7240592473ad@panix.com> <20231127.000253.335.7@[192.168.1.100]>
 <6b078b1f-ce39-9b27-ad72-49c574d409d4@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

Chime sent me an old vlcrc file chime has and I want to report that file
works very well over here.
I understand why videolan did not include the needed documentation to make
this file since the file is 83k in size and there would be lots to include
in it.
  Maybe a vlc expert could look at that file and remove any unnecessary
configuration for command line users but since vlc-nox cannot install on
all distributions a little extra configuration accommodating both text and
graphical environments wouldn't hurt.
 -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Sun, 26 Nov 2023, Jude DaShiell wrote:

> On other systems I had better luck installing vlc-nox which runs without x
> support on the command line environment.  I tried that on archlinux and
> vlc-nox cannot install with error exit 4.  So I have dumped vlc off this
> machine entirely.
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
>
> On Sun, 26 Nov 2023, 'Rob Hudson' via blinux-list@redhat.com wrote:
>
> > If VLC has an irc channel you could try asking there.
> >
> > ----- Original Message -----
> > From: Jude DaShiell <jdashiel@panix.com>
> > To: Karl Wilbur <karl@karlwilbur.net>
> > Cc: Linux for blind general discussion <blinux-list@redhat.com>
> > Date: Sun, 26 Nov 2023 18:37:47 -0500
> > Subject: Re: vlcrc file needed
> >
> > > The github site is gone no longer exists.
> > > The incomplete documentation on vlcrc configuration location I have
> > > already read.
> > > If missing a vlcrc file how to get vlc to make you a basic vlcrc file that
> > > could then be edited would be a nice thing to know since configuration
> > > file format and valid contents isn't documented.  I'll try cvlc and see if
> > > that works.
> > >
> > >
> > > -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > > defense of liberty: soap, ballot, jury, and ammo. Please use in that
> > > order." Ed Howdershelt 1940.
> > >
> > > On Sun, 26 Nov 2023, 'Karl Wilbur' via blinux-list@redhat.com wrote:
> > >
> > > > This is pretty old but might be a good place to start:
> > > > (a GitHub repo that has someone's `vlcrc` file in it)
> > > > https://github.com/bashwork/settings/blob/master/linux/.config/vlc/vlcrc
> > > >
> > > > Also, VLC docs about config file location:
> > > > http://www.videolan.org/support/faq.html#Config
> > > >
> > > > --
> > > > Karl Wilbur
> > > > 513-322-2481
> > > > karl@karlwilbur.net
> > > >
> > > > On Sun, Nov 26, 2023, 07:36 Jude DaShiell <jdashiel@panix.com> wrote:
> > > >
> > > > > What's not on that videolan website is instructions for command line users
> > > > > giving format of vlcrc and valid items that can go in that vlcrc file.
> > > > > I installed mpv and vlc on archlinux and have mpv working since it's
> > > > > better documented but not the case with vlc.
> > > > >
> > > > >
> > > > > -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > > > > defense of liberty: soap, ballot, jury, and ammo. Please use in that
> > > > > order." Ed Howdershelt 1940.
> > > > >
> > > > > --
> > > > > You received this message because you are subscribed to the Google Groups "
> > > > > blinux-list@redhat.com" group.
> > > > > To unsubscribe from this group and stop receiving emails from it, send an
> > > > > email to blinux-list+unsubscribe@redhat.com.
> > > > >
> > > > >
> > > >
> > > >
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> > >
> > >
> >
> >
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

