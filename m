Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 253E63D220C
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 12:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626949529;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FPKY8Kypvg1kTIHbW5VDg1ItFJii96bqpdW5CaDABcg=;
	b=cegwHzTxnPNRdoi+bfSIzIbYBW1Ye2YtuJ5ygB+W9nxFl3Yezof3QG98lzCqXQjcsS9NcC
	HU0zZ6UHZuXvVDku+Bz/eajy8enK+NsmAT2tA0FQBkv36ywzjJ/92CA5s4FeddYvZ+0Re9
	BNjaU82TB9PoYUJQ6dgVCRdSBgSuMR4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-406-ayyZ71MAN_-m8NoF_lv5eg-1; Thu, 22 Jul 2021 06:25:27 -0400
X-MC-Unique: ayyZ71MAN_-m8NoF_lv5eg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DB381105146E;
	Thu, 22 Jul 2021 10:25:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AB49A669F2;
	Thu, 22 Jul 2021 10:25:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 74DB54BB7C;
	Thu, 22 Jul 2021 10:25:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MAPF9O024190 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 06:25:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 89F2A208BDF8; Thu, 22 Jul 2021 10:25:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 85720208BDC4
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 10:25:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BD9CE185A7A4
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 10:25:12 +0000 (UTC)
Received: from mail.carmickle.com (mail.carmickle.com [69.164.218.211])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-104-_eSHVtQdNdaycde9rcg54Q-1; Thu, 22 Jul 2021 06:25:10 -0400
X-MC-Unique: _eSHVtQdNdaycde9rcg54Q-1
Received: from [192.168.116.128] (unknown [176.230.59.241])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.carmickle.com (Postfix) with ESMTPSA id 679E180B8B39
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 10:25:09 +0000 (UTC)
Date: Thu, 22 Jul 2021 13:25:04 +0300 (IDT)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question on speakup
In-Reply-To: <ac70ffcc-fbf1-626e-9348-559c650efce7@gmail.com>
Message-ID: <alpine.DEB.2.11.2107221322200.1870@debian.work>
References: <ac70ffcc-fbf1-626e-9348-559c650efce7@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On Thu, 22 Jul 2021, Linux for blind general discussion wrote:

> I use to know how to store and then restore my speakup settings, however, to 
> my utter shame, I forgot how to do this.

YOu can either manage the meta-files in /sys/accessibility/speakup 
yourself or use speakupconf.  In Debian at least, this is in the 
speakup-tools package.

HTH,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

