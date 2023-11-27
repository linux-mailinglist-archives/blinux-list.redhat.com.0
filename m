Return-Path: <blinux-list+bncBDYPVTOXSQEBBW6DR6VQMGQEKEIGR3A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id B27157F96C8
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 01:25:00 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-67a3b35f343sf8336346d6.3
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 16:25:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701044699; cv=pass;
        d=google.com; s=arc-20160816;
        b=fXG3kFqfzJHeXvynV59rIBiU2M7QcuXIsZWOVHIRm5GzNWfPnS3WJbUIjyPHkjikCg
         Z/lGJfRa81kG6lqHQl73PKdv4TkuWWpKIM/X8r3YOWFMPcrT+6qk4DGspu1/qzPHdhXC
         Y9FOIlMjeeBnPFhUPUEF9FSUp76zqIbn3prL6EdGmLeuw7NXfugr9oqc1EdvpNFqdBpK
         wnBIQcAi72bStGb0feAJkv+geHAClGiK6VoLidIOxvy5UdwsGmwXxex5mUGA6Tw4d9Gc
         pkJbAHufjn2l+gVYJgNT/7+C4nZyLWZzqg5zcvw4SZMorvM1Ef926lu1GbT4YxhKjc3i
         lhEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=LV9rRzDxWnKU15QHX1nuTB9S22rYwLHb4jlolsFO7UE=;
        fh=lJAGBAsFChiX7WX4DzbJyYXvfmjGiiu9EwbP6bCEQ+Y=;
        b=OG0h+NAxb4eVSiTBf8zC280kYA0kxA3OdKBo9etUsbncGdEEMpgTyb+wm+u7dK1XEj
         wlvolQvU/6pdcV/q5Kf/ZNChkBPQQNFLJBR3XAXFjn7zlkPO2XQGieWZiNFJ8Co4p2IL
         JEwps4edaIii1pcgzUxef68rTc7y4G8AhMzGhFIZ8ZpbTc+3j9zdJwadqkimfhpCNhgY
         htJ7/7GdG7fuFQR5eSG/aZ9X1g+V8lYMCeGAcC5tXBeh9s3GPp1/MZV1def5+t4ZEXa+
         NKMWwKRt7/EMFfGYBKl5aTh5pWN90trfGrH2Bb9Vj9vwvAoE9HBQqshlaU3m1L0hxYnx
         fJeA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701044699; x=1701649499;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LV9rRzDxWnKU15QHX1nuTB9S22rYwLHb4jlolsFO7UE=;
        b=M+6e64EBwnLF3/kJpHUfNUUoSYCzlgBNL/XuydXt5N+hpHzrzIANLFAwyMpKxKnn2x
         x3jPhTBg7XsFvKkKSGCfyf0reKeQg1vfTMLlL7N6mZbfNWkTlC8qIdDJD+n9l+pPI50W
         qvYLi6hj0ZhYfcK0Y6Z8O/dTCa/uwZh7EDFICciMEymEKNIMZC/aBMJiAwbKkcacq49p
         lp83O3TBTaXtJGX/rRmMQwCONib14jOUJBQ20Sbn/3Zj0SW+Cgq2sKSbjsy7YHQmRV8X
         gU3s/i2eXHs43zSS0giWq9kyTmOTfz8TQfZfytF+SJhs2vGmEdQcMUs9VJPRx0oULUlh
         GALw==
X-Gm-Message-State: AOJu0Yz+6cIPvotalbGK7a7hLCoX2Eq4iMbc/1VtT1MTEK5Wt5TrQmBP
	yObJfojvfTdNV+QFSS5EoC/5MQ==
X-Google-Smtp-Source: AGHT+IFJh0ibFwXu+qk2APRjmlQ7eMicf31dgUQgb9gn4T5keeXefgDMYidLQxjSyB8FDpuA/aRXVA==
X-Received: by 2002:a05:622a:288:b0:423:93ce:bde2 with SMTP id z8-20020a05622a028800b0042393cebde2mr14732448qtw.63.1701044699463;
        Sun, 26 Nov 2023 16:24:59 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:58d1:0:b0:423:74ab:1ef4 with SMTP id u17-20020ac858d1000000b0042374ab1ef4ls1527997qta.0.-pod-prod-07-us;
 Sun, 26 Nov 2023 16:24:58 -0800 (PST)
X-Received: by 2002:a05:622a:1148:b0:423:a708:190d with SMTP id f8-20020a05622a114800b00423a708190dmr6713444qty.20.1701044698811;
        Sun, 26 Nov 2023 16:24:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701044698; cv=none;
        d=google.com; s=arc-20160816;
        b=nfwsnjgn+bj2BsBohWe39xAgIqseIV9J4wksHB5gBPYbKbsl6O18yodtumGtUBh4Xw
         JlkZX0thVv4aRdSfxIUGUDY6iTxcY/l2DcakTSW59kBtI2ADFiWhbPEmdaswAc/iff+z
         +cAjUcviOAEZWYg0BwbojFeDCNFIoQqWSUVqfYZdJ1QvwFQhVT61+lUB9Fu+px6flvVX
         DUFVb0l6B58650On42PwuvmCK4pfcAD+ODFH0ipIMq/bZAYK51l9jsIMceHFvpHUSmOH
         5gfYOiY/8bQC3KnUvfC3M+ebFF+uZJKZZSIESS5k/DFN9PshoOXhNqOyRYLSXmKcGOke
         A0yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=YCzWkJg8QDZ6G4dg2p5x0sgrlNYGO2ZDvT67NC9f8jI=;
        fh=lJAGBAsFChiX7WX4DzbJyYXvfmjGiiu9EwbP6bCEQ+Y=;
        b=foHHRsPhCXtnjdfV+B3wtNHFUkIgifz7r9FvrkGP1rLY7zuO+eRP2+/L+xrHnBVbrX
         C6kDqfUnP88zDcd9VgeMm67YP6xBbFrO2dZG/7XVmrzo0mFsKfti5JM4pBWdaOk7b8Lx
         9ElBzJhk57Kv0SOBwr/8cmdpqrxZknqQfOAlHx6/RfRyPHhOycm3qwGcPvkGZr7zqEuw
         wo3urQuvueAktb1/Oq3WYYGKjtahKR+30NM8yCNmheMDKW7IM8qPZnHCacl1uPp0d6cX
         rNpq2vFf71oSKyq3+5egAAGFfl0cVC0T0jkYAjh2Rwd5suIWzNovhpCss+A28Rmn2Krd
         ndXA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id cd6-20020a05622a418600b004238c040ebfsi7996062qtb.801.2023.11.26.16.24.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 16:24:58 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-682-DFFuzk3IPi-0c9MfHV_gGQ-1; Sun, 26 Nov 2023 19:24:57 -0500
X-MC-Unique: DFFuzk3IPi-0c9MfHV_gGQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D45C580B4B6
	for <blinux-list@gapps.redhat.com>; Mon, 27 Nov 2023 00:24:56 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D1291112130A; Mon, 27 Nov 2023 00:24:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C8C051121307
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 00:24:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A8DD53C0C893
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 00:24:56 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-310-LTZrD-azNDiMadTFOiUtLw-1; Sun,
 26 Nov 2023 19:24:54 -0500
X-MC-Unique: LTZrD-azNDiMadTFOiUtLw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SdmYy3BTvztGh;
	Sun, 26 Nov 2023 19:24:54 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SdmYy2vr3zcbc; Sun, 26 Nov 2023 19:24:54 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SdmYy2qZ1zcbC;
	Sun, 26 Nov 2023 19:24:54 -0500 (EST)
Date: Sun, 26 Nov 2023 19:24:54 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Rob Hudson <rob_hudson_3182@gmx.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: vlcrc file needed
In-Reply-To: <20231127.000253.335.7@[192.168.1.100]>
Message-ID: <6b078b1f-ce39-9b27-ad72-49c574d409d4@panix.com>
References: <433e1464-0c97-bd74-32bf-06ab48664fdf@panix.com> <CAMuGJS=qR4KKwsFrDNa3+tENTWHMZ3r1Z+zHc=AgGHTg0st5Mg@mail.gmail.com> <0ac79846-59e1-8efe-8444-7240592473ad@panix.com> <20231127.000253.335.7@[192.168.1.100]>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
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

On other systems I had better luck installing vlc-nox which runs without x
support on the command line environment.  I tried that on archlinux and
vlc-nox cannot install with error exit 4.  So I have dumped vlc off this
machine entirely.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Sun, 26 Nov 2023, 'Rob Hudson' via blinux-list@redhat.com wrote:

> If VLC has an irc channel you could try asking there.
>
> ----- Original Message -----
> From: Jude DaShiell <jdashiel@panix.com>
> To: Karl Wilbur <karl@karlwilbur.net>
> Cc: Linux for blind general discussion <blinux-list@redhat.com>
> Date: Sun, 26 Nov 2023 18:37:47 -0500
> Subject: Re: vlcrc file needed
>
> > The github site is gone no longer exists.
> > The incomplete documentation on vlcrc configuration location I have
> > already read.
> > If missing a vlcrc file how to get vlc to make you a basic vlcrc file that
> > could then be edited would be a nice thing to know since configuration
> > file format and valid contents isn't documented.  I'll try cvlc and see if
> > that works.
> >
> >
> > -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty: soap, ballot, jury, and ammo. Please use in that
> > order." Ed Howdershelt 1940.
> >
> > On Sun, 26 Nov 2023, 'Karl Wilbur' via blinux-list@redhat.com wrote:
> >
> > > This is pretty old but might be a good place to start:
> > > (a GitHub repo that has someone's `vlcrc` file in it)
> > > https://github.com/bashwork/settings/blob/master/linux/.config/vlc/vlcrc
> > >
> > > Also, VLC docs about config file location:
> > > http://www.videolan.org/support/faq.html#Config
> > >
> > > --
> > > Karl Wilbur
> > > 513-322-2481
> > > karl@karlwilbur.net
> > >
> > > On Sun, Nov 26, 2023, 07:36 Jude DaShiell <jdashiel@panix.com> wrote:
> > >
> > > > What's not on that videolan website is instructions for command line users
> > > > giving format of vlcrc and valid items that can go in that vlcrc file.
> > > > I installed mpv and vlc on archlinux and have mpv working since it's
> > > > better documented but not the case with vlc.
> > > >
> > > >
> > > > -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > > > defense of liberty: soap, ballot, jury, and ammo. Please use in that
> > > > order." Ed Howdershelt 1940.
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "
> > > > blinux-list@redhat.com" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an
> > > > email to blinux-list+unsubscribe@redhat.com.
> > > >
> > > >
> > >
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> >
> >
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

