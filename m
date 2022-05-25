Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 237EB53465F
	for <lists+blinux-list@lfdr.de>; Thu, 26 May 2022 00:22:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653517345;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nSqtb8t1PPcbW02G6v/XYUTiqXe6sD8fenj3bSPFSGM=;
	b=IvR8U7mMKvE0BlqgIPArQQ3iNUUf1PbSCZmWeTlpvDTgM8QYzH2K9U3DV9zwIt3DOmUTwR
	2n6GCv2u+RQpGxb+eJeANwxOfuDNrpQLMQ0k8/vazCAarPdv7zVYJfQQQkhzrxDD85NyiK
	pHBAgq0zvnXFn13JCwDHN+lxv6VRHEk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-650-jgccK7RlPlOittX_WEL25A-1; Wed, 25 May 2022 18:22:23 -0400
X-MC-Unique: jgccK7RlPlOittX_WEL25A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 51F3638349B2;
	Wed, 25 May 2022 22:22:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C3A06112131E;
	Wed, 25 May 2022 22:22:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3E211193212C;
	Wed, 25 May 2022 22:22:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
to: blinux-list@redhat.com
Subject: Google gmail cutting off alpine
Date: Wed, 25 May 2022 23:22:15 +0100
Message-ID: <mailman.18712.1653517340.111206.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
MIME-Version: 1.0
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

hi
yes google are removing all  user/password authenticaion apps.
that  wil include mutt fetchmail et al.

they ar egoing oauth only.
i seem to recollect that at the moment there are app passwords still allowed after may 30th.

so if u use 2fa u can get an app password foe mutt fetchmail and so on.
there isa branch of fetchmail that wil do the oath thing, dunno about mutt.

unsure if thunderbird can do it via oauth also.
 
in short anyting that goes via username/password to access smtp for outgoing mail or imap /pop for incomming mail wont be allowed.

what u can do for incomming mail only is doa pop3 forward to a mail provider that does allow username/password, and access that via mutt.
other than that u got to figure out a way to do it via oauth.

yes its pita but google are google!

ta
neil foster


>
>
>Has	 there been any notification for mutt users also; that at the end of may it too can not access gmail accounts?
>
>_______________________________________________
>Blinux-list mailing list
>Blinux-list@redhat.com
>https://listman.redhat.com/mailman/listinfo/blinux-list
>
>.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

