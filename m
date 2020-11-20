Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9D2F52BA4AF
	for <lists+blinux-list@lfdr.de>; Fri, 20 Nov 2020 09:32:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605861166;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=miYjvnlnbyKwGpCzW3qC2HnZC59FVRiJmXjGdIpDfXk=;
	b=eECIaJ0A3B9Kr9+RXxWhHuofT3G1N2x9NxkJkET88WoJKZ4HvF0NcEIXJfQsGP0n25yPPZ
	dKIZV19xOc3V2+KeGZ2kvIsakRG280JcG9I85YHX6L+GWwhtdsrxIixwVpXYsy3hruUcFn
	hkoe2gfXtmLawtLAJTbxOAKuWroJVhc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-444-NBAwOu_UOhSIXKuFlk6wOQ-1; Fri, 20 Nov 2020 03:32:44 -0500
X-MC-Unique: NBAwOu_UOhSIXKuFlk6wOQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4E36E1DDE1;
	Fri, 20 Nov 2020 08:32:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0955A60636;
	Fri, 20 Nov 2020 08:32:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 85F19180954D;
	Fri, 20 Nov 2020 08:32:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AK8WLFW014706 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 20 Nov 2020 03:32:21 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 007772026D48; Fri, 20 Nov 2020 08:32:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F04322026D47
	for <blinux-list@redhat.com>; Fri, 20 Nov 2020 08:32:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CF129803CE8
	for <blinux-list@redhat.com>; Fri, 20 Nov 2020 08:32:18 +0000 (UTC)
Received: from rednote.net (opera.rednote.net [66.228.34.147]) (Using TLS)
	by relay.mimecast.com with ESMTP id us-mta-524-IrN7K2q6PBehxaTPsrXMOg-1;
	Fri, 20 Nov 2020 03:32:16 -0500
X-MC-Unique: IrN7K2q6PBehxaTPsrXMOg-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by rednote.net (8.16.1/8.16.1) with ESMTP id 0AK8WCIA658207
	for <blinux-list@redhat.com>; Fri, 20 Nov 2020 03:32:15 -0500
Received: (from janina@localhost)
	by rednote.net (8.16.1/8.16.1/Submit) id 0AK8WCUA658206
	for blinux-list@redhat.com; Fri, 20 Nov 2020 03:32:12 -0500
Date: Fri, 20 Nov 2020 03:32:12 -0500
To: blinux-list@redhat.com
Subject: Re: Producing Braille files on ZLinux
Message-ID: <20201120083212.GA2527@rednote.net>
References: <87wnyhf7zo.fsf.ref@yahoo.com>
 <87wnyhf7zo.fsf@yahoo.com>
MIME-Version: 1.0
In-Reply-To: <87wnyhf7zo.fsf@yahoo.com>
X-Operating-System: Linux opera.rednote.net 5.8.18-300.fc33.x86_64
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You need liblouis installed, and it probably already is as a dependency.
Then a command like:

lou_translate en-us-g2.ctb  [source] >output.file

Linux for blind general discussion writes:
> Hi,
> 
> How do we produce braille files on Linux? Is there any software for
> transcription which works like Duxbury or Send to Braille? I just want
> to convert my ebooks into Braille for reading on a notetaker or for
> embossing.
> 
> Thanks for your help,
> 
> -- 
> Jay
> 
> 
> 
> Pure mathematics is, in its way, the poetry of logical ideas. :
>    Albert Einstein
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

