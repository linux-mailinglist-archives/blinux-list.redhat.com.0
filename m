Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 687BA34CBE9
	for <lists+blinux-list@lfdr.de>; Mon, 29 Mar 2021 11:00:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1617008435;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=f0keHLaqirWuadiGDMX5rky/Zg5G+TLaHnYXr+kIcpo=;
	b=jUWo5jpLmS1ScsN26il1GVp3CUyV2Key1YDRQEGCcSuhKjiuB4MYE3z2yPzd5V02rHViYB
	2iQKco/UyO4ya4ZjfXydkSW/wDbzlp0R2IkIb1pgKQX8vVEl5kISF+nr33xhSZtczANqOh
	7tSrmRyRJ21WV0gdhGA4Gt5o8TGS5Vo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-509-akThP_ZVNWWO-BvahWLTRQ-1; Mon, 29 Mar 2021 05:00:33 -0400
X-MC-Unique: akThP_ZVNWWO-BvahWLTRQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 573068018AD;
	Mon, 29 Mar 2021 09:00:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 770CD909F1;
	Mon, 29 Mar 2021 09:00:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0DD084BB7C;
	Mon, 29 Mar 2021 09:00:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12T8xrg2010393 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Mar 2021 04:59:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2C11E2026987; Mon, 29 Mar 2021 08:59:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 261642026D7F
	for <blinux-list@redhat.com>; Mon, 29 Mar 2021 08:59:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C6FAD802816
	for <blinux-list@redhat.com>; Mon, 29 Mar 2021 08:59:50 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-345-2Jr_O83QM6mf0LjAiKoHkQ-1; Mon, 29 Mar 2021 04:59:48 -0400
X-MC-Unique: 2Jr_O83QM6mf0LjAiKoHkQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4F86380BQMz1wmv
	for <blinux-list@redhat.com>; Mon, 29 Mar 2021 04:59:48 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4F86376W0qzcbc; Mon, 29 Mar 2021 04:59:47 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4F863769qXzcbW
	for <blinux-list@redhat.com>; Mon, 29 Mar 2021 04:59:47 -0400 (EDT)
Date: Mon, 29 Mar 2021 04:59:47 -0400
To: blinux-list@redhat.com
Subject: dosemu status
Message-ID: <alpine.NEB.2.23.451.2103290457340.795@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Once configured correctly it can get a talking dos prompt on a computer 
with espeakup and probably other console screen readers.
If anyone else wants to do this, send me email and ask for the 
dosemujd.zip file.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

