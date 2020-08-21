Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7A3B724E270
	for <lists+blinux-list@lfdr.de>; Fri, 21 Aug 2020 23:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598044253;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WQIVydnfUMehp6yhPtqJN7LGRaGoZ7k3hhg6DUzUJMU=;
	b=E7s+LbCpn3vGf0PEvTu659U3v5GiJcbBz9h5PnQhRSQmjRP9dhRFn99pMapeVWqy1eHVHJ
	A5Mcb+xpUNNP8Swk/OW/Eanoe87QoKhSwMgvrw7TttFi0WFpbIUmzLNcvNmqvykFKWzmUU
	mzSMvkOXHtfcPOtFz2XmCh1tmqkKtpM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-306-H3tU5A5dM8uh5kUofEf6YA-1; Fri, 21 Aug 2020 17:10:50 -0400
X-MC-Unique: H3tU5A5dM8uh5kUofEf6YA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74DFB81F02D;
	Fri, 21 Aug 2020 21:10:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 480B660BF1;
	Fri, 21 Aug 2020 21:10:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 92445662D1;
	Fri, 21 Aug 2020 21:10:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07LLAV3X024022 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 Aug 2020 17:10:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A13CF2166BA4; Fri, 21 Aug 2020 21:10:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9CEC82166BA3
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 21:10:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8E0BF857CF8
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 21:10:29 +0000 (UTC)
Received: from mail.carmickle.com (mail.carmickle.com [69.164.218.211])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-91-nqXjj5GtNs2iA_qWZbpN4Q-1; Fri, 21 Aug 2020 17:10:27 -0400
X-MC-Unique: nqXjj5GtNs2iA_qWZbpN4Q-1
Received: from [192.168.116.128] (unknown [176.230.58.250])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.carmickle.com (Postfix) with ESMTPSA id 5DA1A6BBC812
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 21:10:26 +0000 (UTC)
Date: Sat, 22 Aug 2020 00:10:21 +0300 (IDT)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Distros for a beginner?
In-Reply-To: <alpine.NEB.2.23.451.2008211141270.8148@panix1.panix.com>
Message-ID: <alpine.DEB.2.11.2008212337110.12135@debian.work>
References: <MFBaDor--3-2@tutanota.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
	<e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
	<alpine.DEB.2.23.453.2008201440380.1109151@chime>
	<03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
	<e73a7097-f12d-a4cd-21ef-101f35439a2d@slint.fr>
	<CAO2sX33Q8kPKn6qAaQtF+Z9jYGdxiEUJXQFnc3bKQDfDnrWYOw@mail.gmail.com>
	<99a3d6ab-1abf-cf35-42ab-84b9fba7f4c2@gmail.com>
	<alpine.NEB.2.23.451.2008210753520.27701@panix1.panix.com>
	<4F89BBB0-1421-4170-8530-C321A454A097@schoeppi.net>
	<20200821.140441.108.39@[192.168.1.130]>
	<alpine.NEB.2.23.451.2008211141270.8148@panix1.panix.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

On Fri, 21 Aug 2020, Linux for blind general discussion wrote:

> Being way behind in lots of packages means security exposures galore.
> Exim was hacked by the Russians already and ssh servers world-wide have
> malware attacking them now too.

This is why you subscribe to Debian security updates, which should be 
configured by default.

>From their security page:

    Debian takes security very seriously. We handle all security problems 
brought to our
    attention and ensure that they are corrected within a reasonable 
timeframe. Many advisories
    are coordinated with other free software vendors and are published the 
same day a
    vulnerability is made public and we also have a Security Audit team 
that reviews the
    archive looking for new or unfixed security bugs.

Security fixes are provided for a year after the next stable version of 
Debian is released.  In practice, this tends to mean that a Debian 
release will get regular security fixes for three years.

Following this, LTS security updates for certain architectures will be 
provided for an additional two years or so.

You can get Debian security notices via email if you wish.

For more information, see https://security.debian.org and 
https://wiki.debian.org/LTS

Both Exim and SSh have had several security fixes applied since Debian 
Buster was released.

If you are concerned about a specific vulnerability, you can use its CVE 
number and the resources at security.debian.org to see if these have been 
fixed in Debian.

For Debian installations, you can also see which security updates have 
been applied by reading /usr/share/doc/<packagename>/changelog.debian.gz

HTH,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

