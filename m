Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 075D64D472C
	for <lists+blinux-list@lfdr.de>; Thu, 10 Mar 2022 13:43:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646916220;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=W95Jm/cEizogopD/jV46JdE/xvg72eYrPXlXghkEcYw=;
	b=KaZqNo5RnZzTGRka6dsbK1ol6t089YJtfAvPkdL8uzJ8AUIQOX1uUiqMr6kFmOfuMyBeq4
	a6fXe6Y0PnnZaJ15o8QD8uog+2v12g+4sPmbMID7EvR9V0dYAAzsDHp6Hxin9P35R+n8AE
	Mpa0tcj33RMDS6u9aV8EQMYY+Qmdlhw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-442-1S54sgCnOI-4keclXenBSQ-1; Thu, 10 Mar 2022 07:43:36 -0500
X-MC-Unique: 1S54sgCnOI-4keclXenBSQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 034681C06900;
	Thu, 10 Mar 2022 12:43:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B0823401E9D;
	Thu, 10 Mar 2022 12:43:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 04130195FD44;
	Thu, 10 Mar 2022 12:43:29 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 10 Mar 2022 12:43:21 +0000
To: blinux-list@redhat.com
Subject: Looking for a lightweight browser....agai
MIME-Version: 1.0
Message-ID: <mailman.1159.1646916207.111204.blinux-list@redhat.com>
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
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I know I asked this before...but I'll ask again in case things have changed

I'm looking for a browser that both works with Orca, and doesn't take up gigs of memory. looking at you, FF 98...

So what are my options asie from terminal browsers that like to fall over an put random escape and ASCII codes in my vim documents?

I've got Seamonkey and Brave on right now to test and Brave seems more of a memory hog than Seamonkey. I know. I've got 32 gigs of RAM but I still don't want a browser to eat up a few gigs of it.

So any ideas? I can't really use something like w3m or elinks sadly...mostly because it doesn't do what I need it to

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

