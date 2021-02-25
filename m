Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 19C693248F7
	for <lists+blinux-list@lfdr.de>; Thu, 25 Feb 2021 03:47:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614221227;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IeeIIy68uDEehUrqPk2Qj0Kayo0qTm0x2J7DA9tK1s8=;
	b=i7Y01xw1G7d74utidv4g6DboH3XfZiBTvC7QNJFjg75NPuU4Ud3Sy1RwvTCuxs49jPIl2S
	dtwpEhIjTG4vgLvALhZJ8cWtfMDDBMMQwqZsf5nZpEs8orc+270uM9Najpu3JTh5tiVOc1
	UKqrEhwarW2rIAR+F2yyvpKC7Gzw0iA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-1-L-hjBWgHOeySgo0G17lRXw-1; Wed, 24 Feb 2021 21:47:05 -0500
X-MC-Unique: L-hjBWgHOeySgo0G17lRXw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A910F803F49;
	Thu, 25 Feb 2021 02:47:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36EA350DD2;
	Thu, 25 Feb 2021 02:46:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9958418095C9;
	Thu, 25 Feb 2021 02:46:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11P2kavG002034 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Feb 2021 21:46:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 76FC210729E; Thu, 25 Feb 2021 02:46:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71BE3107661
	for <blinux-list@redhat.com>; Thu, 25 Feb 2021 02:46:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 46DA5800140
	for <blinux-list@redhat.com>; Thu, 25 Feb 2021 02:46:33 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-469-HBlVVnDZPearYCf0g7H_iA-1; Wed, 24 Feb 2021 21:46:30 -0500
X-MC-Unique: HBlVVnDZPearYCf0g7H_iA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DmHHB3cZ7z1Z51
	for <blinux-list@redhat.com>; Wed, 24 Feb 2021 21:46:30 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DmHHB2y8xzcbc; Wed, 24 Feb 2021 21:46:30 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DmHHB2Y7yzcbW
	for <blinux-list@redhat.com>; Wed, 24 Feb 2021 21:46:30 -0500 (EST)
Date: Wed, 24 Feb 2021 21:46:30 -0500
To: blinux-list@redhat.com
Subject: cut or similar utility
Message-ID: <alpine.NEB.2.23.451.2102242144590.1365@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

is cut or a similar utility once passed a file able to analyze the file 
and return the number of fields in that file it could find?


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

