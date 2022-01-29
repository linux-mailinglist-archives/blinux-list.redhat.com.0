Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6814A31E1
	for <lists+blinux-list@lfdr.de>; Sat, 29 Jan 2022 21:43:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643489021;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=THpyRy5aJKbJ0b6OPdbzHn4X3TWVyzECS49YQafKu/8=;
	b=gj9ixGuIlWal6NmrqdG/KhCM65yIaoi1x8Sm9JYOfcer3mB0gsRBQIDkYFDatdBqdwyd53
	bgMD6O72+oEi+vN8tvwu6OOWzNM5n2ZfyYd1S1cBfGyXl/wql9oFPywDj9IFuoAeCElAko
	Q9bh+YgLNOVWzlaTtpI0n/woMqnqswA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-392-qYOUu7PyOgqdx_v7nJPEwg-1; Sat, 29 Jan 2022 15:43:37 -0500
X-MC-Unique: qYOUu7PyOgqdx_v7nJPEwg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 274E0809CD3;
	Sat, 29 Jan 2022 20:43:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 86EB112E27;
	Sat, 29 Jan 2022 20:43:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 324EB1809CB8;
	Sat, 29 Jan 2022 20:43:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20TKhSgH007059 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 15:43:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 19D58C07F47; Sat, 29 Jan 2022 20:43:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 15F9DC15E73
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 20:43:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E9B9B28FBBC1
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 20:43:27 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-295-CSzzeu_JNT-R9-WpbZhlDw-1; Sat, 29 Jan 2022 15:43:26 -0500
X-MC-Unique: CSzzeu_JNT-R9-WpbZhlDw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JmR9n2HVVz15qy
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 15:43:25 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JmR9n28PSzcbc; Sat, 29 Jan 2022 15:43:25 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JmR9n1pbSzcbC
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 15:43:25 -0500 (EST)
Date: Sat, 29 Jan 2022 15:43:25 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
In-Reply-To: <PH0PR14MB429660BC34A2CD6F0D17D1FEC8239@PH0PR14MB4296.namprd14.prod.outlook.com>
Message-ID: <4242a9f-1024-f489-1fc2-27f01a1ea314@panix.com>
References: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
	<84ff2447-0200-a2ae-1d7b-1d62d6853c17@gmail.com>
	<79793ef9-1158-eb3c-cfdb-8cbe2aa9bb1@panix.com>
	<9b23be50-9125-dbe1-66f4-03936e6c2aa1@gmail.com>
	<55d93fef-37e8-765c-5f48-fe5e859f052f@gmail.com>
	<42544918-c8cc-417-de7c-950c0ef5b15@panix.com>
	<PH0PR14MB429660BC34A2CD6F0D17D1FEC8239@PH0PR14MB4296.namprd14.prod.outlook.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Real bare metal has no operating system on it at all as a starting
position.  Due to malware infections it used to be possible to go to bare
metal and install an operating system to clear the problem but bouncing
moon ended all of that.  My guess with bouncing moon it'll be time to
replace the motherboard and the hard drive to clear that problem.


On Sat, 29 Jan 2022, Linux for blind general discussion wrote:

> I'm not sure what the canonical definition is, but I consider bare metal to include dual boot. Afterall, dual boot just tells you which partition to boot from, but you're still running the OS with no hypervisor layer or emulation or virtualization.
>
> --
> Christopher (AKA CJ)
> Chaltain at Outlook
>
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
> Sent: Friday, January 28, 2022 11:58 PM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
>
> Bare metal means no dual boot, no vm, an ssd or ide or scsi hard drive is used.
>
>
> On Fri, 28 Jan 2022, Linux for blind general discussion wrote:
>
> > what is bare metal?
> >
> > I keep hearing that term zand am wanting to find out more inmfo on it
> >
> > On 1/27/2022 6:10 PM, Linux for blind general discussion wrote:
> > > It will be interesting to find if archlinux on bare metal using
> > >> pipewire runs into sound problems.
> > >
> > >
> > > I don't think it will have sound problems. Everywhere I run Pipewire
> > > on bare metal, it just works with no major problems, and actually
> > > few minor problems. Fedora and Arch both seem to work on bare metal with Pipewire.
> > > Virtual machines, especially Qemu and I believe VirtualBox as well,
> > > seem to be the only places where it appears to have trouble.
> > >
> > > ~Kyle
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flis
> > > tman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%
> > > 7C%7Cebb6cd747b164f36257608d9e2ec5230%7C84df9e7fe9f640afb435aaaaaaaa
> > > aaaa%7C1%7C0%7C637790326897578112%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC
> > > 4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;
> > > sdata=lj3YdndSvKYxt%2FdSbwagk1e%2B6tQZ4Hf8d8F9SUoDuiM%3D&amp;reserve
> > > d=0
> > >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistm
> > an.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7
> > Cebb6cd747b164f36257608d9e2ec5230%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7
> > C1%7C0%7C637790326897578112%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMD
> > AiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=lj3Y
> > dndSvKYxt%2FdSbwagk1e%2B6tQZ4Hf8d8F9SUoDuiM%3D&amp;reserved=0
> >
> >
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7Cebb6cd747b164f36257608d9e2ec5230%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637790326897578112%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=lj3YdndSvKYxt%2FdSbwagk1e%2B6tQZ4Hf8d8F9SUoDuiM%3D&amp;reserved=0
>
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

