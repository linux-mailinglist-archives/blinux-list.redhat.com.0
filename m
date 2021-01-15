Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id DC9E92F8205
	for <lists+blinux-list@lfdr.de>; Fri, 15 Jan 2021 18:20:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610731214;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pVMdv1sLgBFUH5V4biXah47PvHm/IMyo7KsTb8n6K1s=;
	b=aBK6eMmJknPObxfMSRauSxHmzuiZlkz7ekPXsA8cL7jAMevm233Is0g6fmsbMek7D4mGg7
	GAhsSYBNDeNZC3FSpMNoQUs+gTwdjihMSIZdRZC/y7LrGv0htQsO/H5tLX8erupfbpZQhu
	Ad/ybdGVbkZQoVhkmDQhd/6QI+44jtc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-162-ARfBMnuDPn-nCX_XTb3KAQ-1; Fri, 15 Jan 2021 12:20:11 -0500
X-MC-Unique: ARfBMnuDPn-nCX_XTb3KAQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7CD07EC1A7;
	Fri, 15 Jan 2021 17:20:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E638E6F922;
	Fri, 15 Jan 2021 17:20:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 769F918095C9;
	Fri, 15 Jan 2021 17:19:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10FHJkJq010322 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 15 Jan 2021 12:19:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D2FCF202660A; Fri, 15 Jan 2021 17:19:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE6D72027047
	for <blinux-list@redhat.com>; Fri, 15 Jan 2021 17:19:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CBD3782DFE0
	for <blinux-list@redhat.com>; Fri, 15 Jan 2021 17:19:42 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-272-NxHhxyovM2SUXQEwG5J-MQ-1; Fri, 15 Jan 2021 12:19:40 -0500
X-MC-Unique: NxHhxyovM2SUXQEwG5J-MQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DHSbc1gFrz1QsR
	for <blinux-list@redhat.com>; Fri, 15 Jan 2021 12:19:40 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DHSbc0yP9zcbc; Fri, 15 Jan 2021 12:19:40 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DHSbc0hcczcbV
	for <blinux-list@redhat.com>; Fri, 15 Jan 2021 12:19:40 -0500 (EST)
Date: Fri, 15 Jan 2021 12:19:40 -0500
To: blinux-list@redhat.com
Subject: fcc resource
Message-ID: <alpine.NEB.2.23.451.2101151211410.14525@panix1.panix.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

For those living in the United States and territories if you are having 
accessibility problems with satellite; fiber, cable, set top boxes, or any 
devices that play videos like roku and would like to file a complaint. 
Contact dro@fcc.gov and you'll get Will Shell who specializes in these 
areas of law and knows the FCC rules and can help you file a complaint and 
get it to the right people for resolution.
My reason for using this resource is verizon fios cable service with text 
to speech turned on is not good.  Verizon has a huge opaque website and 
requires use of javascript to get many things done but dro@fcc.gov was on 
the fcc web page so I could use the email program that works best for me. 
Please pass this information along to anyone else with these problems 
since that's the only way failures get fixed these days.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

