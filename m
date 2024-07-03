Return-Path: <blinux-list+bncBDYPVTOXSQEBBXVJSK2AMGQEEH6GZFY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FCB924C90
	for <lists+blinux-list@lfdr.de>; Wed,  3 Jul 2024 02:01:36 +0200 (CEST)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-3d63450a170sf4362622b6e.0
        for <lists+blinux-list@lfdr.de>; Tue, 02 Jul 2024 17:01:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719964895; cv=pass;
        d=google.com; s=arc-20160816;
        b=Il1p8XczCvcK6CszJSQLnJS1CPbNMzcO9aX1vkcycHLxV/N2Eq+02Kfvb2YCZokelP
         pgJSg+9Sps2F/HI1qqqjK/CivZOD/16bntsvYImSIvRKQeys0QwBifLmfjRZgCNJ6D1j
         1m8le0+6Em2y6Q5tKOZ20CBH6+GKBqqZrRvqNADFD8UBLVDf4hPXzeG1GOg2Y7v/KwTd
         6tlhSX8jGcYfgDMg3TGlNTnQYBv0UrIrWf/TxJQIQerdlOuxMwzUmCWPWL3jbNJ5It4b
         cSivwbmP1jkxP9dkw7Wo0o3TYv9O3wNTX6alDNE4q7nAaPQeL7KGbKFKj309Tb//6U5t
         4Cbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=Qajyqac21S6x8FfOlCQauzoffOpprvn2vye4OFKF4IM=;
        fh=rzd1HdJeVExv+bfV2ydxkJ3by8HSMRrHvW/f2GZ3Vos=;
        b=vRxYS36kXkyinKShtimgdhe9ExU/69Sh9Cz/6mpAQ6at5qqexV4arndfZ7XnxhfA5G
         OnerzFsH/WFBR+2VX4sGY4B+hJ56nJqZ80J+wskUKzoHQzX6qb1bsEZ0K5J+4BBeksFf
         6HEEL+HecLQqFWtSWBzEoyrY8Bj0tS6GyJ0XQqxxZ9TSO8P+C7AKNZnxOiFGX3oKXMNE
         M2NCGLNZcc/0QA+/kS51ot5GMxQESVClYXcw74eHIBrkIfuvQxojgnznudw1OUg6EDLE
         P2oqupTtzfWmTATw8smW4YuGMmQWhbOQ8jnfapk7icE9Bqth5s3yxnWDlBB9eOn8/uGb
         bLrA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719964895; x=1720569695;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qajyqac21S6x8FfOlCQauzoffOpprvn2vye4OFKF4IM=;
        b=ZWNeGqgFkVtwcEO3hcawmOeNOB8bMSuRKlG7vej/UyUJ+HTNRfMeHViumigWNqIh9G
         X2YtkR+xH+lA7e3XZia+Pcr2M6LZIP4jpJdzRvP6a6t9wYk222VrCn2UqGHLQp5B91cz
         y7Nc4eBvh4c5MtZ08r34zIb0IRMVE8hiLmKUyPHJry19aKoC4tTnOVwRmyFQ0n1u0QgR
         15hCUvkq0pjD7QatvHdQFRsVJSaDSYBa7s8bOjyEhs50Qti60Od6Sn0rrHpgWAOxFX4q
         i+VQZsjmx91cC7XjFuR9pqp2+/HxYYDfgJz66PVLh/rR4ZQQnrmHWxWUow+F4SVmbSFo
         6DaQ==
X-Forwarded-Encrypted: i=2; AJvYcCXqXqzbj7mHvBJhnRKIZPOnPml8ZFqxsrUSpiStew75hZx7PCAIM09Os9XYglWUWbAgoeNW3OpdpXWtiA8YBYWSfo+X8pvb00d8
X-Gm-Message-State: AOJu0Yz27Fy5xUymB/v/eTCRvYo4M3vOI0pdGzTem5djWtVoI12KO34O
	HtDFUWR9Qp/DGj0eMY/uuGBZYztu83AautvoixLqRbgO1fNV1VN2S24STpZwvFQ=
X-Google-Smtp-Source: AGHT+IHIcDlfab/Zl9oSx9EmxIU875rD+gnst0osJ5JlDLBm2r12OtuPnNsclZu6KJi0+W9+jYkHBQ==
X-Received: by 2002:a05:6808:2f06:b0:3d2:1a92:8f4a with SMTP id 5614622812f47-3d6b32e4136mr14263148b6e.23.1719964895130;
        Tue, 02 Jul 2024 17:01:35 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:301a:b0:6b0:91e6:b46d with SMTP id
 6a1803df08f44-6b59fc84029ls74867006d6.1.-pod-prod-02-us; Tue, 02 Jul 2024
 17:01:34 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWbgzZOs7+HjmfZJV9BmVYdZvgp/DjsqMsq0If4DmrY1xA+NcBSlVYk6SimnEQv4xK6zBkqqn+pQb6wPHtBXNzvrDJ6Ai7kl92EWXzB
X-Received: by 2002:ad4:5c68:0:b0:6b2:b557:c551 with SMTP id 6a1803df08f44-6b5b712558emr124993986d6.27.1719964893981;
        Tue, 02 Jul 2024 17:01:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719964893; cv=none;
        d=google.com; s=arc-20160816;
        b=swEb4uBwVGtdkioUnk7EW+JcfnYMz/QKGpT9JkuAAmcvrMXcqU3FcRLsnh0cIlyRyG
         YHh5kqcWM7Nmim3fsktAKpxwCU9uYq05Ibt3UkK0X65vmw25snjGE0Wr98l8PaTaEeTH
         Mr7iDB7l25CDg+uaxaAel49B9AUexysdQrFjWzec1rnSMphLhOmQ4JHcDIfKbj+4RZTS
         OmjPhaehcXNByk8LFvJKNkkxdnfbRhwFyGMu1+e5XfG6F0B2tPqtBKn2Y9n6OUvBgV6z
         FxqW/7v8OeYJcWKoSySUnE5v4mrBrxTjAaxKQYZ1yrk3lj5u4QljIafsLonGza0kGnTu
         kTug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=Q5VL/O/LBomsn+rcw4wSV9lY9412K/yMPwe89r0oMkU=;
        fh=ryxz1bsCvxK3czppD1GWUvnCAAGI8F+DMUeNwrxD8Hs=;
        b=XXt6ff08QUzGOjv58gCtjj4zYMRyxPlAmRhXWCYogMhE1F7Mjg2oCU3idtNzQGkKmS
         wa0/VVcfOFdwz/qI83E6O8l9WCqdVmnRroWwky6Ax/Kpq5UKDozV8xWDLMrpSzWLeIsc
         9GREPjx+so3AqIX8zcJcFOc1MZcXf3wsuMxTn4ndImNE1SEJ4OOoAi7RY7FzjcvuRju1
         h5dm8Z04gRHXUuHonBEczWUrc6xY2UQtlWUYZNtKA+hrIyF3iScB1hncY2ITSX3NuOcN
         fPbf1ypbzNJt5dzBdaF1x6az6HsNUgJ0TdZSDUwZ71Epks8q+tK6nRL6kdLW6tpT7WyU
         HqNQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b59e36338esi115722816d6.11.2024.07.02.17.01.33
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 17:01:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-650-r-VOK9s7PRS9K1AkAvjnjA-1; Tue,
 02 Jul 2024 20:01:29 -0400
X-MC-Unique: r-VOK9s7PRS9K1AkAvjnjA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 843DF19560AE
	for <blinux-list@gapps.redhat.com>; Wed,  3 Jul 2024 00:01:28 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7502519560AD; Wed,  3 Jul 2024 00:01:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 72A2519560A3
	for <blinux-list@redhat.com>; Wed,  3 Jul 2024 00:01:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E46CC195608B
	for <blinux-list@redhat.com>; Wed,  3 Jul 2024 00:01:27 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-550-Ybe5cBEpP0aMvQJyOKs8Bw-1; Tue,
 02 Jul 2024 20:01:25 -0400
X-MC-Unique: Ybe5cBEpP0aMvQJyOKs8Bw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WDKgn3Yj6z4SmC;
	Tue,  2 Jul 2024 20:01:25 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WDKgn3QlXzcbc; Tue,  2 Jul 2024 20:01:25 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WDKgn3MSVzcbC;
	Tue,  2 Jul 2024 20:01:25 -0400 (EDT)
Date: Tue, 2 Jul 2024 20:01:25 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Matthew Dyer <ilovecountrymusic483@gmail.com>, 
    "Jason J.G. White" <jason@jasonjgw.net>, blinux-list@redhat.com
Subject: Re: Fedora 40 workstation status
In-Reply-To: <da71691a-e519-4671-b081-aa91c97daa8a@gmail.com>
Message-ID: <b8054cfd-9b7d-2690-b7b2-7d96bcca8b58@panix.com>
References: <99dd9ae2-6af5-f6ee-3387-6aa40862bdc0@panix.com> <8062e3e7-7230-4351-a094-03fe7b4bea84@jasonjgw.net> <d0c75ec5-6bcd-e1d8-4c40-83070dc1c7da@panix.com> <da71691a-e519-4671-b081-aa91c97daa8a@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

I doubt my machine ever had secure boot enabled by the time I got it from
the factory.  Sometimes a usb won't boot over here and I leave the usb in
the machine then run efibootmgr as root and see if I can find the code for
the usb drive.  If I do efibootmgr -n 0003 where 0003 is the code for the
usb then reboot the usb boots up.  If that doesn't work, I can wait until
after the post beep and hit f8 then hit down arrow then hit enter and that
usually results in a boot of a usb if one is installed.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 2 Jul 2024, Matthew Dyer wrote:

> Jude,
>
>
> Doesn't jenux require secure boot to be disabled?=C2=A0 arch itself doesn=
'tt
> support secure boot out of the box meening you have to disable it, boot t=
he
> system, install it, then configure secure boot before rebooting and
> reenabbling secure boot.=C2=A0 My desktop which is using fedora 40 on a s=
eperate
> drive, works just fine on my system, but I tried jenux but could not get =
the
> system to boot from the jenux usb drive so not sure if secure boot is the
> colpret or something else.
>
>
>
> Matthew
>
>
>
> On 7/1/2024 9:38 PM, Jude DaShiell wrote:
> > It was whatever Fedora 40 workstation put on it by default.  I cleaned =
the
> > computer and got jenux running on it now with espeakup.
> > It was difficult for a sighted user to sign onto the local wi-fi networ=
k
> > but not impossible.
> > If you need to install in a wi-fi network I recommend Jenux since
> > archlinux runs iwdctl and that command scrolls continually but Jenux
> > controled the scrolling and while I was  unable to sign onto the wi-fi
> > network several times with archlinux Jenux made it easy.  If you instal=
l
> > on an ethernet cable type environment make sure to also iwctl since tha=
t
> > way if your computer is ever moved to a wi-fi environment you'll be may=
be
> > able to make the change more easily.  I found with archlinux only two
> > networks but Jenux showed 7 local networks.
> >
> >
> > --
> >   Jude <jdashiel at panix dot com>
> >   "There are four boxes to be used in defense of liberty:
> >   soap, ballot, jury, and ammo.
> >   Please use in that order."
> >   Ed Howdershelt 1940.
> >
> > On Sun, 30 Jun 2024, 'Jason J.G. White' via blinux-list@redhat.com wrot=
e:
> >
> >> On 30/6/24 17:09, Jude DaShiell wrote:
> >>> Also one or more updates that became available on June 30, 2024 after
> >>> upgrading broke dnf on this end to the point it now does a core dump.
> >> If it's a BTRFS file system and a snapshot was taken before the upgrad=
e,
> >> reverting to the snapshot would be your best option. Otherwise, I woul=
d
> >> recommend a reinstall.
> >>
> >> To unsubscribe from this group and stop receiving emails from it, send=
 an
> >> email to blinux-list+unsubscribe@redhat.com.
> >>
> > To unsubscribe from this group and stop receiving emails from it, send =
an
> > email to blinux-list+unsubscribe@redhat.com.
> >
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

