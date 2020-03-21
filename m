Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [216.205.24.74])
	by mail.lfdr.de (Postfix) with ESMTP id 8359618E41E
	for <lists+blinux-list@lfdr.de>; Sat, 21 Mar 2020 21:01:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584820872;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nojuSzoS2L6vSWL8Dh0Q8qC1tCl50h1JBS1uslpnakE=;
	b=FREgNbaVCe0glNDKq2fALfoq1CFZ9D9mRAEvbOJlVF0J7hnYUOW036QV6VekXs6ZvBW8ph
	QL6LS5mSPGpu5r2VabvN7QFOl+R2UZ57QjQ8ewnopodQDKf8mqyafSuh9fg5/eEvKryCnw
	6/fo2sy5wPMq1YT4R9zDsz4WD1OuOew=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-179-F3JgMYpoNFicFcL_EAnA0w-1; Sat, 21 Mar 2020 16:01:10 -0400
X-MC-Unique: F3JgMYpoNFicFcL_EAnA0w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C92548010EA;
	Sat, 21 Mar 2020 20:01:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0D9460BF4;
	Sat, 21 Mar 2020 20:00:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0A51E18089C8;
	Sat, 21 Mar 2020 20:00:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02LK0Rql029343 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 21 Mar 2020 16:00:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BEBD5C6101; Sat, 21 Mar 2020 20:00:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BB437C610D
	for <blinux-list@redhat.com>; Sat, 21 Mar 2020 20:00:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 697B18CC922
	for <blinux-list@redhat.com>; Sat, 21 Mar 2020 20:00:25 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-25-VJJhDOVCOYGAi2XcT-3VkQ-1; Sat, 21 Mar 2020 16:00:22 -0400
X-MC-Unique: VJJhDOVCOYGAi2XcT-3VkQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48lBMV3JsZzs5r
	for <blinux-list@redhat.com>; Sat, 21 Mar 2020 16:00:22 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48lBMV1hpnzcbc; Sat, 21 Mar 2020 16:00:22 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48lBMV1CCQzcbV
	for <blinux-list@redhat.com>; Sat, 21 Mar 2020 16:00:22 -0400 (EDT)
Date: Sat, 21 Mar 2020 16:00:22 -0400
To: blinux-list@redhat.com
Subject: latest archlinux kernel upgrade
Message-ID: <alpine.NEB.2.21.2003211557350.25508@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02LK0Rql029343
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I think it's 5.59-10 and it has definitely killed espeakup.  I checked
with the disk unmounted and ran e2fsck -p and got journal clean and no
errors.
Does a way exist to clear this, or is it time to wipe the disk and replace
archlinux with debian?



--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

