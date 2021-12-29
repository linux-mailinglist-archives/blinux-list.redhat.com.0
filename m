Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B6C48164C
	for <lists+blinux-list@lfdr.de>; Wed, 29 Dec 2021 20:31:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640806287;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cotITk/KM4+Y2EyFjooFHIyE5s10HIoJPl5APHJ4AXs=;
	b=XBzBEny4HuZlJPHebsGE/g2Vc/7yUPeKF4kY3SNoHoLHYWZCpqUQN62yUVGx1p6cdG6E7s
	NbjO44hCxtZej0lqu43Q9/e+BdNjEyPz8xr2Lls/KJV1O6o1ii+QigziepEOhDDkf4fG4n
	PYRXuJnQKokAtRbsrC8gTJ3CLiBt+i0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-328-zdcP6HcQMsOfr9R2HZREGw-1; Wed, 29 Dec 2021 14:31:23 -0500
X-MC-Unique: zdcP6HcQMsOfr9R2HZREGw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AD62A102CB73;
	Wed, 29 Dec 2021 19:31:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2AEE3196E5;
	Wed, 29 Dec 2021 19:31:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EA5BB1809CB8;
	Wed, 29 Dec 2021 19:31:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BTJUxIX017933 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 29 Dec 2021 14:31:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C2192140240B; Wed, 29 Dec 2021 19:30:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BD23F1402400
	for <blinux-list@redhat.com>; Wed, 29 Dec 2021 19:30:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 725AA38035B2
	for <blinux-list@redhat.com>; Wed, 29 Dec 2021 19:30:59 +0000 (UTC)
Received: from mxd1.seznam.cz (mxd1.seznam.cz [77.75.78.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-633-jswcLjDkMRKjTV8tyT2Ivw-1; Wed, 29 Dec 2021 14:30:57 -0500
X-MC-Unique: jswcLjDkMRKjTV8tyT2Ivw-1
Received: from email.seznam.cz
	by email-smtpc2b.ko.seznam.cz (email-smtpc2b.ko.seznam.cz
	[10.53.13.45]) id 23943110360c624a227ec00c;
	Wed, 29 Dec 2021 20:30:55 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay27.ko.seznam.cz (Seznam SMTPD 1.3.134) with ESMTP;
	Wed, 29 Dec 2021 20:30:52 +0100 (CET)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Infected Chromium
Message-ID: <e1a19af4-7fae-373d-6281-953dd4b03790@seznam.cz>
Date: Wed, 29 Dec 2021 20:30:50 +0100
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

what does text your browser is infected means? My friend had this in his 
Chromium on Ubuntu Mate 20.04 on Raspberry Pi. What my friend may do? 
Where can he find where is virus or infection?

He had these addons in Chrome:
Acapela TTS,
Friendlyvox,
and Chromevox.

Thanks for your help.

Best regards

Vojta.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

