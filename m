Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 50E5B323171
	for <lists+blinux-list@lfdr.de>; Tue, 23 Feb 2021 20:31:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614108687;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=O6afUS2iSIzoKN4APoE4B0EZ8zxfA7sE+uOKy1/CYlI=;
	b=T8yRSRKVLL489jA4qISTTsrT+VlzsG+o4DvLzruqi9zmaCCQOBaLZJSJPFRMsMnPloxAuH
	XxvGGISmwbCc/biCMYsA/5GjjBiK3kpbNifqVtQbKlIR66S+HrVR9tISlkJ21PMtztrjeF
	kkhCnAHrqB5hn8K0hJpNOeM+drcCLi4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-163-eecJJCC_NWaYZFeWDxT0HA-1; Tue, 23 Feb 2021 14:31:24 -0500
X-MC-Unique: eecJJCC_NWaYZFeWDxT0HA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 581288030B7;
	Tue, 23 Feb 2021 19:31:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DBA7157;
	Tue, 23 Feb 2021 19:31:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BCA1E18095CA;
	Tue, 23 Feb 2021 19:31:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11NJV5Cc022870 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Feb 2021 14:31:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E780F202E941; Tue, 23 Feb 2021 19:31:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E17E2202E940
	for <blinux-list@redhat.com>; Tue, 23 Feb 2021 19:31:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 71871858F0E
	for <blinux-list@redhat.com>; Tue, 23 Feb 2021 19:31:02 +0000 (UTC)
Received: from gateway9.unifiedlayer.com (gateway9.unifiedlayer.com
	[67.222.53.145]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-423-U1pkcVqjMTKJUi825ELK_g-1; Tue, 23 Feb 2021 14:30:19 -0500
X-MC-Unique: U1pkcVqjMTKJUi825ELK_g-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway9.unifiedlayer.com (Postfix) with ESMTP id 7B17520084C99
	for <blinux-list@redhat.com>; Tue, 23 Feb 2021 13:08:31 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id Ed2tl0vaTaJ23Ed2tlxFfq; Tue, 23 Feb 2021 13:08:31 -0600
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:65409 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1lEd2t-001vcG-6t
	for blinux-list@redhat.com; Tue, 23 Feb 2021 13:08:31 -0600
Date: Tue, 23 Feb 2021 13:08:29 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Recently mentioned cheap Braille display?
Message-ID: <20210223130829.6fec2676@bigbox.attlocal.net>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1lEd2t-001vcG-6t
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:65409
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I was pretty certain that someone on this list had recently mentioned
a notably cheaper Braille display that had recently come on the
market.  Does this sound familiar to anybody here?  However, I can't
find any such message in my folder of Blinux mailing-list messages.
One of the OpenBSD developers was asking about picking up a cheap
Braille display for testing accessibility but didn't have a lot of
cash to drop on it.  So I wanted to share that info with them.

Thanks!

-Tim


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

