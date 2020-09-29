Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E3FD927BEBA
	for <lists+blinux-list@lfdr.de>; Tue, 29 Sep 2020 10:03:36 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601366616;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sHgYUC4JYxLAgG9E0M3O69lcFkArAdNDpLddXnfdEfs=;
	b=RwCRB2py+NDUWRN14nOMAHFJvLBBj6LKMSiYMtjaMhxjMeiLHSyvmRinzeX1hcIISgOcNj
	yoEQlcK3EwFrcp0WFZWYafuLBc/Bg/7g2/g3ym+WszFD0UVjdNWfZpdhoV1VBkcD4nQMJc
	j++BqVFBIfTzqb70e+pvGLVxZz06vdg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-97-LXlsdkEvNKOK_D6lg4W-FA-1; Tue, 29 Sep 2020 04:03:33 -0400
X-MC-Unique: LXlsdkEvNKOK_D6lg4W-FA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 82BF5188C120;
	Tue, 29 Sep 2020 08:03:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FB1355763;
	Tue, 29 Sep 2020 08:03:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3A18944A56;
	Tue, 29 Sep 2020 08:03:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08T83C4k000518 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 29 Sep 2020 04:03:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2EB4B2EF9C; Tue, 29 Sep 2020 08:03:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 29D86A9FDF
	for <blinux-list@redhat.com>; Tue, 29 Sep 2020 08:03:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 19CDA811E7A
	for <blinux-list@redhat.com>; Tue, 29 Sep 2020 08:03:10 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-293-8yglRnqfPdSrQjoleukeRg-1; Tue, 29 Sep 2020 04:03:07 -0400
X-MC-Unique: 8yglRnqfPdSrQjoleukeRg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C0sMH0gYFz1m8X
	for <blinux-list@redhat.com>; Tue, 29 Sep 2020 04:03:07 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C0sMG6sndzcbc; Tue, 29 Sep 2020 04:03:06 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C0sMG6GYBzcbW
	for <blinux-list@redhat.com>; Tue, 29 Sep 2020 04:03:06 -0400 (EDT)
Date: Tue, 29 Sep 2020 04:03:06 -0400
To: blinux-list@redhat.com
Subject: gentoo!
Message-ID: <alpine.NEB.2.23.451.2009290401260.12395@panix1.panix.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It could be I downloaded some incorrect file.  My guess is the snapshot
file was wrong for the gentoo-minimal and gentoo-stage3 files already
downloaded.



--

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

