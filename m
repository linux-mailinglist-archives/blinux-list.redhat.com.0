Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A64F767606
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jul 2023 21:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1690571188;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bhbT5dqzLkNcf3ebQiS/BrQUUdj+4AhCbaWzGPK31Y4=;
	b=foF5E5cbDX0FvHmMTwOdKEl6NRPcOP/f5OROcWgeTbK2QyVqK4yCCAViP6QQOKiV9pUlvk
	EY6HzpuqWeWfInAWxBu/ZBxBq8iNLp7w4Hnu3oTjXNJQ4CIZ2eFosQo/pd5kudrZL4sPjs
	fnfCgjCp9CwNBmkrBYXpYOSp4w59M/Y=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-662-Py3ZNnZrOjavV0ZxKVS44w-1; Fri, 28 Jul 2023 15:06:23 -0400
X-MC-Unique: Py3ZNnZrOjavV0ZxKVS44w-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B670038009F3;
	Fri, 28 Jul 2023 19:06:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DFE52492CA6;
	Fri, 28 Jul 2023 19:06:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6453D19451CD;
	Fri, 28 Jul 2023 19:06:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: <blinux-list@redhat.com>
Subject: Blend os, Anyone tried it?
Date: Fri, 28 Jul 2023 15:05:59 -0400
MIME-Version: 1.0
Thread-Index: AdnBhWg2ww3e6pnDTy2hztdhU3wjhA==
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.1899.1690571166.3172875.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

 

I am just wondering if anyone has ever tried blend os.  I discovered it on
distro watch.  It is based on arch Linux.  It uses something called jaid
installer.  I am wondering if anyone else has tested this installer.  My
breaf testing wit seems to be that the langwage and time zones selections
are search buttons which if activated, will let you search for your
selections.  I have not been able to use flat review with orca to explore
the screen.  If anyone has figured this out, How did you navigate the
installer?  They have a discord server which I am on, but was curius again
if anyone has had a chance to play with this.

 

Matthew

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

