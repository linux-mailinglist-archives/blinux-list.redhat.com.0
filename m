Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C4F45786E
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 23:00:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637359239;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3B6rgMGzsvlpVNPoDvRUho5Gfp4ay/gAUFVv0wVAOBY=;
	b=Qyllc0NekoIdyI6Mr+KpkgyKkTRQU0ZlGEVfutQMEA1susEzp7iU+Zguv1H38iNh4D5Ki3
	xU63BkYXXW1UvF24ZM++FxOwX0j4QaLGODdT2EmgwJ0OzXZyGS3Xxpk8LVLVZnZWeo2C8m
	DengBqpEnQTjlpOLY2VHDz/KHwv1yT8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-264-5j9rkzsBOYGPZuoEI3Br9A-1; Fri, 19 Nov 2021 17:00:35 -0500
X-MC-Unique: 5j9rkzsBOYGPZuoEI3Br9A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E789802E62;
	Fri, 19 Nov 2021 22:00:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F76D5C1A1;
	Fri, 19 Nov 2021 22:00:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4B7771832E80;
	Fri, 19 Nov 2021 22:00:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJM0MoS022048 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 17:00:22 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7124551E2; Fri, 19 Nov 2021 22:00:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B00C51E1
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 22:00:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6AC04106655B
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 22:00:19 +0000 (UTC)
Received: from st43p00im-zteg10063401.me.com (st43p00im-zteg10063401.me.com
	[17.58.63.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-326-DGiqlH_VPr21w-jmvwDXlA-1; Fri, 19 Nov 2021 17:00:17 -0500
X-MC-Unique: DGiqlH_VPr21w-jmvwDXlA-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-zteg10063401.me.com (Postfix) with ESMTPSA id 170644A0783
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 22:00:17 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Mint Mate folder options?
Message-Id: <0B4FABFE-C65D-4207-B145-A053DB7D16AB@icloud.com>
Date: Fri, 19 Nov 2021 17:00:15 -0500
To: Blinux-list@redhat.com
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.790,
	17.0.607.475.0000000_definitions?=
	=?UTF-8?Q?=3D2021-11-19=5F14:2021-11-17=5F01, 2021-11-19=5F14,
	2020-04-07?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=764
	clxscore=1015
	malwarescore=0 bulkscore=0 mlxscore=0 phishscore=0 suspectscore=0
	spamscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=8.12.0-2009150000 definitions=main-2111190117
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AJM0MoS022048
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

Dear List,
I have searched the control center, but cant find out how to change the default folder views, or how to get a are you sure dialog when deleting files.
I had a hard time selecting the icons to show on the desktop. I had to use flat review to select my options.
But as I said, I cant find anything about folder options.

Thanks,
Rob


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

