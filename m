Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5CBD433958D
	for <lists+blinux-list@lfdr.de>; Fri, 12 Mar 2021 18:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615571546;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fksYAyoUZMPjzzYiF0J2E8GV/eWCjbj3JZOzo84nZ3A=;
	b=KYwLdrAXUqKg9w2wjSURdSPSJ5dSgAEZ0QPkCsN17kooQSHjwZvlU7/9wdOeOagDm0HDlh
	yAm2F5LCaOVZbKgNz+8sRIwSxp9hSMP573VG8YyfKPu+0bNNavkySbWwunizCKwDn/UORk
	1EuabYYCnU6yDiB8bL5KRco6YDOQKZI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-Nf81Dm-PMHiTETKHkQvZWg-1; Fri, 12 Mar 2021 12:52:23 -0500
X-MC-Unique: Nf81Dm-PMHiTETKHkQvZWg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 927EE1B2C9B2;
	Fri, 12 Mar 2021 17:52:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6ECA72B451;
	Fri, 12 Mar 2021 17:51:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6BB311800232;
	Fri, 12 Mar 2021 17:51:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12CHpc5Q001816 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 12 Mar 2021 12:51:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 02A742166BB1; Fri, 12 Mar 2021 17:51:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EFE172166BA4
	for <blinux-list@redhat.com>; Fri, 12 Mar 2021 17:51:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C9260811E7A
	for <blinux-list@redhat.com>; Fri, 12 Mar 2021 17:51:35 +0000 (UTC)
Received: from gateway36.websitewelcome.com (gateway36.websitewelcome.com
	[192.185.193.119]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-171-71rK30YlNruOH6GUNfEy7A-1; Fri, 12 Mar 2021 12:51:32 -0500
X-MC-Unique: 71rK30YlNruOH6GUNfEy7A-1
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
	by gateway36.websitewelcome.com (Postfix) with ESMTP id 7F551400C7828
	for <blinux-list@redhat.com>; Fri, 12 Mar 2021 11:03:49 -0600 (CST)
Received: from box2167.bluehost.com ([50.87.253.68]) by cmsmtp with SMTP
	id KlCWltFE7A1KVKlCXlBj44; Fri, 12 Mar 2021 11:03:49 -0600
X-Authority-Reason: nr=8
Received: from [104.60.194.40] (port=62554 helo=BREWCREW)
	by box2167.bluehost.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <kelly@kellford.com>) id 1lKlCW-001JYb-Ez
	for blinux-list@redhat.com; Fri, 12 Mar 2021 10:03:48 -0700
To: <blinux-list@redhat.com>
Subject: ORCA and Claws Mail
Date: Fri, 12 Mar 2021 11:03:47 -0600
Message-ID: <018401d71761$ab738460$025a8d20$@kellford.com>
MIME-Version: 1.0
Thread-Index: AdcXYQ/9hjzZwuQHSPquVQaewB/5rw==
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2167.bluehost.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kellford.com
X-BWhitelist: no
X-Source-IP: 104.60.194.40
X-Source-L: No
X-Exim-ID: 1lKlCW-001JYb-Ez
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (BREWCREW) [104.60.194.40]:62554
X-Source-Auth: kelly@kellford.com
X-Email-Count: 1
X-Source-Cap: a2VsbHlmb3I7a2VsbHlmb3I7Ym94MjE2Ny5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

The default mail client on a Raspberry Pi is a program called Claws Mail.
The menus all seems to read well with ORCA on the device but not the message
lists or content so far for me.  Does anyone know the story with that
program and ORCA?

 

Claws Mail - The user-friendly, lightweight, and fast e-mail client
(claws-mail.org) <https://www.claws-mail.org/> 

 

I know about other mail programs but was just curious about this one.

 

Thank you,

 

Kelly

 

 

 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

