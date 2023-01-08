Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DF766188B
	for <lists+blinux-list@lfdr.de>; Sun,  8 Jan 2023 20:34:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1673206467;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QYx/BcCf3RVQIYuklll6xSnOciZM9+YbS2R6qqm/aDQ=;
	b=YZ9pvpn8cEpKUK9L/xFarpZtba9bOFFs/zdEBbCe0wxBHwS3+Kg+zx4CXMejToyaatJAuX
	4clzLGTlWGeVfKSCRoMCabIVc2yW3zjSe+ArWk9HswBXGO3/0MHs5LshbG22H0oIk5vJfd
	DsOiUprjf3zpAtg8yvtR84LagLStVIU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-510-rMwvLa-SOvi75LROwMtLJQ-1; Sun, 08 Jan 2023 14:34:23 -0500
X-MC-Unique: rMwvLa-SOvi75LROwMtLJQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 22D013803902;
	Sun,  8 Jan 2023 19:34:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 79B3840C2064;
	Sun,  8 Jan 2023 19:34:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1568219459C9;
	Sun,  8 Jan 2023 19:34:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 8 Jan 2023 19:34:16 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: check for existence of file
References: <mailman.3349.1673126966.2515671.blinux-list@redhat.com>
 <mailman.3474.1673161769.2515660.blinux-list@redhat.com>
 <mailman.3602.1673203492.2515669.blinux-list@redhat.com>
 <mailman.3630.1673205848.2515665.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.3630.1673205848.2515665.blinux-list@redhat.com>
Message-ID: <mailman.3581.1673206460.2515662.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> How does fossil do compared to git?

Tim here.  Regarding large objects, Fossil doesn't fare much better.
Git has some plugins such as the large-file storage option that
allows you to refer to a single external source of large binary
blobs without having to pull them all down locally, and I've not
seen any similar plugin for Fossil.  That said, I can only report
based on the experience I've heard from others.  All my git & fossil
repos are largely just text/code so they are comparatively tiny.

Outside of large files, both have similar functionality and
performance, but slightly differing philosophies.  Fossil tends to
treat history as sacred, actively making it difficult to rebase a
series of changes (you can do it by creating a new branch and then
manually cherry-picking the commits from the original dev branch)
which grates against me sometimes.  But I also love that fossil
comes with a built-in wiki & issue-tracker.

That said, there's a lot more documentation out there for git, so
it's what I tend to use by default.

-tim





_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

