Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 78664202AD8
	for <lists+blinux-list@lfdr.de>; Sun, 21 Jun 2020 15:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592747231;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XBQxxNMGZkEoGqGJMJCU8fxpxckH/J2o4W+G8ySoBPM=;
	b=Q0bNq3baomujxA8/eUH0XPGYx6cqzRdfPeujSAx7vDL0bUDYVoX6iH7aejUykSikb7smnq
	ckn5JV6yIfk+KrR1OtJ79R/dkfliBF7g6P33IJFEa8jSNsQsi1t6IXJPr75EWnBdCo+yqD
	7Y8BnVTDuOUPkZnM+y63kZ/bp76wO3c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-205-cLWbSOKTOceig4dG39R8Jw-1; Sun, 21 Jun 2020 09:47:09 -0400
X-MC-Unique: cLWbSOKTOceig4dG39R8Jw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D273464;
	Sun, 21 Jun 2020 13:47:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B2B75D9D5;
	Sun, 21 Jun 2020 13:47:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A7DF614CC8;
	Sun, 21 Jun 2020 13:46:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05LDkkmk029169 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 21 Jun 2020 09:46:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AC08B2156A49; Sun, 21 Jun 2020 13:46:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A76FB2156A3A
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 13:46:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E090281B0C5
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 13:46:43 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-497-TvCMSYSnPCWkEuTUV95Vng-1; Sun, 21 Jun 2020 09:46:41 -0400
X-MC-Unique: TvCMSYSnPCWkEuTUV95Vng-1
Received: by mail-qk1-f178.google.com with SMTP id k18so4163887qke.4
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 06:46:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=szaV5VtfodsAUbv4cUI6HTDtotlU2yDevgd614YcoA4=;
	b=VmUhIUAV5AK8KRFos87P2wPOzxDQehq+spE+rDatm8cfcXTxUCLftHW7DIKUSrnZQ+
	CFz9IITPZZVRNDjVBjqum6R0oZcdiqF+I1BTYH3oSapU5GtPNusvm0appQisAL0CISD+
	4uxlY+6cddTvRtBCVEd1XtauvrfxYHJIQFDgXi4Hov0m97+EAh2Js4AyDabH0XZHr+Mf
	y2+Y+Uiaz7oMSi+Doo4Wr0aP7ahSqiSdOra/95TDm+9gDnf+z8zFPeW12NKJX5S61J+S
	VRpJOw+mC4bu9PEqaSN1AckNpD1WUmWAVDb0aSLMDYyExKCgnStUzGeS4nq35Giw2h/G
	LG4Q==
X-Gm-Message-State: AOAM531VKzDH1EkeamTUkUtdvWx7mssbpbd3DexpaeN/9Ou26e4nit+2
	IGdS0VG1/jW7EKOUolTIgPoMVMO3EvgNr4DZLQrgY+Qn
X-Google-Smtp-Source: ABdhPJz6O+mLjnZ9oqPHoinEyLDl8uy4nSeusKBzWyhQTEseCXRtlnwt1PqyEYiHuZhSob2IQBiZeiXxAY+5f7PJc98=
X-Received: by 2002:a05:620a:91b:: with SMTP id
	v27mr11874662qkv.264.1592747200705; 
	Sun, 21 Jun 2020 06:46:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ea4a:0:0:0:0:0 with HTTP; Sun, 21 Jun 2020 06:46:40
	-0700 (PDT)
In-Reply-To: <20200621074757.GA2690@rednote.net>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
Date: Sun, 21 Jun 2020 13:46:40 +0000
Message-ID: <CAO2sX33qfmTddnSNXMvrKHfOKYPm7Uy5oTaKP8EBqcxUgzvXFw@mail.gmail.com>
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

*Googles MeerKat System76.*

Seems a bit anemic on USB-A ports and the apparent lack of an Optical
drive is personally a deal breaker in something advertised as a
compact but fully functional desktop machine, but those are some
rather impressive stats for something so small... bump it up to 4
USB-A ports on both front and back, confirm that the SD slot is
full-sized and of the kind that leaves the card flush with the slot
and add a second, and add the option for a all-in-one Optical drive or
two, and I'd probably be salivating.

*Checks System76's full-sized Desktop options...Eyes widen as much as
atrophied eyelid muscles will allow.*

They make machines with full terabytes of RAM!? And I thought it
ridiculous when I first heard of people with 64GB of RAM. *Says the
guy running a vintage 2011 HP with 4GB of RAM.*

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

