Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E504CE010
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 23:09:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646431747;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=w8AbXBORSLBsGQ+zSeGOuVXhZKTIBFy5Fk0g7IjTLhE=;
	b=J11odbZeavbsOUl3SCz0iPn3Rk9relZ7m3Ymhcm+13Gdi+HreGEsIsUPNIPbUHdR1TktC1
	4xoOLnrq6QPJ2UAZ0+gR7x3sPCgQ+RnjhT5ykCF2XH7Y5jlf472hJBHEXlv4ghEtWzAUZg
	l3Xh3xnMWc/JHKqkY0mTrlnxC5UdWVM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-508-JbLFwDfxMrCTSqrKIUXnjw-1; Fri, 04 Mar 2022 17:09:04 -0500
X-MC-Unique: JbLFwDfxMrCTSqrKIUXnjw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D433A8070F0;
	Fri,  4 Mar 2022 22:08:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AE5FF4530A;
	Fri,  4 Mar 2022 22:08:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 850D91809CB3;
	Fri,  4 Mar 2022 22:08:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224M8qhV014600 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 17:08:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7E70A400E86C; Fri,  4 Mar 2022 22:08:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 79CD840CFD1B
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 22:08:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 614CA101AA47
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 22:08:52 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-212-vfOrvrC6OrGkIY4L0srrkw-1; Fri, 04 Mar 2022 17:08:50 -0500
X-MC-Unique: vfOrvrC6OrGkIY4L0srrkw-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id 0B6541BBE00
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 22:08:49 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id LAD6QeF2f2pa for <blinux-list@redhat.com>;
	Fri,  4 Mar 2022 22:08:48 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:8616:d376:ace:323b]
	(2603-6080-6302-e002-8616-d376-0ace-323b.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:8616:d376:ace:323b])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id 889B21BB099
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 22:08:48 +0000 (UTC)
Message-ID: <37d011eb-16c0-f52d-1e12-f6e422ca4c5c@free2.ml>
Date: Fri, 4 Mar 2022 17:08:45 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Snap, Flatpak and/or AppImages?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <8111ae82-7282-633d-6d59-b0a76b3a4460@gmail.com>
	<01a237c2-5a31-5b77-9212-e0b7d618fe45@free2.ml>
	<81891cf3-8c55-9710-fb4f-0b172f69fa95@free2.ml>
	<f6f1709d-1e1f-6979-8036-a1a261f6f330@protonmail.com>
In-Reply-To: <f6f1709d-1e1f-6979-8036-a1a261f6f330@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So it does seem then like appImages are the way to go. It sounds like we 
get the absolute best of every possible scenario in this seemingly 
antiquated but actually highly innovative portable app technology. Why 
oh why do we have people saying that flatpak is the future, or worse, 
snapd is the future, when we have appImages that are highly portable, 
and can even be sandboxed in much the same way, but are much more 
versatile owing to the portability? It's really nice to be able to put 
all the appImages I need on a USB drive and just use them on any Linux 
computer. I guess the one drawback I can see is the update problem, 
where most don't update themselves, but having repositories and appImage 
managers available would seem to resolve that issue, also in a highly 
portable way.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

