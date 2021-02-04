Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3C1B430F28E
	for <lists+blinux-list@lfdr.de>; Thu,  4 Feb 2021 12:40:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612438809;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6abRFUw2a2pA7bV3c47KidJs9ChJQl0ztq9fdnU8Axg=;
	b=WE7UMzajLW/8M00BRwzOCTqbPBiBQSdIB2YTD4gWDCx5RKA0juTS+YUMCZ6uYx6eWq+lVR
	x777u1t3KP0Ab6sosT+tjz49Lhlg/41d80/xRdEfabXlMbKLnLz0/cCopET5i+ZNstd/bW
	M8ZhfC9PjKlIJN5k5nWd27W1Rr/43PY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-342-1damA2uzOtG5R-pIgA57hQ-1; Thu, 04 Feb 2021 06:40:07 -0500
X-MC-Unique: 1damA2uzOtG5R-pIgA57hQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA68D107ACC7;
	Thu,  4 Feb 2021 11:40:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D4AD60D08;
	Thu,  4 Feb 2021 11:40:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BCCFD57DF9;
	Thu,  4 Feb 2021 11:39:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 114Bdjhw008984 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 4 Feb 2021 06:39:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5CD2A200A39A; Thu,  4 Feb 2021 11:39:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 56FC22026D13
	for <blinux-list@redhat.com>; Thu,  4 Feb 2021 11:39:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B4B8F101A54E
	for <blinux-list@redhat.com>; Thu,  4 Feb 2021 11:39:42 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-595-_USKOrX9P_W5wL5R4ed2rg-1; Thu, 04 Feb 2021 06:39:40 -0500
X-MC-Unique: _USKOrX9P_W5wL5R4ed2rg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DWc640DlPz1Dxt
	for <blinux-list@redhat.com>; Thu,  4 Feb 2021 06:39:40 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DWc636w44zcbc; Thu,  4 Feb 2021 06:39:39 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DWc636YCjzcbW
	for <blinux-list@redhat.com>; Thu,  4 Feb 2021 06:39:39 -0500 (EST)
Date: Thu, 4 Feb 2021 06:39:39 -0500
To: blinux-list@redhat.com
Subject: chk-jenux script
Message-ID: <alpine.NEB.2.23.451.2102040638200.25633@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I use this to find what to download for Jenux.
cut here.
#!/usr/bin/env bash
# file: chk-jenux.sh - chk-jenux check jenux website for proper lines for iso and integrity check files
file0='https://nashcentral.duckdns.org/projects/'
file1=`lynx -dump -nonumbers $file0 | grep -in jenux|head -7| tail -1`
echo "file1 has value: "
echo -n $file1
file2=`basename $file1`
echo "file2 has value: "
echo $file2
file3=`lynx -dump -nonumbers $file0 | grep -i Jenux|head -6|tail -1`
echo "file3 has value: "
echo $file3

cut here.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

