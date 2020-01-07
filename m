Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 07F5B131EB5
	for <lists+blinux-list@lfdr.de>; Tue,  7 Jan 2020 05:55:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1578372939;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4lXHuoslw8rKPJkl+Ieris0Heh4gWL4f/o2kepHacXg=;
	b=JNAPe2HPY/RL4QW0E+/niqqocCsAYmB9jBivHVrc/zTpV+I0DE0mhxo2vnPuke7uH8aY+D
	Fhhd1YZ0F214hmGEXrkJtZmzq/MSA8XvT+A72B1xN/NnTxSUi0GV2PSWQd67QwRIZc6zcU
	Tlb9FqTTHoPeX4fG4dn+iEmIEBSHixA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-119-F9i8ikqfM2adzQHNS2vKBA-1; Mon, 06 Jan 2020 23:55:35 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0272E8024D9;
	Tue,  7 Jan 2020 04:55:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BCFA785EE9;
	Tue,  7 Jan 2020 04:55:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 01D7F1809567;
	Tue,  7 Jan 2020 04:55:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0074tIAm031372 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Jan 2020 23:55:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 308D0101B878; Tue,  7 Jan 2020 04:55:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 26D721256D5D
	for <blinux-list@redhat.com>; Tue,  7 Jan 2020 04:55:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 18080802090
	for <blinux-list@redhat.com>; Tue,  7 Jan 2020 04:55:14 +0000 (UTC)
Received: from mail-yw1-f43.google.com (mail-yw1-f43.google.com
	[209.85.161.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-235-2TYIhljnPIWrpDZbFF9E2g-1; Mon, 06 Jan 2020 23:55:12 -0500
Received: by mail-yw1-f43.google.com with SMTP id i126so22920267ywe.7
	for <blinux-list@redhat.com>; Mon, 06 Jan 2020 20:55:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=O6Qn8jvppwqrGHdIj+1TtYjjhchq1O52j6BLPJ+XK6I=;
	b=PGTZ2h+hwBElthyGhhhv4nfmEB8mwb8hM/bXaYse7+jkSGl0Z01/vQIQcUU+WhTI3Y
	iDAc7JQ12CiInCoCF5ra7t5fou4b+IlcMw3u/A986pEBpDHFC2EQE+W47e481J1gRgyx
	cHpDus7rB4nAFSA7FZMJeeT+8o0i/LX0/bKTKmb1D8/2LZCv7IoIbrckKU/7Y5WA+ZI6
	m9Q7Ab+s1k3w7PIgxve1u4itDwESyF2nHEZ40nYplS88rKEL4Jx9s2DVTFTewM32kNHQ
	D6YjmSj5l7Tbtt9rDkwtP8Muvzs4tsF8jng1AMTCwj+ZjejMSwDpk5OkxtYQ2U1EjLhY
	807Q==
X-Gm-Message-State: APjAAAURz8q6G/7ICT4Xz0N1sd/wWW1Clzx4uA81685wx9DNh1EwWd8f
	+x4VbnAzxNPPOXcbe5TIre80Xf1t
X-Google-Smtp-Source: APXvYqwsv/7SbtVitELTeyOV6ai/oljrd5sBY+FUZ6lFQZMlDbRIfSovHk3VAGG2OtEmpV0vNQhU7g==
X-Received: by 2002:a81:4c4a:: with SMTP id z71mr72310328ywa.184.1578372911134;
	Mon, 06 Jan 2020 20:55:11 -0800 (PST)
Received: from [0.0.0.0] (24-220-234-87-dynamic.midco.net. [24.220.234.87])
	by smtp.gmail.com with ESMTPSA id
	124sm29191383ywn.76.2020.01.06.20.55.09 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 06 Jan 2020 20:55:10 -0800 (PST)
Message-ID: <20200107.045349.370.1@[0.0.0.0]>
To: blinux-list@redhat.com
Subject: Re: Slint: No Sound, Screen not in text mode
Date: Mon, 06 Jan 2020 22:53:49 -0600
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.2001062149520.22387@panix1.panix.com>
References: <20200107.021828.169.22@[0.0.0.0]>
	<alpine.NEB.2.21.2001062149520.22387@panix1.panix.com>
X-MC-Unique: 2TYIhljnPIWrpDZbFF9E2g-1
X-MC-Unique: F9i8ikqfM2adzQHNS2vKBA-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0074tIAm031372
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I solved that problem. I have no idea what the issue was but two reboots fixed it.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Mon, 6 Jan 2020 21:54:04 -0500
Subject: Re: Slint: No Sound, Screen not in text mode

> Could it be e2fsck needs to be run as root on that hard disk?
> I think for us screen reader users it would be helpful to have a chron
> job run that would repair the hard drive while the system was able to
> use the screen reader and let the user know the disk repair job is
> starting and to leave the system alone until maybe some sound signal or
> message comes up telling them the job is done and here's what got fixed.
> I just had to run e2fsck a few minutes ago.
> 
> On Mon, 6 Jan 2020, Linux for blind general discussion wrote:
> 
> > Date: Mon, 6 Jan 2020 21:18:28
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: blinux-list@redhat.com
> > Subject: Slint: No Sound, Screen not in text mode
> >
> > I have installed the latest slint onto a hard drive, choosing
> > "start in graphical mode"
> > . Speech was available during install. However, I rebooted with my braille display attached, saw that ubiquitous
> > screen not in text mode
> > message, and there is no sound.
> > I attempted to get a console with ctrl+alt+f1-2-3. No console prompt appeared. Obviously it has started up, because the
> > screen not in text mode
> > would not be there otherwise.
> > During install, I chose the mate desktop, but I forget which window manager I chose.
> > Any tips for rescuing this situation would be appreciated.
> > Rob
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
> 
> -- 
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

