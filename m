Return-Path: <blinux-list+bncBDYPVTOXSQEBBCMY6WYQMGQEJEHHJSQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E378C194B
	for <lists+blinux-list@lfdr.de>; Fri, 10 May 2024 00:19:55 +0200 (CEST)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5b1ead42e93sf1368761eaf.3
        for <lists+blinux-list@lfdr.de>; Thu, 09 May 2024 15:19:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715293194; cv=pass;
        d=google.com; s=arc-20160816;
        b=tsDeQvxSM4+KxCE891N5dkRsj1M9WpLT6jHwvyU3a/zOCPxC/0DoR2p+1e7ctzYcZU
         Kq1lAc8PjKl5rVWFJJmlmEw0faJ9UU+WMgGrGL5e/7llxNrL6YtynQ75d3C58rMTTZT3
         Y2+OZKlio9918ACECE/xEs/CnhyT7MaGu7sW8UxOJjDlbwXVlbEBHo6r+aecsoXRmZwy
         2oCiJlLzdZvuhRbkTiWmYgtzhxmahZSvvLtFa1ifU3sGWC91aF29TZWFdjed+XcIyUk7
         CCjA30yNqGJo3JKubduEcU0LufwGU6jWPp3B1pbmYqEAsDgQmixr9EVuuLhZk2GMFh4l
         KMGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to;
        bh=5/QZaS3CBI0IggEBY8uGs/0q/w85TlqT1VXZtp8yoGk=;
        fh=l9MnmCaKtWTNNEGWJl9GZgIT4+b+juOEiaihoZ+B9N0=;
        b=MoHoUB1gaH20c6Fgz3mNzGeDv6jTY4RORRUxtZl5MXqlnwtPlwgMJaxyEYAH5+sSVL
         rHgREX9hfnhtKqj7PtBtjSOgnjpkzKijqXrelOPb9ePA6iKTA+veTvlsH7IdrENtp6lg
         dkTXDLd5iSfd5re3Oa8dVp9nZ7726XUuM6g3cREE5QXWvpckb9LzVzfG+1zORGIrjeVb
         Pf+5dgepDjeR+9bx4Mrb9dxwD/Ji76Du5pwBSCqidZat0JMyRXkWRVXLwnDQ772MxTST
         7nqdbl2x/wT18/zczCZP5ALkwqJ3wYjlNUcDEd6hIq0xP27ZZed3z1x7LusSc8qUks46
         oF3Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715293194; x=1715897994;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5/QZaS3CBI0IggEBY8uGs/0q/w85TlqT1VXZtp8yoGk=;
        b=pL8Pq/yWgC3lcX4hk7kJ38SzyTBlntc6Uq6l85Jzbh9JvafP4t9aa788Mw374fNPYI
         8MZgztoJRqmj4+FcJCcMaxWtiEUe547V4W47vdug2b6eM7b25PwIg4X1x6TBT/wVdB4T
         nd88FDhlJ8V55SD2yL7XPhQNZdno73YeBC2yzDsKxbUPFNXzlgPBd6dJTPBUMWUR+ETF
         QgVpcIYyhYWOJQN7eQ++L3zfK/l2FVBDE8Q8HgXQvSe3q5bLXpiSsDKeU5mdrSONwzrY
         WCFzk7eyItOLoN7MSBffXUCS871X4KFCY6GQFrse9RGSF6mgReucIr9X6Duek1/P7r3g
         yZ3w==
X-Forwarded-Encrypted: i=2; AJvYcCXE1m3SUC4ytiPpZG8if/FKbwR9ufCXpMTLVM/sLOhKUjHoKZe3xkFk69ISpJ6ST/O+fnAsH8sD4k2rF5BFPkg+vFzXinT/KLt6
X-Gm-Message-State: AOJu0YxLH0bMYXvoJe3YvKBVG6S2uAgtaTbZC7TPXdjy5t2F9qLLqcjO
	/FEkW1cXmQdjlzRdV35o6747XFrsSI0Ky5eWQmaN5uRw/B4NJYnbneoNdW+h4o8=
X-Google-Smtp-Source: AGHT+IGAfhK8SCR/PeHk6N8tnWvvaS642n/b0OPxkDusI2ei7kE2It+0XBTSlOVW2V2w5GollIctqg==
X-Received: by 2002:a4a:58cd:0:b0:5ac:bdbe:9cc8 with SMTP id 006d021491bc7-5b281961ea8mr806312eaf.4.1715293193810;
        Thu, 09 May 2024 15:19:53 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:5443:0:b0:5a4:6ef1:24f0 with SMTP id 006d021491bc7-5b26a460377ls1470531eaf.0.-pod-prod-03-us;
 Thu, 09 May 2024 15:19:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVyrVnSNbMFPp/4D9cnwL5aYk9RSJxCR/T2h7TSA6F4KI5ZII+/Y19p0WrDkxONeMfcKpOpuq8fiNNH07FT1exBeoNaxOy9byBZSspt
X-Received: by 2002:a05:6808:358:b0:3c9:66dc:1a7a with SMTP id 5614622812f47-3c99707247emr911564b6e.32.1715293192653;
        Thu, 09 May 2024 15:19:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1715293192; cv=none;
        d=google.com; s=arc-20160816;
        b=VGGkR8YNbyjUJ79iEkIWnWE5er0EW127ie6lOI8hYCXkQxvkW+unRvcMrzRnLzndzC
         xu7P5gL2I9ddsiz08eN/z3BoiDA+QL+zb6oKyGoirvUJQkMxPJ8ElVyXy9lDKlqGkwNl
         /zOS9urnonLpJJdMTTJ3dEUYmriNjjk1vc5wrKwtcYHfH7TlH080Ejd/x8zaD9Rj9+k2
         EnI96cUBWYbWPtSFzlFhM26diDVAisLiCNNK1jLfDJT+QGIhWD9pISswT7HPxa5Sbfpj
         aGri11nnf8o2kSix5Y7JwJlP1O0K1zjXstqY1MnCqVagLjpHijaJ9Psr+r4GeGXARl04
         gy5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=YvhGW6rn5iWtH3ax7orbLSp0bj8b71/qfX2IIO00vlg=;
        fh=v1piCSCB7mI7C7jRJDwamP9iz+cP775U6RplWSVwbok=;
        b=DpNSl6VpGDJPHZUcQkqvFeAFHSnWnRML3bMk59Qf+qdqsvWgrrTtkYEEiUJLRJUTOQ
         JnEX6BOC4cHgHeK0ZlaHXDApKyZqpN3+n8/LeSeMYLDjHYhDjYtpuLoqUuyd2OyRpB6C
         OTHagk40I+WrQe53JfsTjGfteAs1offZI6WYwFfti5YIzzjc7YFoVT00ZKpfG7/Ncn9y
         p7Y5vyd/SizO1/L/+dwqSAzh4Jmlq1d5mJc6KOTRb7wucgC9d3iKRrZ7A8GuLOWZjPXJ
         BCCRQrOzIGU7FDJYXi44QsRAUIJ8Vl0ZiwPktbJgr2uzKZkQcmhyKx9pZYggA76xdjju
         ZhdA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6a15f1d756fsi23605736d6.65.2024.05.09.15.19.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 15:19:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-612-xGEaBw1KMZiAccUxmxcc2g-1; Thu,
 09 May 2024 18:19:51 -0400
X-MC-Unique: xGEaBw1KMZiAccUxmxcc2g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 331C329AA389
	for <blinux-list@gapps.redhat.com>; Thu,  9 May 2024 22:19:51 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 2F956C0E080; Thu,  9 May 2024 22:19:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EE87DC0E062
	for <blinux-list@redhat.com>; Thu,  9 May 2024 22:19:50 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9CE7B85A58C
	for <blinux-list@redhat.com>; Thu,  9 May 2024 22:19:50 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-352-w0ZdNvg5MMSGsK5FILRnLg-1; Thu,
 09 May 2024 18:19:49 -0400
X-MC-Unique: w0ZdNvg5MMSGsK5FILRnLg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Vb5zG61WbzPrm;
	Thu,  9 May 2024 18:19:38 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Vb5zG0QY2zcbc; Thu,  9 May 2024 18:19:38 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Vb5zG0LmnzcbC;
	Thu,  9 May 2024 18:19:38 -0400 (EDT)
Date: Thu, 9 May 2024 18:19:38 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>, 
    orca@freelists.org, 
    "Christian Schoepplein (chris)" <dmarc-noreply@freelists.org>
cc: blinux-list@redhat.com
Subject: Re: [orca] Re: lost website linux accessibility
In-Reply-To: <75c14585-0801-4c0f-84a4-23c0377bd20b@harrastenurkka.fi>
Message-ID: <233b25db-fd2d-c4f1-5a1f-a80256a54b8e@panix.com>
References: <f2d2325e-636a-437d-a489-b2a2fe6fec7a@harrastenurkka.fi> <CAL9unEtZYVaSFOLjJ4LRqXceNte4xDv=F=BZnZ5smYn37AELBA@mail.gmail.com> <33303af7-4eaf-449b-a356-043e93f4f138@harrastenurkka.fi> <Zj0NbP0wKAmWJvkB@d5421.linova.de>
 <75c14585-0801-4c0f-84a4-23c0377bd20b@harrastenurkka.fi>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
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

if efibootmgr is on your system why not try using efibootmgr without need
of any cameras?
First run efibootmgr as root and examine its output.
Pay attention to boot current and boot order lines.
When finished, and you know about the drives shown put a usb stick into
the machine and run efibootmgr again.
Notice another drive just got added to your system?  That's your usb boot
stick.
There's 4 character hex codes as the first item on each of these lines and
you'll find those codes in the boot order line.
Let's say 0001 is a dvd drive, and 0002 is that new boot stick and 0009 is
the hard drive that's now booted.
If you type efibootmgr -o 0002,0001,0009
You will have adjusted the boot order with the usb stick being the first
one to be booted when next you start the machine.
So, reboot and if you did it right your usb stick will boot first.  No usb
stick in machine then the dvd then the hard drive try to boot in that
order.
I hope this helps.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 9 May 2024, 'Elias St=C3=A5hlberg' via blinux-list@redhat.com wrote=
:

> hi
>
> My system doesn't automatically boot from a usb stick, so I have to at le=
ast
> use the boot menu and I'm wondering if ocrcam could solve the problem. Cu=
rrent
> machines don't have many serial ports anymore, could I use a used proxmox
> serial console through udb. Fortunately, the servers I use support ipmi a=
nd I
> can access the bios through it, but I'm also thinking about this, how do =
I use
> the boot menu or the bios completely blind. Obviously this is not possibl=
e.
>
> On 5/9/24 20:52, Christian Schoepplein (chris) wrote:
> > Hi Elias,
> >
> > On Tue, May 07, 2024 at 06:41:51PM +0300, Elias St=C3=A5hlberg wrote:
> >>    for the purpose, my purpose would be to be able to navigate the bio=
s
> >>    independently and maybe install proxmox. Would there be a capture c=
ard
> >>    for
> >>    this that would be connected to the machine to be installed and to =
the
> >>    other port a machine running camocr
> > Do oyu need to access the bios just in case to install Proxmox , maybe
> > because the installer does not boot?
> >
> > If  the Debian installer can be booted you can install Proxmox on top o=
f
> > Debian. This has the advantage that you can install Debian with braille
> > and / or speech support and have full speech and braille support also
> > for the Proxmox installation. I've installed several Proxmox clusters
> > this way, not problem and fully doable for a blind person.
> >
> > Since Proxmox 8 there is also support for a serial console in the
> > Proxmox installer. This might also work  for us to install Proxmox, but
> > I never tried it because we are still using Proxmox 7 at work and all I
> > have to do is update the clusters to version 8 some when in future.
> >
> > Ciao,
> >
> >    Schoepp
> >
> >
> >
> > _______________________________________________
> > Orca mailing list
> > orca@freelists.org
> > https://www.freelists.org/list/orca
> > General information: https://orca.gnome.org
> > Orca documentation (English):
> > https://gnome.pages.gitlab.gnome.org/orca/help/
> > Orca documentation (translations):
> > https://gnome.pages.gitlab.gnome.org/orca/
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

