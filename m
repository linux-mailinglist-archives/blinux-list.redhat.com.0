Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id F02F33BA7EC
	for <lists+blinux-list@lfdr.de>; Sat,  3 Jul 2021 10:50:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625302217;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=t8/+iylsKJP2EBWriZ30hCKEM1Ccy4rvQekNOLN785s=;
	b=i30VlFCF2N+adZg5gMDPgOWib0r8psm4lc1UNdLeM1IyUJCX89vPvhnDCCDsBNgUCtUK5e
	mSWACAevwqguv/ZHD7i8w5O6vgez+cJW73fAj3YTfy/IEcCMrDwKWN1ACrKliAEfq2Ub9J
	xuGJ4iM/awaphktAZkh7KKNkUApF0PY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-322-KunjtUGTODSzf5fZ_FFlVg-1; Sat, 03 Jul 2021 04:50:15 -0400
X-MC-Unique: KunjtUGTODSzf5fZ_FFlVg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 48C30800C60;
	Sat,  3 Jul 2021 08:50:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD04310016F8;
	Sat,  3 Jul 2021 08:50:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 255D01809C9A;
	Sat,  3 Jul 2021 08:50:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1638nrm0024174 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 3 Jul 2021 04:49:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BDBB62011C7A; Sat,  3 Jul 2021 08:49:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B979C200C0C7
	for <blinux-list@redhat.com>; Sat,  3 Jul 2021 08:49:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 16EB11064FAD
	for <blinux-list@redhat.com>; Sat,  3 Jul 2021 08:49:50 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-573-94TATQ23NWO73OkyiGL13Q-1; Sat, 03 Jul 2021 04:49:48 -0400
X-MC-Unique: 94TATQ23NWO73OkyiGL13Q-1
Received: by mail-wr1-f45.google.com with SMTP id a8so3785712wrp.5
	for <blinux-list@redhat.com>; Sat, 03 Jul 2021 01:49:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:thread-index
	:content-language;
	bh=XZ716Q60Axl1zVfbGpFXW10WnvFCvdRL8VA8czzVklU=;
	b=gUlf4h6YjRkJgC7x8lEEqG+lvauCmFs459qVW1ZApPdmTp8dMKiIDBOFt3zjASpv/B
	LB6k4BV137Ph13c7hJkO79nE0CzNu1iNNgqKCup5xDPtoHU5VzM0502ljqIBMIZ9qhM2
	ZAkrYH6gBASL0AxOVVejBOf7PmXYk2Xc4tKCRstyp5ff2rDla5bCvcpNz+zbuvvQTGvk
	/zE4cx5067duH1rzLs3CkRNGJXFkoj1yBwtaNBFzUatZmL0s1Y456HfsSPdIA/fTFSDQ
	NfbSPqdoCm5jubWKrZ6Ve6qmELugBk4otLmaHz7eolsRSjSuSzVYYzU9E3lAEQ1IHhzZ
	Mkyw==
X-Gm-Message-State: AOAM5321hYB+erMHp1yeoZNxBCjeCJozv7SM4EZZxGOzEauGdFbrziHn
	yXDZR8SRoPB90rUMXm+49bsXJca2hp4=
X-Google-Smtp-Source: ABdhPJy+h3VOtX1G/ZykZoDVhNQgSFn4hSW5u7JxiUdFEBJ5tR/ptq+T2Actq1zMdgOGNv+KhsF8ow==
X-Received: by 2002:a5d:5586:: with SMTP id i6mr4245154wrv.195.1625302186548; 
	Sat, 03 Jul 2021 01:49:46 -0700 (PDT)
Received: from LAPTOP57VCMCF1 ([197.185.110.110])
	by smtp.gmail.com with ESMTPSA id
	g15sm5824626wri.75.2021.07.03.01.49.44 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 03 Jul 2021 01:49:45 -0700 (PDT)
To: <blinux-list@redhat.com>
References: <087a01d76f74$4fc8ad00$ef5a0700$@gmail.com>
	<4681dcd6-7e0b-ff99-b515-52c415cdb377@linux-a11y.org>
In-Reply-To: <4681dcd6-7e0b-ff99-b515-52c415cdb377@linux-a11y.org>
Subject: RE: Interesting arch issue
Date: Sat, 3 Jul 2021 10:49:42 +0200
Message-ID: <0b0701d76fe8$5f1311a0$1d3934e0$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQJwRTkN+uGoeDFfYK9MBK8w6loF5AJF074gqe0V/QA=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1638nrm0024174
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-za
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Sorry, my bad. I forgot to add that to the email. As I stated, I am installing in "VMware Workstation 16 Player" for windows see system specs below.

Device name	LAPTOP-57VCMCF1
Processor	Intel(R) Core(TM) i5-10210U CPU @ 1.60GHz   2.11 GHz
Installed RAM	16,0 GB (15,8 GB usable)
Device ID	E533DBAD-50FA-48FF-A9AC-4B1B9BBC462D
Product ID	00342-41428-46767-AAOEM
System type	64-bit operating system, x64-based processor
Pen and touch	No pen or touch input is available for this display

I am thinking about making this an Arch machine and running Windows in Qemu for work.

Warm regards,

Brandt

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Friday, 02 July 2021 21:17
To: blinux-list@redhat.com
Subject: Re: Interesting arch issue

Howdy,

maybe this is better placed on an ArchLinux list than here :).

witouth know your system, i have an guess.
if you exactly type what you send per mail then you missed some parameter (-o to specify the output file) in  grub-mkconfig $ grub-mkconfig -o /boot/grub/grub.cfg

just an guess

cheers chrys

Am 02.07.21 um 20:58 schrieb Linux for blind general discussion:
> Hi all,
>
>   
>
> I have in the past installed Arch successfully, but now, for some 
> unknown reason every time I do so by hand, AKA "the arch way", 
> something is wrong with my grub and seeing that I am at the moment 
> installing in "VMware Workstation 16 Player" for windows, I cannot 
> boot back in to installation media to repair grub.
>
>   
>
> Seeing that I am installing for bios boot, I do the following.
>
>   
>
> $ pacman -Sy grub
>
> $ sudo grub-install -target=i386-pc /dev/sda
>
> $ grub-mkconfig /boot/grub/grub.cfg
>
>   
>
> If I am doing something wrong here, please help?
>
>   
>
> Somehow I got Arch installed using archfi, though I find using that 
> script to be a pain, because it does not install accessibility tools 
> such as espeakup, Orca and espeak. I also found that the sound didn't 
> work until I reinstalled alsa and alsa-utils.
>
>   
>
> Warm regards,
>
>   
>
> Brandt Steenkamp
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

