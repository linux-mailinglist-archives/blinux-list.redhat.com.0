Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC0548FA58
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 03:22:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642299758;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AtYCwZh14cdfrUP4Txd++aBuG79e5YQOX/bKnuWkXFc=;
	b=JHTeszvGIXx9z8FRuvF7Uib7LfJGtQFt5HIlbeBYlPH4lskBkrv4Sgq0WFdNjzQtBvHffT
	OmdFiD1nci8XhrS+Axq6Lu+NPUBN89iP1M4GnU5SL2qKmPU0e7T+g4N4OEVN8v2yh0uOcp
	GSbZ0tSszYPLEDH+rxoykbEz1cKqa68=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-558-Tl0pUTQhMvK_bkDff90PXQ-1; Sat, 15 Jan 2022 21:22:34 -0500
X-MC-Unique: Tl0pUTQhMvK_bkDff90PXQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3C6171006AA7;
	Sun, 16 Jan 2022 02:22:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A50F45D9C;
	Sun, 16 Jan 2022 02:22:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 258AC4BB7C;
	Sun, 16 Jan 2022 02:22:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20G2JUNw009463 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 Jan 2022 21:19:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 28BD9C15E71; Sun, 16 Jan 2022 02:19:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 238C5C159B3
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 02:19:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0555E1C0F385
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 02:19:30 +0000 (UTC)
Received: from st43p00im-ztbu10063601.me.com (st43p00im-ztbu10063601.me.com
	[17.58.63.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-333-QHJV5JeCOTuCXybH3FEm5A-1; Sat, 15 Jan 2022 21:19:28 -0500
X-MC-Unique: QHJV5JeCOTuCXybH3FEm5A-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztbu10063601.me.com (Postfix) with ESMTPS id 3E80C8C04E4
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 02:19:27 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: No Orca in Fedora
Message-Id: <E0D83498-771B-46C6-A46E-F3FC7ED1E64E@icloud.com>
Date: Sat, 15 Jan 2022 21:19:26 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.816,
	17.11.62.513.0000000_definitions?=
	=?UTF-8?Q?=3D2022-01-16=5F01:2022-01-14=5F01, 2022-01-16=5F01,
	2021-12-02?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
	spamscore=0 mlxscore=0
	adultscore=0 mlxlogscore=704 suspectscore=0 malwarescore=0 phishscore=0
	clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-2009150000 definitions=main-2201160016
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20G2JUNw009463
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
I downloaded Fedora-Cinnamon-Live-x86_64-35-1.2
Super+Alt+S did not start Orca, so I pressed alt+F2 and typed orca and hit enter, but got nothing.
So I then pressed alt+ctrl+T and typed orca in the terminal. I used my phone to read the screen to get orca command not found.
Whats going on?
Thanks,
Rob


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

