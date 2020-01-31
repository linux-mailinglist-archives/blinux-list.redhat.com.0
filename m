Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id D6E7114E8AB
	for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2020 07:14:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580451260;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zUu8p3+PhUxiM0SPCdpLZbi9HmRdWGbCMoxLk4qS108=;
	b=YQzicAMrw5nvHw34M9+AxCfttVz1WOEmpvTQiEBMU9nod2MdvW4RL1L0eU+4kx+/aBSZA1
	RgC/7TlQxMzCPeAIJtJ34vSSP4AUOQHB2jKVBp0p2fx5Ey4EX15Fd9VGPMSk9gKH1efG23
	p6VNshjdfpRqWjgtpKj2d5JlHrLSWlc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-333-wjrPBGOQM1aPPJYQEPFdWQ-1; Fri, 31 Jan 2020 01:14:18 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8E4BD1137840;
	Fri, 31 Jan 2020 06:14:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD25A100194E;
	Fri, 31 Jan 2020 06:14:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8869718095FF;
	Fri, 31 Jan 2020 06:14:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 00V6DoGR030002 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 31 Jan 2020 01:13:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E687A2033955; Fri, 31 Jan 2020 06:13:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E24032093CCD
	for <blinux-list@redhat.com>; Fri, 31 Jan 2020 06:13:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 011B1803AFE
	for <blinux-list@redhat.com>; Fri, 31 Jan 2020 06:13:47 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-36-ULlt3ZTgMhOdXloAomRkeQ-1; Fri, 31 Jan 2020 01:13:41 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4886Nh5tZ2z1SR9
	for <blinux-list@redhat.com>; Fri, 31 Jan 2020 01:13:40 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4886Nh3vQfzcbc; Fri, 31 Jan 2020 01:13:40 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4886Nh3QJvzcbW
	for <blinux-list@redhat.com>; Fri, 31 Jan 2020 01:13:40 -0500 (EST)
Date: Fri, 31 Jan 2020 01:13:40 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A Live Boot Image for the Mac that Talks
In-Reply-To: <E1ixMhY-0001xB-U2@wb5agz>
Message-ID: <alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
References: <E1ixMhY-0001xB-U2@wb5agz>
MIME-Version: 1.0
X-MC-Unique: ULlt3ZTgMhOdXloAomRkeQ-1
X-MC-Unique: wjrPBGOQM1aPPJYQEPFdWQ-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 00V6DoGR030002
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If your speakers the mac uses to talk are internal to the mac, Jenux
would probably work for you.  If you attach speakers by means of usb
ports Jenux cannot install with usb speakers and talk.

https://nashcentral.duckdns.org/projects/Jenux-2020.01.15-x86_64.iso
https://nashcentral.duckdns.org/projects/Jenux-2020.01.15-x86_64.iso.sha512
On Thu, 30 Jan 2020,
Linux for blind general discussion wrote:

> Date: Thu, 30 Jan 2020 22:10:36
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: A Live Boot Image for the Mac that Talks
>
> I'm going round and round with my Mac right this moment
> and one thing that could fix it nicely would be a Linux live boot
> image that I could run on the mac and mount the main drive which,
> thank every deity that exist, is not encrypted.  I was smart
> enough not to fall in to that trap.
>
> 	Apple has locked down their latest update to osx and the
> normal method for running it in single-user mode appears to no
> longer work.
>
> 	If I could mount the system drive, I can bypass all this
> securinoia and fix the problem.
>
> Thanks for any and all constructive suggestions.
>
> Martin McCormick
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

