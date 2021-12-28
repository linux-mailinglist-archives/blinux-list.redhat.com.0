Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E51A480DD7
	for <lists+blinux-list@lfdr.de>; Tue, 28 Dec 2021 23:57:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640732277;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=T+IQAX6Xpw06eASDPe977ZWUPq33OxSUljtwQsUJDtA=;
	b=gjA37ecB4BhNoXiHCs5Q1dQrdoL3mHgbi2rwfE1ZUtORNVvagpisQlZprY+m4tHER072MA
	y6UbR3xfR4fxa7XOQ36eOwNRjTA1p+kT3Yc3Euny1tA6L0wujcgIVs46q/sOS6SJ98f3Tx
	soroKbg/5+N0gdF3vrZuBdlG01Gs6ng=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-356-YM6yPtsIMYytMbwPm3eFrA-1; Tue, 28 Dec 2021 17:57:54 -0500
X-MC-Unique: YM6yPtsIMYytMbwPm3eFrA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 72B071006AA5;
	Tue, 28 Dec 2021 22:57:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D48F378DD6;
	Tue, 28 Dec 2021 22:57:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BD2811809CB8;
	Tue, 28 Dec 2021 22:57:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BSMvHL9004950 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 28 Dec 2021 17:57:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 71D6E1402408; Tue, 28 Dec 2021 22:57:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6DD591402400
	for <blinux-list@redhat.com>; Tue, 28 Dec 2021 22:57:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 583428011A5
	for <blinux-list@redhat.com>; Tue, 28 Dec 2021 22:57:17 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-557-bDa4CWq_NkKWZVNnpJqv0Q-1; Tue, 28 Dec 2021 17:57:15 -0500
X-MC-Unique: bDa4CWq_NkKWZVNnpJqv0Q-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 34DAD62029D; Tue, 28 Dec 2021 22:57:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 3417E620234;
	Tue, 28 Dec 2021 17:57:14 -0500 (EST)
Date: Tue, 28 Dec 2021 17:57:14 -0500 (EST)
To: blind_linux_users <discuss@blvuug.org>
Subject: browser  Request for developers... (fwd)
Message-ID: <Pine.LNX.4.64.2112281754060.959310@server2.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-loop: blinux-list@redhat.com
Cc: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi folks,
Sharing the below project in case it interest anyone.



---------- Forwarded message ----------
Date: Tue, 28 Dec 2021 12:01:57 -0500
From: Glenn McCorkle <glennmcc@glennmcc.org>
Reply-To: LifeRaft <survpc@tmonroe.com>
To: LifeRaft <survpc@tmonroe.com>
Cc: arachne@freelists.org, internetindos@frelists.org, 
Subject: +[SurvPC] Request for developers...

To: any and all C/C++ programmers out there...

This is a request to take-up further development of DOS Arachne.

What is most needed is to compile DOS Arachne as 32bit
and to give it HTTPS capability via WATT32 & OpenSSL

The source code may be downloaded from http://glennmcc.org/

-- 
Glenn McCorkle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

