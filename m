Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D7448C220
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jan 2022 11:18:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641982696;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qUoqaBGE2OcKafLnNuKuHJU3I0sX3/VrRSKk0+FwlLg=;
	b=Cf//9Wd/ig5A3y+dU5dHL6eT/SADJshj1WvrQJ56kUpeZDykVWuOIyLjVnpT9x22L1HH9V
	KGUUdkFO0fZ9AZJ4EOa0pzIE8eRSgtn3JJke2BbXoKWER4OhQX+7St7DhSWpA763A4b15Q
	aUvqazW/dtcGgRJ1VsXUH+9BPp8vVfM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-549-dAN9yLo9OvaXQ3HrOgwTmQ-1; Wed, 12 Jan 2022 05:18:13 -0500
X-MC-Unique: dAN9yLo9OvaXQ3HrOgwTmQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A676680BCAE;
	Wed, 12 Jan 2022 10:18:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A68070D4D;
	Wed, 12 Jan 2022 10:18:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 70F224BB7C;
	Wed, 12 Jan 2022 10:17:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20CAHbEl023342 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 Jan 2022 05:17:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 039431410DD6; Wed, 12 Jan 2022 10:17:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F39EE140EBFD
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 10:17:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DDA3D800141
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 10:17:36 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-361-gtBfsUOdOKSS7n52S-I00w-1; Wed, 12 Jan 2022 05:17:35 -0500
X-MC-Unique: gtBfsUOdOKSS7n52S-I00w-1
Received: from email.seznam.cz
	by email-smtpc16a.ng.seznam.cz (email-smtpc16a.ng.seznam.cz
	[10.23.18.16]) id 26e151a3337902f9270ba0bf;
	Wed, 12 Jan 2022 11:17:33 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay22.ng.seznam.cz (Seznam SMTPD 1.3.136) with ESMTP;
	Wed, 12 Jan 2022 11:17:29 +0100 (CET)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: MPV problem
Message-ID: <4f8b44c7-7955-ceb2-491f-b3a6de4cdda8@seznam.cz>
Date: Wed, 12 Jan 2022 11:17:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
X-szn-frgn: <1e66d5e5-946c-4304-bbe5-19dffb3f3d82>
X-szn-frgc: <0>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

When I play something in MPV and listen and save by shift Q, after some 
time, it's saved, but not playing. I have to close it by Alt F4, launch 
it again and press arrows to go to the last listened place.

Is some way to repair it? Ubuntu Mate 20.04, Raspberry Pi 4B 4 GB.

Thanks a lot.

Best regards

Vojta.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

