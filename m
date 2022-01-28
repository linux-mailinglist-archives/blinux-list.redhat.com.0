Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDE749F1B4
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 04:15:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643339740;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7JNAGCOb/9fn5/2MXTT+FaUt+ZsoxMf/6JwCCEIdGNI=;
	b=Q7+Z4N3vs7ksfIlOZ3zG4YukeGjuqvCyg0ZKj2ShTxDzHWdhsOuvG//YSu3j4TUYikPZul
	QwHU+2Q9nqfXnxLXmyKtPoiD83Q9YUe3igDCn0xQ2Xj/UmMKkcrROnZWf1mtlnEZwEeNOh
	r6czZNqHoiVyg4tXKNRxtr9bSGUnfag=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-368-3Q2R63EoMd-Tj58f_ZrjHw-1; Thu, 27 Jan 2022 22:15:37 -0500
X-MC-Unique: 3Q2R63EoMd-Tj58f_ZrjHw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9806880A1A7;
	Fri, 28 Jan 2022 03:15:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8239FE2C8;
	Fri, 28 Jan 2022 03:15:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E67181809CB8;
	Fri, 28 Jan 2022 03:15:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20S3FE7N005289 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 22:15:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CDCC740885B2; Fri, 28 Jan 2022 03:15:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C9DF140885C1
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 03:15:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2C1DB811E76
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 03:15:14 +0000 (UTC)
Received: from st43p00im-ztfb10073301.me.com (st43p00im-ztfb10073301.me.com
	[17.58.63.186]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-612-gtUrH_yHP6WttAlg8jlUOA-1; Thu, 27 Jan 2022 22:15:12 -0500
X-MC-Unique: gtUrH_yHP6WttAlg8jlUOA-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztfb10073301.me.com (Postfix) with ESMTPS id 91F258004D1
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 03:15:11 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Slint install problem
Message-Id: <295A066D-05BF-4695-972E-E91261CDBFAB@icloud.com>
Date: Thu, 27 Jan 2022 22:15:10 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.572,
	17.11.62.513.0000000_definitions?=
	=?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01, 2020-02-14=5F11,
	2021-12-02?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	malwarescore=0
	adultscore=0 clxscore=1015 spamscore=0 mlxlogscore=667 phishscore=0
	mlxscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-2009150000 definitions=main-2201280016
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20S3FE7N005289
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Trying to install Slint on a VM.
I get speech up until I choose auto setup.
As I type the word auto, the letter A is echoed, but the u t o and the enter key is not. There is no more speech after that.
Thanks,
Rob


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

