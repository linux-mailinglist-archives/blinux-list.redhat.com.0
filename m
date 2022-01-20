Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D204494D5F
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 12:49:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642679373;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lDGmHFaV3maKTbuxzO2K01Zmt6YCROSHwCTRWrSL9zA=;
	b=ILGgw+YmHVTMdF6/euacGVuHjuPbOcBfPTK/cWzEqfpEquE4vE6cFJg+0oZztDzzlgMoT3
	hkHKkM3KLHuSXysjl2g0Rth/2b53ACvTzBtm6zxzLPjkhNlFMBTlVZ52QasEv1A/yswx+5
	/JB8WmlKv/8pMK1Va1hrSjfLvDSgaX8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-638-dKug8-PwPo-cDNa7dkhb5g-1; Thu, 20 Jan 2022 06:49:29 -0500
X-MC-Unique: dKug8-PwPo-cDNa7dkhb5g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1946B344B0;
	Thu, 20 Jan 2022 11:49:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 59ABF108BEF4;
	Thu, 20 Jan 2022 11:49:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7B9B64A7CA;
	Thu, 20 Jan 2022 11:49:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20KBn61H030863 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Jan 2022 06:49:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F1460404728D; Thu, 20 Jan 2022 11:49:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ED4624047286
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 11:49:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D35FD85A5AA
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 11:49:05 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
	[50.116.61.232]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-61-Yt_1dEjFOeWC-R5GPrE4EQ-1; Thu, 20 Jan 2022 06:49:03 -0500
X-MC-Unique: Yt_1dEjFOeWC-R5GPrE4EQ-1
Received: from [192.168.116.128] (unknown [176.230.59.220])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 4B6CD37F13DA
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 11:49:02 +0000 (UTC)
Date: Thu, 20 Jan 2022 13:48:58 +0200 (IST)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running a Linux VM on Windows and making it talk?
In-Reply-To: <CABKqQvErSiA=YnCNo6MjtANW8LyqW+sQi=o_wPNPc0gTAZE5Pg@mail.gmail.com>
Message-ID: <alpine.DEB.2.11.2201201340550.1250@debian.work>
References: <CABKqQvErSiA=YnCNo6MjtANW8LyqW+sQi=o_wPNPc0gTAZE5Pg@mail.gmail.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On Wed, 19 Jan 2022, Linux for blind general discussion wrote:

> In my operating systems course, we are supposed to run a Linux machine
> inside Virtualbox. How is this done on a Windows machine? Can I start Orca
> in the virtual machine somehow?

For work, I have a Linux VM running under Windows.  I use the command line 
environment to do tech stuff that I find easier than trying to do it in 
Windows.

I initially triede setting up a VM under Virtualbox, but I had issues with 
the UI and managed to disconnect the virtual hard disk from the machine 
before I'd even booted it for the first time.   So I got work to cough up 
for VMWare Player.

VMWare Player is free for personal use, not sure if this covers a study 
course (it probably doesn't).  But it's not very expensive and you 
totally do not need Player Pro.

I just set it up on my home Windows laptop with no hassles at all.

Once you have it running, you can use control-g to switch the keyboard to 
the VM, and control-alt to switch the keyboard back to Windows.

Oh and do not install the enhanced keyboard driver that VMWare offers, 
apparently it causes big problems with Windows screen readers.

I've not tried running a GUI under VMWare, but I don't expect any issues.

I hope that the Virtualbox UI is better now than it was 6 years ago.

HTH,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

