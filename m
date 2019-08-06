Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1FC8292F
	for <lists+blinux-list@lfdr.de>; Tue,  6 Aug 2019 03:30:08 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E125C309B6C4;
	Tue,  6 Aug 2019 01:30:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 927035D6D0;
	Tue,  6 Aug 2019 01:30:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 34E3D1800204;
	Tue,  6 Aug 2019 01:30:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x761U1bA014494 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Aug 2019 21:30:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0CE6F6012D; Tue,  6 Aug 2019 01:30:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx06.extmail.prod.ext.phx2.redhat.com
	[10.5.110.30])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 05374600CC
	for <blinux-list@redhat.com>; Tue,  6 Aug 2019 01:29:58 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
	[209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id DEF563697F
	for <blinux-list@redhat.com>; Tue,  6 Aug 2019 01:29:57 +0000 (UTC)
Received: by mail-pg1-f170.google.com with SMTP id r26so4682367pgl.10
	for <blinux-list@redhat.com>; Mon, 05 Aug 2019 18:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=Rtx3GjeWQK3GafezpkTPeC0Hcmho2bIDE2RDwRDdJJs=;
	b=qiiCBgr1TPesCiRFPZ917GWPBBZ6DVbkBsow6NT8p5rMuODpzsKtFkV1UogZ8vjvAK
	YLpobLMiNWHiUPK43R90c3Vif3t8sfyACbsbcc4aKLaFo9RbZw1gXuc0s5AePmJ+rSO6
	WfsSkYaLQ30+mV/8mAarhDjlY2S4hNxRoMadhSsyl9Qj4C1hoES2GLIMEkxvkTc2E8Y7
	ERMcSQvlyOeID/pMmZHL7bAfcoyY4eBu8Wb7P5UPkVAh3iAE3p2vfxhUDtsaSiN+m50/
	L9JOxkP0SDDFm7UneZQO6ZAUcYStetpn6+8iWLs+T+d/0x8xXS1Qc0av6booIT09UJKV
	Us6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=Rtx3GjeWQK3GafezpkTPeC0Hcmho2bIDE2RDwRDdJJs=;
	b=ay49f8cmehL0rICzlI5C/EEy2RhBnNnHoN/4E+a4ccHJoYT3lg/krwhY1qBsziMbg3
	7PpDoRgb16A8EuIGqGn9MZkGW9mjaHr006kuhuxGsUpnLzcLqgmRcDjLDQD09P9TQ7AP
	NbpcmmZQlqAjSmJRQUXxgE8wh5rNwv7NLP13fLl5q07wxoRLC/j4edU3OVq6m10Uwop9
	CBXpFuAXdf0a2nWQp3q4AedlUPcDtuUvozUL5wAWDft60DC5DoJYtrDg7XvKt4gRhY/f
	5TDc1HIVDH/PZuM1OTXhPZi1Xf4DNleApFw0rEwXqW9ZHHYJg2zeAG9r+2s9QAnVNKeD
	WN1g==
X-Gm-Message-State: APjAAAVN7zSK9EFgMxO2yDjttMXXnV13kz38kiP9whhnp6Yy5LOP2yRi
	Uy8JK816CDXm9kXORmxKSt/Gbro0
X-Google-Smtp-Source: APXvYqyxfbWJLrkompNeMMsUVpku/UifhBZfGykrQPQP1ZJVuIi4hgUH7xMH/sdsns9Oeys1uccJPA==
X-Received: by 2002:a17:90a:2767:: with SMTP id
	o94mr533555pje.25.1565054996908; 
	Mon, 05 Aug 2019 18:29:56 -0700 (PDT)
Received: from [0.0.0.0] ([67.230.224.68]) by smtp.gmail.com with ESMTPSA id
	r2sm105636463pfl.67.2019.08.05.18.29.55 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Aug 2019 18:29:56 -0700 (PDT)
Message-ID: <20190806.012851.270.6@[0.0.0.0]>
To: blinux-list@redhat.com
Subject: Re: No F Key Boot Menu
Date: Mon, 05 Aug 2019 20:28:51 -0500
MIME-Version: 1.0
In-Reply-To: <b8453ab0-c221-daf9-6868-8cc121e6c843@gmail.com>
References: <20190805.195033.561.2@0.0.0.0>
	<CAM+Q2c6km7FeRzd3W4VXNv904-CJbzUd0zeYA3_trQE-==C4Xg@mail.gmail.com>
	<alpine.NEB.2.21.1908051720430.2278@panix1.panix.com>
	<20190805.212710.331.4@[0.0.0.0]>
	<b8453ab0-c221-daf9-6868-8cc121e6c843@gmail.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.30]);
	Tue, 06 Aug 2019 01:29:58 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]);
	Tue, 06 Aug 2019 01:29:58 +0000 (UTC) for IP:'209.85.215.170'
	DOMAIN:'mail-pg1-f170.google.com'
	HELO:'mail-pg1-f170.google.com' FROM:'captinlogic@gmail.com'
	RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.215.170 mail-pg1-f170.google.com 209.85.215.170
	mail-pg1-f170.google.com <captinlogic@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.30
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x761U1bA014494
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8401832236540241024=="
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.47]); Tue, 06 Aug 2019 01:30:06 +0000 (UTC)

--===============8401832236540241024==
Content-Type: text/plain
Content-Transfer-Encoding: 8bit

I think I found the answer:
• Fast Boot
On/Off
Enabling fast boot will make the initial post/boot slightly faster by bypassing the boot
device check and using last boot HDD.
Default: On
So now I just need some eyeballs to help me get in there and turn that off.
----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Mon, 5 Aug 2019 20:28:41 -0500
Subject: Re: No F Key Boot Menu

> Yes, on my HP Envy, if I hit the F2 key at startup, I can select from a 
> list of boot devices. I do this when I'm installing a new OS from my USB 
> stick.
> 
> 
> On 8/5/19 4:27 PM, Linux for blind general discussion wrote:
> > Getting into the bios isn't the problem. It's selecting a device to boot from which is.
> >
> > ----- Original Message -----
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: Linux for blind general discussion <blinux-list@redhat.com>
> > Date: Mon, 5 Aug 2019 17:21:14 -0400
> > Subject: Re: No F Key Boot Menu
> >
> >> The delete key can get you into bios on some systems too.
> >>
> >> On Mon, 5 Aug 2019, Linux for blind general discussion wrote:
> >>
> >>> Date: Mon, 5 Aug 2019 15:59:41
> >>> From: Linux for blind general discussion <blinux-list@redhat.com>
> >>> To: blinux-list@redhat.com
> >>> Subject: Re: No F Key Boot Menu
> >>>
> >>> Often the escape key can be used to bring up a boot menu. That being
> >>> said, there's usually an option in bios to set more than 1 boot drive,
> >>> such that if the 1st 1 doesn't contain bootable media, it'll move onto
> >>> the 2nd 1, etc.
> >>>
> >>> On 8/5/19, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >>>> My bios:
> >>>> Board: EVGA INTERNATIONAL CO.,LTD 131-HE-E995 1.0
> >>>> UEFI: American Megatrends Inc. 2.08 06/28/2019
> >>>> does not seem to have a function whereby you can select a device to boot
> >>>> from using one of the function keys. Instead, one must physically go into
> >>>> the bios and change boot order, if, for example, you wish to boot from a
> >>>> flash drive to install an OS. And if that flash drive is subsequently
> >>>> removed, the system will not boot, until you go into the bios and change the
> >>>> boot order, again.
> >>>> My question: is this normal bios behavior these days, or is something wrong
> >>>> in my particular implementation. I turned off the secure boot function in
> >>>> there. Would turning that on fix this? What else might I look for in the
> >>>> bios to either (a) allow for falling back on different devices should one be
> >>>> removed or (b) to allow the function key boot menu found in previous bios
> >>>> implementations.
> >>>>
> >>>> _______________________________________________
> >>>> Blinux-list mailing list
> >>>> Blinux-list@redhat.com
> >>>> https://www.redhat.com/mailman/listinfo/blinux-list
> >>>>
> >>>
> >>>
> >> -- 
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> 
> -- 
> Christopher (CJ)
> Chaltain at Gmail
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


--===============8401832236540241024==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
--===============8401832236540241024==--
