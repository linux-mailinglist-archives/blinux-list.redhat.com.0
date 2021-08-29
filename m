Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 171403FAC17
	for <lists+blinux-list@lfdr.de>; Sun, 29 Aug 2021 16:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630245705;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7psT8hqaaSj34a1wac/uDQeIgj1THbz+BPCgRXHAeDI=;
	b=foRyZriuu45Pdvwf5oI3ukGc/ulJJ6z65NBUG+VxJkwRKRrJb/D9wD88IW1roBH9+EAhvH
	gWkD0GpukrgsRSASM+Du/KaQcx+g8l41ZnmtSV1zZIUjs3a4Hw7V5zLoqSbZ9ZFReSEC+t
	x17m3B6JlKE1U71r3FNv6ORboUlcW10=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-353-PITTiLdWNvalnRLMlh-VoQ-1; Sun, 29 Aug 2021 10:01:43 -0400
X-MC-Unique: PITTiLdWNvalnRLMlh-VoQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B9651008062;
	Sun, 29 Aug 2021 14:01:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97ADE5C1B4;
	Sun, 29 Aug 2021 14:01:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 316E74BB7B;
	Sun, 29 Aug 2021 14:01:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17TE1OkB013079 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 29 Aug 2021 10:01:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 414A0201AC7B; Sun, 29 Aug 2021 14:01:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D3E02023A19
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 14:01:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5CF94811E76
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 14:01:21 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-346-jahnV4KdNiq353l2fIHYCw-1; Sun, 29 Aug 2021 10:01:19 -0400
X-MC-Unique: jahnV4KdNiq353l2fIHYCw-1
Received: by mail-wr1-f47.google.com with SMTP id q11so18320942wrr.9
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 07:01:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=WjFEbtXnaQ5u3iQFQRLVxA0d33CchKI2XoRR18IjZNA=;
	b=F1E5OaokQlLjUOa4H6A+RCN30LH5YzIghOGRlR4VT3BEgUoWrxfVYHBHI5Vd8AApVR
	FTX96iDtT+XekNw1rcVb/hGYRDrWTt/YWIlOgVSRMseSxYoGox1Eh1oGSmtZd3wlyRj4
	lNnWCRFU6sGoooXME3tUM/KYxgdoXCC2fNUWVbTaUpvurn7oL6WLzmGzW4LV+Ty1r9MB
	fPfPAaQCUlZm8PWsN9VkDsf7yeQlvh5IYF4KoREyb2fnSH/CbtL/BKDdhXF3m0g9jeJ5
	AvcgzxkxPolW0+208Gr0wUyjrmHhRw1FdLvx/JcWFJFowUG4a/6O2Qm9D+DaT1BRtXKT
	0JCg==
X-Gm-Message-State: AOAM532YhJ7SwO7CmQZw+HPCHNq2Qo9FKp1ttfYGQVb80kJedJxYJZPc
	MJcUGaZJbuMeqGE8/F31sdPO7Gx6//CUKA==
X-Google-Smtp-Source: ABdhPJw4QZ4rWjx0LiTdhOsj3ILXRu5KeP6CenP0zraRDoUhh1iE3XjG9gF4ZFSpkMgjkD9wm1wcNw==
X-Received: by 2002:a5d:5712:: with SMTP id a18mr20386444wrv.367.1630245677815;
	Sun, 29 Aug 2021 07:01:17 -0700 (PDT)
Received: from brandt-slint.localhost ([165.255.54.110])
	by smtp.gmail.com with ESMTPSA id a5sm1605782wmm.44.2021.08.29.07.01.16
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 29 Aug 2021 07:01:17 -0700 (PDT)
Date: Sun, 29 Aug 2021 16:01:11 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Found this on youtube
Message-ID: <YSuTJ9eHEzFKdmn9@brandt-slint.localhost>
References: <9290E34A-9F86-46DC-ACF7-507E81BB70BF@gmail.com>
	<efe42a63-c45d-faf0-fa47-289a51049768@gmail.com>
	<alpine.NEB.2.23.451.2108290909030.12570@panix1.panix.com>
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2108290909030.12570@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

every time I've tried installing Jenux the install failed. Why? I have no idea. I know there are many people verry happely using Jenux, unfortunatly, I am not one of them.

Warm regards,

Brandt Steenkamp

Sent using Mutt from the Slint laptop
On Sun, Aug 29, 2021 at 09:12:29AM -0400, Linux for blind general discussion wrote:
> Jenux does get an accessible system up with either android or several
> flavors of archlinux.  Not all flavors of archlinux are accessible that
> can be installed with Jenux but most are.  Jenux has continuing support as
> shown by the different dates embedded in the names of the iso's and sha512
> files available on its site.
> 
> 
> On Sun, 29 Aug 2021, Linux for blind general discussion wrote:
> 
> > Hi all,
> >
> >
> > The last I checked, the BlindArch ISO is rather old. I did an install, but
> > there were so many things wrong with the install I kept it for less than an
> > hour. It would've taken me days to fix it all.
> >
> >
> > I am actually considdering writing an install Script in the line of a NixOs
> > configuration for my own personal use, thus, no choices, all baked in to the
> > script. It would probably take me some time, but what can you do?
> >
> >
> > I would rather do that than screw around with "install scripts". Most of the
> > darn things is buggy as all get out, or doesn't include the accessibility
> > stuff by default.
> >
> > Warm regards,
> >
> > Brandt Steenkamp
> >
> > Sent using Thunderbird from the Slint Laptop
> >
> > On 2021/08/28 23:05, Linux for blind general discussion wrote:
> > > Hi all,
> > >
> > > Just found this on Youtube and wondered if anyone hhas tried it.  This is a
> > > blind arch install demo on how it works.
> > >
> > > https://www.youtube.com/watch?v=72g-2fbP04w
> > > Matthew
> > >
> > >
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
> >
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

