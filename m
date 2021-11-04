Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B9044592E
	for <lists+blinux-list@lfdr.de>; Thu,  4 Nov 2021 19:01:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636048871;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=P60XbZ1niewtu7ZwGsmSr/GVR8V/9+V5gan8kipTmxo=;
	b=hsUkkv+Jc15MnFqzG4wq1GIY/IHuiYVmWOGcY8W9J0hk9QdGozIrw9x4QpoY/8Z7dQVU+4
	TjCpgPhG2FCEd1TniCUKM9sC1OQSe8uUPcVA7aWgE/5IAw3YAiMzo1LeqGEbKCjqbnqpLJ
	aCMyD2ZnMGfypUCYo31rSjajduB+Y/M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-585-t27TI3VtO6in5_oF5qwjDQ-1; Thu, 04 Nov 2021 14:01:03 -0400
X-MC-Unique: t27TI3VtO6in5_oF5qwjDQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9FA2718414A9;
	Thu,  4 Nov 2021 18:00:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 532B819723;
	Thu,  4 Nov 2021 18:00:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C350F1806D04;
	Thu,  4 Nov 2021 18:00:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A4I0a28009266 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 4 Nov 2021 14:00:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6D2E551E5; Thu,  4 Nov 2021 18:00:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 66F1851E4
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 18:00:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8332F18A01A9
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 18:00:33 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-561-SBo7vH5_P1WoLb4FvuohDw-1;
	Thu, 04 Nov 2021 14:00:31 -0400
X-MC-Unique: SBo7vH5_P1WoLb4FvuohDw-1
Received: from email.seznam.cz
	by email-smtpc21a.ng.seznam.cz (email-smtpc21a.ng.seznam.cz
	[10.23.18.26]) id 6553eeeb70cbbdb164b91ff7;
	Thu, 04 Nov 2021 19:00:29 +0100 (CET)
Received: from [192.168.1.174] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay13.ng.seznam.cz (Seznam SMTPD 1.3.128) with ESMTP;
	Thu, 04 Nov 2021 18:58:25 +0100 (CET)
To: blinux-list@redhat.com
Subject: Introduction
Message-ID: <b8a9cedf-8851-6d8e-59d1-9a7eb403b15e@seznam.cz>
Date: Thu, 4 Nov 2021 18:58:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-2"; Format="flowed"

Hello,

my name is Vojtech =A9miro and I am from the Czech Republic. I am primary=
=20
linux user for six years. I don't have and I don't want Windows any=20
more. Linux is my only using system. I feel safe and private on linux. I=20
am glad to be here. I like all linux distros and I am glad to test=20
various linux distros.

Take care.

Best regards

Vojta.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

