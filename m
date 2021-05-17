Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5CFE6383C7C
	for <lists+blinux-list@lfdr.de>; Mon, 17 May 2021 20:37:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621276659;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PJkckwIHb8bNE6oRu8feR8SS7xxRcdvSDmA0ysEU6hM=;
	b=NxGiB3SL7dW1lgmJNi/mC8lwhJxHelFgKIniZ/p/mFvWS/htaIA4rkB6qVllDjqaSI8BKM
	BRP0znJBpsbfiIgPhcNikFG3hffAD3kYcenm7FVp0Vcj/gTHyO4JyScVLnjfdZWocUSbqX
	6XP77JYioR6V981T2osgYuLvJiiTIuc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-431-el2VzfJzN8SpT5BwWMKxuA-1; Mon, 17 May 2021 14:37:37 -0400
X-MC-Unique: el2VzfJzN8SpT5BwWMKxuA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F2913801107;
	Mon, 17 May 2021 18:37:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 08E2860C04;
	Mon, 17 May 2021 18:37:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9214F1800BB0;
	Mon, 17 May 2021 18:37:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14HIbKOj016882 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 17 May 2021 14:37:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8BE7F111287B; Mon, 17 May 2021 18:37:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8726B111287A
	for <blinux-list@redhat.com>; Mon, 17 May 2021 18:37:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1C0AA833959
	for <blinux-list@redhat.com>; Mon, 17 May 2021 18:37:18 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-498-HZXw-lM8OciWEgVp17Bg1g-1; Mon, 17 May 2021 14:37:14 -0400
X-MC-Unique: HZXw-lM8OciWEgVp17Bg1g-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 80BB0621C43; Mon, 17 May 2021 18:37:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 7C67662022B
	for <blinux-list@redhat.com>; Mon, 17 May 2021 14:37:13 -0400 (EDT)
Date: Mon, 17 May 2021 14:37:13 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: there is a petition of possible interest.
In-Reply-To: <Pine.LNX.4.64.2105171426350.3167233@server2.shellworld.net>
Message-ID: <Pine.LNX.4.64.2105171432300.3167450@server2.shellworld.net>
References: <Pine.LNX.4.64.2105171426350.3167233@server2.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"




  Wanted to share the details before posting any links.
  The goal is to ask for  eloquence to be  made an open source tts engine. 
Given how popular the voice is for many, this would perhaps allow Linux to
   address  some aspects of the speech quality problem some find with  some
  distributions.
  One can search for the petition, its at change.org, or I can provide a link,
  which does not really work in strict  low graphics.
  Best,
  Karen

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

