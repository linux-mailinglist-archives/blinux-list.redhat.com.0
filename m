Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 32CC812DE7D
	for <lists+blinux-list@lfdr.de>; Wed,  1 Jan 2020 11:09:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1577873361;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=STq/L59pE9rmToL8bPKckQu1YkvefH6MpYKjAI5X3yk=;
	b=HGF3ahTbNbItKO+2pxtFfjYIOcVkC5O037C3OEJ3pWfMml1Z7XHo7CO2N6QriH7RExFQ/s
	+CSU8lW13tPdUKxqeu2G/5o4N8LICJJcuHUzLYuO6Q0C+OjjE/3R4SA0T2KyDp9lLHUuO/
	zTqNHJ6zXsYJutRaTIE4ww7vF4QmBTw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-161-RE3xg0CZPqeR29f0oAQvtg-1; Wed, 01 Jan 2020 05:09:19 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 68BE0800EB6;
	Wed,  1 Jan 2020 10:09:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 671A75D9E2;
	Wed,  1 Jan 2020 10:09:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2415481E09;
	Wed,  1 Jan 2020 10:09:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 001A8qiP023541 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Jan 2020 05:08:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 44AAB2166B28; Wed,  1 Jan 2020 10:08:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 40AAC2166B27
	for <blinux-list@redhat.com>; Wed,  1 Jan 2020 10:08:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10B00800FF5
	for <blinux-list@redhat.com>; Wed,  1 Jan 2020 10:08:49 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-145-cOXWIBPTNMG3Zul_TBb3dQ-1; Wed, 01 Jan 2020 05:08:40 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 47nn1h3FYlz1TNc
	for <blinux-list@redhat.com>; Wed,  1 Jan 2020 05:08:40 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 47nn1f4568zcbc; Wed,  1 Jan 2020 05:08:38 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 47nn1f3FKszcbW
	for <blinux-list@redhat.com>; Wed,  1 Jan 2020 05:08:38 -0500 (EST)
Date: Wed, 1 Jan 2020 05:08:38 -0500
To: blinux-list@redhat.com
Subject: espeak-ng packages
Message-ID: <alpine.NEB.2.21.2001010502370.24@panix1.panix.com>
MIME-Version: 1.0
X-MC-Unique: cOXWIBPTNMG3Zul_TBb3dQ-1
X-MC-Unique: RE3xg0CZPqeR29f0oAQvtg-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 001A8qiP023541
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

These work with speech-dispatcher and espeak almost works with
speech-dispatcher, when spd-conf is run spd-say does not work with espeak.
What I haven't yet figured out is which espeakup package to use with
espeak-ng.  The archwiki has no documentation for espeak-ng.
I will probably use festival with speech-dispatcher to run orca on this
system.
I rescued the arch system by replacing espeak-ng with espeak and
installing espeakup and running systemctl enable espeakup.service earlier
this morning.



--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

