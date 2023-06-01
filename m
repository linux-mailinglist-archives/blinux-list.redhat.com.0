Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5914E71A2BE
	for <lists+blinux-list@lfdr.de>; Thu,  1 Jun 2023 17:30:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685633445;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xNrz9raj3hHV1X5Hu16XAdZ1XaE9CWAfhOUdhSYspRM=;
	b=XQw1S1SSZK93kBJa9ZMFQ13dsIw5JR3DYogC1j9YWuLvJW5zG0w7vJdrt3fGM44cg2WLMI
	u5Is8+iqphH2kh+4ndyQyMHgnLNrpNbuSHLlaeqZTvZtSU7LoAvA7va/2OlC5gMdLXgRQD
	dJFKC8jI42EmGFWD6TlRKDrot+ou5wM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-86-goVISDh4N1-LO2zy-wr-qg-1; Thu, 01 Jun 2023 11:30:42 -0400
X-MC-Unique: goVISDh4N1-LO2zy-wr-qg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4D3AC1022F10;
	Thu,  1 Jun 2023 15:30:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5980AC154D9;
	Thu,  1 Jun 2023 15:30:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A991D19465A4;
	Thu,  1 Jun 2023 15:30:30 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 1 Jun 2023 12:19:05 -0300
MIME-Version: 1.0
To: blinux-list@redhat.com
Subject: Good minimal distro today?
Message-ID: <mailman.1535.1685633430.2653573.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: pt-BR
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all, I want a distro which is relatively stable, but not hard to keep 
some components up to date, especially accessibility components like 
Orca, as well as Firefox. In principle, I don't want a full desktop 
environment, just enough to run Firefox plus Orca, and possibly other 
desktop apps later. I have successfully set up ratpoison a few years ago 
with the help of the Strychnine script developed by Storm, so maybe the 
easiest path is to get it again.

I'd like opinions on the distro to use. ArchLinux has the advantage of 
requiring few disk space and always having the latest software, but I've 
tried it some years ago, and it appears too prone to break things, 
especially the audio stuff due to constant upgrading. Is it still true 
today? Another option is Debian unstable, which I've never tried. Does 
it use to break too? I've also read about VoidLinux. Has anyone tried it 
yet? I know about Slint as well, but the manual states that it requires 
50 gb disk space at least, and I'm currently out of disk space, around 
15 gb at most.

Thanks for comments,
Cleverson

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

