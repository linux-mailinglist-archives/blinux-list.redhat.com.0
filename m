Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4CD45E82E
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 08:04:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637910261;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=t+cSsiOd3dBYn7x7F4vK59Q9K2OjEuJzN6pI81FRVUE=;
	b=N7OkYaRGy4Cd7XJGFTM61IBZg2jppgKCmB1VbR9LLzFugNTVcA2k3qcf76Or35gTq7hctS
	Acu6oN1hNidgCQRH5NnR+ZsasZ6SQ/bCmynaWj6og9daHbxlDIA9VdM8nUtawFgo6gnevY
	F48iFO1GpXZ0K57oA9e9lOXlImrSUMM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-449--KIx0fOVM9i_jNoN7vbOGw-1; Fri, 26 Nov 2021 02:04:17 -0500
X-MC-Unique: -KIx0fOVM9i_jNoN7vbOGw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D0483E74E;
	Fri, 26 Nov 2021 07:04:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 67F5D100164A;
	Fri, 26 Nov 2021 07:04:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 756271809C8A;
	Fri, 26 Nov 2021 07:03:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQ73Nxe016726 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 26 Nov 2021 02:03:23 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 832811121319; Fri, 26 Nov 2021 07:03:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7EF951121315
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 07:03:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 135D8803DDA
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 07:03:19 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-448-ADGrisHeOSOB6sqf12aXhQ-1; Fri, 26 Nov 2021 02:03:17 -0500
X-MC-Unique: ADGrisHeOSOB6sqf12aXhQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J0m103PzRz3x5Q
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 02:03:16 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J0m102zj2zcbc; Fri, 26 Nov 2021 02:03:16 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J0m102czqzcbW
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 02:03:16 -0500 (EST)
Date: Fri, 26 Nov 2021 02:03:16 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: More Fedora ISO weirdness
In-Reply-To: <d1fc6df3-b30e-7368-3348-78b69c7b106d@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111260159010.15748@panix1.panix.com>
References: <184f5e9b-8258-63e9-b780-f52b2eb245a3@gmail.com>
	<003cadf3-7052-ceac-77a9-e797b74b26e6@gmail.com>
	<8fb6ee03-276e-858a-4916-d86a0e337ef8@gmail.com>
	<d1fc6df3-b30e-7368-3348-78b69c7b106d@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I tried the mate rawhide edition and orca had a problem since it was
missing a file and then the whole install failed about 6% into
partitioning.  I used amd-x86_64 disk on an amd-x86_64 system which has
enough resources to allow linux to fly 14Gb of memory and a 240GB ssd.  I
reported what I could on the error after having created an account then
left it at that.


On Fri, 26 Nov 2021, Linux for blind general discussion wrote:

> Got around to giving this a go...and Fedora's fallen over because, amusingly,
> the F34 .iso doesn't have a working chroot in this downnload?
>
> All I'm getttting is no bash or bash/bin messages when following along. I can
> mount the file systems fine. I just can't chroot into it...this is with Fedora
> Workstation 34 as well, since I figured I'd give it another shot
>
> On 11/25/21 15:02, Linux for blind general discussion wrote:
> > Since you do get sound on the Fedora 34 iso, one thing you may try is using
> > the 34 iso to chroot into your installed system and installing pulseaudio
> > there. First, lsblk to find your hard disk, than do something like
> > sudo mount /dev/sdxn /mnt
> > where /dev/sdxn is the hard disk where Fedora was installed. Note that it
> > may be called /dev/vdxn if running in a virtual machine. Now you can run
> > sudo chroot /mnt
> > dnf install --allowerasing pulseaudio
> > You can press control+d here to exit out of the chroot, and then you can
> > restart the machine and boot from the hard disk. If all went well, you
> > should get sound using pulseaudio instead of pipewire and wireplumber.
> > ~Kyle
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
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

