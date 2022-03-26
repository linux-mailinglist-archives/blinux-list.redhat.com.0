Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F15C4E7FBF
	for <lists+blinux-list@lfdr.de>; Sat, 26 Mar 2022 08:18:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648279092;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dgcNILbQMl4MKNrZPMMSRulYst7VPKbuCAoasGKzOU0=;
	b=NxS8oApDY5LfFg36CU4ip/yA7ocW5Ax2RzlKbr79+qJ8Q4fNVFto/afJoEZcHIsp+vbFnb
	erQ52Rt5OygGdTdDEAw7X+DOxS6nGtSjYxvu0+O+5B38pMyEvHtk0Le8L8f0WOj32inNLg
	o3Ak/bBkoBeM7xG9vxCH0e4qI1ZBIG8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-350-mrMRvWoJN-usFP4XQWUvmw-1; Sat, 26 Mar 2022 03:18:08 -0400
X-MC-Unique: mrMRvWoJN-usFP4XQWUvmw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B47B280281D;
	Sat, 26 Mar 2022 07:18:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 77AB6403D1A3;
	Sat, 26 Mar 2022 07:18:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C7D501940358;
	Sat, 26 Mar 2022 07:18:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: libvirt/qemu and dns
Date: Sat, 26 Mar 2022 02:19:09 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.4618.1648276203.111202.blinux-list@redhat.com>
References: <mailman.4332.1648215013.111204.blinux-list@redhat.com>
 <mailman.4540.1648230362.111201.blinux-list@redhat.com>
 <mailman.4618.1648276203.111202.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.2.2.0)
X-Spam-Flag: NO
Message-ID: <mailman.4619.1648279082.111202.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I just went ahead and set up a bridged network. Much simpler lol.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Sat, 26 Mar 2022 01:31:15 -0500
Subject: Re: libvirt/qemu and dns

> The windows vm is set to obtain an IP address automatically, and obtain dns server automatically. The default network is running; the vm would not launch without it, so it's set to autostart.
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Date: Fri, 25 Mar 2022 18:45:55 +0100
> Subject: Re: libvirt/qemu and dns
>
> > On Fri, Mar 25, 2022 at 08:31:17AM -0500, Linux for blind general discussion wrote:
> > >I have a win10 virtual machine running in libvirt via qemu with the
> > >default NAT network set up by libvirt. I'm able to ping IP addresses but
> > >not resolve dns. On the host, I have systemd-resolved. I was going to
> > >start setting up a bridged network, but I thought of this first. Do I need
> > >to do something with systemd-resolved to get my virtual machines to play
> > >nicely with the network?
> >
> > Per default dns resolution is working when using libvirt and let the
> > machines run in nated network mode.
> >
> > What are the dns settings in your Windows vm? Is the dns server also the
> > gateway address? Per default and if you not have changed the
> > libvirt default network it should be 192.168.122.1 ?
> >
> > Is the default network in libvirt running? Whats the output of
> >
> > virsh net-list
> >
> > If no running network is listed start the default network with the following
> > command:
> >
> > virsh net-start --network default
> >
> > And mark it for autostart:
> >
> > virsh net-autostart default
> >
> >
> > Can you see a dnsmasq process on your host machine? This dnsmasq is the dns
> > server used by libvirt for dns resolution inside the vm's running in nated
> > mode.
> >
> > Cheers,
> >
> >   Schoepp
> >
> >
> >
> >
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

