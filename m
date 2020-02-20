Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 27CEB165868
	for <lists+blinux-list@lfdr.de>; Thu, 20 Feb 2020 08:32:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582183931;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xE24S7z3r+XU10tYWhmBK1DyTijafpfkQoa411fJsRw=;
	b=bkJVq/Ro3Zlaq65PWSXDY4Q/YOGd4dpwUfjtzTFLv9V0ia4GYBzzONVYewhYARLWb2/fDj
	WYAxEBsUxgKqRzWsLHUFGMdgA+4IR9G2xfw5M9JKn4hg/29sDdq6WlD20GEqP9w2dsLsvj
	7MqNnogv9rZGqhYYu/G5npmH3TrGrvM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-86-o7DsFWprNxipPSOZLZz5ZQ-1; Thu, 20 Feb 2020 02:32:07 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B716D18B5FA0;
	Thu, 20 Feb 2020 07:32:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3926F101D4B6;
	Thu, 20 Feb 2020 07:31:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7F92681751;
	Thu, 20 Feb 2020 07:31:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01K7VbBK029373 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Feb 2020 02:31:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D72082166B2C; Thu, 20 Feb 2020 07:31:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D2FEE2166B2B
	for <blinux-list@redhat.com>; Thu, 20 Feb 2020 07:31:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7DAEE800FF2
	for <blinux-list@redhat.com>; Thu, 20 Feb 2020 07:31:35 +0000 (UTC)
Received: from gmmr1.centrum.cz (gmmr1.centrum.cz [46.255.225.252]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-8-Agijtjj7P1m5D4u1zTEPhg-1; Thu, 20 Feb 2020 02:31:33 -0500
X-MC-Unique: Agijtjj7P1m5D4u1zTEPhg-1
X-MC-Unique: o7DsFWprNxipPSOZLZz5ZQ-1
Received: from gmmr-2.centrum.cz (unknown [10.255.254.24])
	by gmmr1.centrum.cz (Postfix) with ESMTP id 56BCF80018AE
	for <blinux-list@redhat.com>; Thu, 20 Feb 2020 08:31:31 +0100 (CET)
Received: from out2.virusfree.cz (out2.virusfree.cz [79.133.37.42])
	by gmmr-2.centrum.cz (Postfix) with QMQP id 4FBEE1B7D
	for <blinux-list@redhat.com>; Thu, 20 Feb 2020 08:31:31 +0100 (CET)
Received: from out2.virusfree.cz by out2.virusfree.cz
	(VF-Scanner: Clear:RC:0(46.255.225.205):SC:0(-1.8/5.0):CC:0:;
	processed in 0.2 s); 20 Feb 2020 07:31:31 +0000
X-VF-Scanner-ID: 20200220073131.051682.17957.out2.virusfree.cz.0
X-Spam-Status: No, hits=-1.8, required=5.0
Received: from gmmr-3.centrum.cz (46.255.225.205)
	by out2.virusfree.cz with ESMTPS (TLSv1.3, TLS_AES_256_GCM_SHA384);
	20 Feb 2020 08:31:31 +0100
Received: from gm-smtp5.centrum.cz (unknown [10.255.254.38])
	by gmmr-3.centrum.cz (Postfix) with ESMTP id B1E4520056005
	for <blinux-list@redhat.com>; Thu, 20 Feb 2020 08:31:30 +0100 (CET)
Received: from DESKTOPN6LG1HQ (unknown [85.70.144.247])
	by gm-smtp5.centrum.cz (Postfix) with ESMTPA id 9EE3384000C8
	for <blinux-list@redhat.com>; Thu, 20 Feb 2020 08:31:30 +0100 (CET)
To: <blinux-list@redhat.com>
References: <B99ECC0C5B4C4DA9A0EBA3735E38BF98@DESKTOPN6LG1HQ>
	<20200219225325.lavd3verxwi476az@sprite>
In-Reply-To: <20200219225325.lavd3verxwi476az@sprite>
Subject: RE: Dbus issues when running Fedora 31 for ARM64 Bit platform
Date: Thu, 20 Feb 2020 08:31:31 +0100
Message-ID: <8E6DE5B4A8C24EED8FED85A82932E9A4@DESKTOPN6LG1HQ>
MIME-Version: 1.0
Thread-Index: AdXnd8dpUJU2KOvBSk6asxUrBzganAAR+w5w
X-MimeOLE: Produced By Microsoft MimeOLE
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01K7VbBK029373
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thank you very much for yours professional answer.
I will try to debate with Dbus developers how to create machine id file. 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

