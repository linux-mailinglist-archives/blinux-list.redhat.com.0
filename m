Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0A7481F66
	for <lists+blinux-list@lfdr.de>; Thu, 30 Dec 2021 20:10:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640891399;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hs7aHEkuhngri111cAB+lFY5AYlsmytNqFmX64bA/t8=;
	b=P/TICm7hrc/wJzFB0Ful7D+qmriX+RD1v7Iq9O0n6yf6esr6UuH9ydyOpsNhv02UEiEXFv
	zNDafu2ncganJyw9lBY6XjX3tGkUmxfHp7RYFUeX3VErnoTELl6HIYEFuCP/BWgSfHxdm2
	1z7IhKKFCjCNkKoYgt43Kc8zoH4orDo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-215-04sIwToHO_y-WOCC0DzwBw-1; Thu, 30 Dec 2021 14:09:55 -0500
X-MC-Unique: 04sIwToHO_y-WOCC0DzwBw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EAB021030BD0;
	Thu, 30 Dec 2021 19:09:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1BC7010013D0;
	Thu, 30 Dec 2021 19:09:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DB2E74BB7C;
	Thu, 30 Dec 2021 19:09:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BUJ9HR2005030 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 30 Dec 2021 14:09:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1FCA7401E53; Thu, 30 Dec 2021 19:09:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1BFBE515999
	for <blinux-list@redhat.com>; Thu, 30 Dec 2021 19:09:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CEB6E101A52D
	for <blinux-list@redhat.com>; Thu, 30 Dec 2021 19:09:16 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-5-1Mvb6u1TNjiHv7F6vBBAnw-1; Thu, 30 Dec 2021 14:09:14 -0500
X-MC-Unique: 1Mvb6u1TNjiHv7F6vBBAnw-1
Received: from email.seznam.cz
	by email-smtpc14a.ng.seznam.cz (email-smtpc14a.ng.seznam.cz
	[10.23.11.165]) id 3669760723f1255d3783871b;
	Thu, 30 Dec 2021 20:09:13 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay12.ng.seznam.cz (Seznam SMTPD 1.3.134) with ESMTP;
	Thu, 30 Dec 2021 20:09:08 +0100 (CET)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Some Espeak variants crash
Message-ID: <dab728ae-51e1-47e8-0225-8ca7466fc493@seznam.cz>
Date: Thu, 30 Dec 2021 20:09:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
X-szn-frgn: <true>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Good Evening,

some Espeak variants crash with Orca. Is some way to repair it? I would 
like to use Espeak CS+F2, variant Female 2, but it crashes with Orca and 
I have to repair it with braille display. Please, is some way to repair 
it? Yes, I know, there's a way to install Voxin and if Espeak crashes, 
Voxin will speak, OK, but I would like to use that espeak variant, 
because I am comfortable with that in my phone.

Thanks a lot.

Best regards

Vojta.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

