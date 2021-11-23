Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A10BF459970
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 01:54:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637628896;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hw4xY2OdbRZ82F6+i1yr25h7CwhIiRXpaOUA+vZsYMI=;
	b=g8E2hzldsPmNJRRo0s+aOOS6xlweaTsOaaGZg+HIbJIQJRbrmDgXSPK9duzxv6AsBaleNc
	J5TyLTpjdLga0eJdpH+Z3gbUppAr+rOhzKY/FYWseveogG+ul/8imqpCFgjLzYzqy4h7vc
	bPFTL0P2N2vV5RSK7NFBOz2SIM9T92Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-588--JsmSa8xPv6e4K9dURlxkQ-1; Mon, 22 Nov 2021 19:54:53 -0500
X-MC-Unique: -JsmSa8xPv6e4K9dURlxkQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8E22787950C;
	Tue, 23 Nov 2021 00:54:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 87F771007625;
	Tue, 23 Nov 2021 00:54:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9C82A4A702;
	Tue, 23 Nov 2021 00:54:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AN0sVWJ000526 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Nov 2021 19:54:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B7EB540CFD15; Tue, 23 Nov 2021 00:54:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD50540CFD0B
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 00:54:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 62716811E78
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 00:54:31 +0000 (UTC)
Received: from st43p00im-ztbu10073701.me.com (st43p00im-ztbu10073701.me.com
	[17.58.63.183]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-534-M5sA8RS5OASBK94v9yX98A-1; Mon, 22 Nov 2021 19:54:29 -0500
X-MC-Unique: M5sA8RS5OASBK94v9yX98A-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztbu10073701.me.com (Postfix) with ESMTPSA id 31A7C4C044E
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 00:54:28 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Computer specs?
Message-Id: <F1239B5F-EEB0-4FEC-9883-1285D8050056@icloud.com>
Date: Mon, 22 Nov 2021 19:54:27 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
	definitions=2021-11-22_08:2021-11-22,
	2021-11-22 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
	mlxlogscore=821 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-2009150000 definitions=main-2111230001
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,
I am using a old desktop.
It is slow. Especially reading web pages.
A lot of the time speech cuts out.
My question is do you think its worth adding more ram and a SSD to better run Linux?
here are the specs:
Acer Aspire X1430G
            Enclosure Type: Desktop
            Processor a Main Circuit Board b
            1.65 gigahertz AMD E-450 APU with Radeon HD Graphics
            No memory cache
            64-bit ready
            Multi-core (2 total)
            Not hyper-threaded Board: Acer Aspire X1430G 
            Bus Clock: 100 megahertz
            BIOS: AMI P01-B4 09/02/2011
            WDC WD10EADX-22TDHB0 [Hard drive] (1000.20 GB) -- drive 0, s/n 
            WD-WCAV5V812493, rev 77.04D77, SMART Status: Healthy 3580 Megabytes 
            Usable Installed Memory
Thanks,
Rob

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

