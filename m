Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF3A49778C
	for <lists+blinux-list@lfdr.de>; Mon, 24 Jan 2022 03:54:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642992846;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QFyyh6L+0rcqKSam+oGWJM2XXwXCph3BaaUIxzVeXzw=;
	b=KGKj70rkEPSgH4R93O5yYFhvsY1H9fd3UhNMf7qOqeb1V/hzFwtB8VpNL8x38ZUbpsO207
	I0tN6528yR/8JueeUcqU6mqCytalaEWIZdMdwBuGhIqcKTf58LNzaCuBvAvuMMKJR7Nd0L
	njCT74P9jFGSGIGD7JBK+f5DJTyT16E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-262-qiF85QIXNvGZywPGKsLSWQ-1; Sun, 23 Jan 2022 21:53:57 -0500
X-MC-Unique: qiF85QIXNvGZywPGKsLSWQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B96E984BA4D;
	Mon, 24 Jan 2022 02:53:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D0E14D72E;
	Mon, 24 Jan 2022 02:53:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AE3731809CB8;
	Mon, 24 Jan 2022 02:53:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20O2rd1P023785 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 21:53:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0D4D1112132D; Mon, 24 Jan 2022 02:53:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0954F112132C
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 02:53:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2AE2F3C02180
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 02:53:36 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-503-XCr7leLKOMG5JVKYpzSrtw-1; Sun, 23 Jan 2022 21:53:34 -0500
X-MC-Unique: XCr7leLKOMG5JVKYpzSrtw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Jhvgd36Y3z3qsR
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 21:53:33 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Jhvgd2HPdzcbc; Sun, 23 Jan 2022 21:53:33 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Jhvgd1nkrzcbP
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 21:53:33 -0500 (EST)
Date: Sun, 23 Jan 2022 21:53:33 -0500
To: blinux-list@redhat.com
Subject: jenux script (untested)
Message-ID: <cc884eda-d552-87cf-5891-04070553a7f@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

#!/usr/bin/env bash
# mailto:dnl.nash@gmail.com
# url: https://nashcentral.duckdns.org/projects/
wget --spider -A 'Jenux-????.??.??-dual.iso.sha512' https://nashcentral.duckdns.org/projects/
if [ $? = 8 ]; then
    exit 1
fi
wget --quiet --recursive --no-check-certificate --no-directories -A 'Jenux-????.??.??-dual.iso.sha512' https://nashcentral.duckdns.org/projects/
sleep 2m
cfile=`ls -1 Jenux*.sha512`
wget -bc --recursive --no-check-certificate --no-directories -A 'Jenux-????.??.??-dual.iso' https://nashcentral.duckdns.org/projects/
 while [ -e wget-log ]; do
    sleep 30
    wc -l wget-log && grep -i saved wget-log && rm wget-log
 done
     sha512sum -c $cfile

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

