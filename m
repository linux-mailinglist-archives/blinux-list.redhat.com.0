Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id F3224393560
	for <lists+blinux-list@lfdr.de>; Thu, 27 May 2021 20:21:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622139669;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iLLfmQR53dslQDZ6JwUlyUDzFdkNlEJzjXfgYcCbZkg=;
	b=TIuYcigIwUtkmFLVI6tQfaq/wuCekYGUXT0TF1/X4kHopCYpLeCu3o/UsOUKTu4gIcQobM
	9aL6lcKTT+ov3zhW7EytwOUV5N0BOFiw92G5v42sNSaFh4tQEw2LJBTOPPrNKDsOR5pRha
	hN8NfAIld3gW//fm613DAHKo/z62Uc0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-573-kv35XNHoMoCmjXPNXYmSXQ-1; Thu, 27 May 2021 14:21:06 -0400
X-MC-Unique: kv35XNHoMoCmjXPNXYmSXQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 57E9FFC97;
	Thu, 27 May 2021 18:21:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D928D5C3E9;
	Thu, 27 May 2021 18:20:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 059441800BB4;
	Thu, 27 May 2021 18:20:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14RIKYge015702 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 May 2021 14:20:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4178D20BB912; Thu, 27 May 2021 18:20:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3DA9C20BB90E
	for <blinux-list@redhat.com>; Thu, 27 May 2021 18:20:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BDF0918392A7
	for <blinux-list@redhat.com>; Thu, 27 May 2021 18:20:30 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-499-MmB2NT4cN8mR8ALibmpjEA-1; Thu, 27 May 2021 14:20:28 -0400
X-MC-Unique: MmB2NT4cN8mR8ALibmpjEA-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4Frbhp3pD8z8trD
	for <blinux-list@redhat.com>; Thu, 27 May 2021 18:20:26 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id 1oiU5extmSMX for <blinux-list@redhat.com>;
	Thu, 27 May 2021 18:20:25 +0000 (UTC)
Received: from [192.168.1.100] (184-169-119-73-dynamic.midco.net
	[184.169.119.73])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4Frbhn46Wcz8tNF
	for <blinux-list@redhat.com>; Thu, 27 May 2021 18:20:25 +0000 (UTC)
Message-ID: <20210527.182025.331.1@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: delay local file system mounting
Date: Thu, 27 May 2021 13:20:25 -0500
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 14RIKYge015702
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

I have a raid array that I use for storage, and it takes a while for it to be mounted. This causes a delay, sometimes quite significant, before the login prompt appears.
Is there a way to cause a 
/etc/fstab
entry to be delayed? I know I could always mount the array manually after login, but I'd rather not if I can avoid it.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

