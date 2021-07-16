Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 281D93CBC1E
	for <lists+blinux-list@lfdr.de>; Fri, 16 Jul 2021 20:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626461376;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GbB00k8SfyY7OjbCoUn4NLQBATE4SJaaDg/audToyss=;
	b=ODdaMUX0sblKAZSAittISNLV0W5Rzp9B8gXzOdtWr14sAirua3Zg5SUCpcZ1S8Qqc7sLwU
	nOzAFWbfwtTwI60JMpM8gpQjY0q5xY6c7dwbuzAKONEwMfRgxKXdKo6Ad+q4Qv73NgDfbK
	+NufgKJllYQxTybfUvsZs98CORctJqY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-433-k1DwL6nnMEuemiSrpKkpuw-1; Fri, 16 Jul 2021 14:49:34 -0400
X-MC-Unique: k1DwL6nnMEuemiSrpKkpuw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF966803F56;
	Fri, 16 Jul 2021 18:49:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C2831F5;
	Fri, 16 Jul 2021 18:49:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CDC4E1809C99;
	Fri, 16 Jul 2021 18:49:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16GInGE9018090 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 14:49:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B20AE20A8C43; Fri, 16 Jul 2021 18:49:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ADB732093CDF
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 18:49:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68CED8037AB
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 18:49:11 +0000 (UTC)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
	[209.85.166.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-286-TMNkRAZGPEeS76txPXXkGw-1; Fri, 16 Jul 2021 14:49:08 -0400
X-MC-Unique: TMNkRAZGPEeS76txPXXkGw-1
Received: by mail-io1-f41.google.com with SMTP id z11so11832880iow.0
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 11:49:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=FFhMYgzkrHrYxnusCquFre3YwtI4SSeu55vmBXm4quU=;
	b=XCwH7GLPCLoc2XXVG7pZ00D4SHhVuBbWTiswFnNyE9v1Gd88WgV2ZSLm9u+oaP4TOL
	55tH160h5ib2vfWKdbtyUtgzhou2/JVh0OtGl6vyry4f9eItruv4UshWcNvftF/sASUW
	j6ppbErWDGSDAS07peDptnuXcrpK0NucFMFv3S1DjpVgOBxrMpBJNl9vXkZuPEqCCPko
	4FAnHOCAnRdBvbyj9Zo6hB77s3FjyQD+3eBQGc2J/MhfcbwOOoSc7pZb9G0qNk1xcDyx
	0mvlwRER2l6n2h/Dsm8q4CE7iqK4Iap1PYn6zKIO88A1Zu1PNhlLGEpZU3ujNuagqbTT
	0q/w==
X-Gm-Message-State: AOAM533OSEa1I4t9Ijyv2d83fI4p0GJFePQDpJ9GKKWi3VUYuZj24vsC
	rFwwch/mgm+KY/nX4Gm38ybD853K/1t703dkE/70SqKx
X-Google-Smtp-Source: ABdhPJyQD9ph0KFjcg7QtktsRqXixOj5Edt/vBQRxrBlc+e6QcbR6eIo5xDtAJuc/GH8tHAMiZtst0931yKgRUlWyRY=
X-Received: by 2002:a02:774a:: with SMTP id g71mr10114660jac.137.1626461347586;
	Fri, 16 Jul 2021 11:49:07 -0700 (PDT)
MIME-Version: 1.0
References: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com>
	<C2911657-E880-4797-8B75-5666425CEE15@gmail.com>
	<alpine.NEB.2.23.451.2107161359250.15260@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2107161359250.15260@panix1.panix.com>
Date: Fri, 16 Jul 2021 13:48:56 -0500
Message-ID: <CAGJxbF6PEh1_SoHaoUTfgSvOHJZ=+5j3bm1jYGxLPfQKx-QA6A@mail.gmail.com>
Subject: Re: Fedora pros and cons
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yeah, they did, and Trisquel is the only Linux distro which has done this.
I should write up a guide for installing Fedora Mate while it's still fresh.
Devin Prater
r.d.t.prater@gmail.com
gemini://tilde.pink/~devinprater/



On Fri, Jul 16, 2021 at 1:01 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> So long as you already know how to do all of that ahead of installation
> you're golden.  Similar to Microsoft accessibility approach for my money
> in that you have to know how to turn screen narrator on ahead of time too.
> For my money when Apple released Tiger 10.4 Apple did it better.
>
>
> On Fri, 16 Jul 2021, Linux for blind general discussion wrote:
>
> > With Fedora, you at least know that the Mate installer is accessible.
> Ubuntu Mate?s installer isn?t accessible, with the latest 20.10 release.
> Fedora?s Mate spin, which I just installed today, *is* accessible. You
> still have to enable Assistive Technology support, and turn on Orca, and
> set a keyboard command for Orca, but that?s not too hard to do.
> > Devin Prater
> > r.d.t.prater@gmail.com
> >
> > Https://devinprater.flounder.online
> >
> > > On Jul 16, 2021, at 10:29 AM, Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
> > >
> > > Hello, I am interested in advantages and disadvantages of Fedora vs
> Ubuntu-based linux.
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
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

