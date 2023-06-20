Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 51338736FA5
	for <lists+blinux-list@lfdr.de>; Tue, 20 Jun 2023 17:01:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687273292;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WYGIYGMexVOUQ/wQgn82TZ+ghqy03DlEqVZ50EVtjkU=;
	b=evlNUznDuP5yl3MRED9kYF/g7jEGwcXd3YhHrNg5gN3w3PPr3Dv2yAwR5mxiYcAv/OMCQw
	2KaedXwaTTdZG+Ntvx8kvdzx4qG0bcdk/WRa9U9qXNhEu6WnLPrkD5/jNOAURxHP+OtVDi
	B38C+tUakGreSaC17OBVkxpaqTpeMJ0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-500-rl1OVnuHMh2vc3ffvL2QaQ-1; Tue, 20 Jun 2023 11:00:21 -0400
X-MC-Unique: rl1OVnuHMh2vc3ffvL2QaQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C8FFE8925F7;
	Tue, 20 Jun 2023 14:57:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BBFD8200C0DA;
	Tue, 20 Jun 2023 14:57:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1F488194658F;
	Tue, 20 Jun 2023 14:57:31 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Tue, 20 Jun 2023 07:45:47 -0700 (PDT)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: New Version, Confusing Choices?
MIME-Version: 1.0
Message-ID: <mailman.373.1687273050.653863.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi All: I guess in the last year or so Debian changed the dialogue of when a 
maintainer ships a new config. They were letter choices. Now, they are numbers 
in a completely lop sided order, but even worse, typing one of these numbers 
doesn't seem to work here in Debian 12 SId. Here is what it said during an apt 
full-upgrade
Configuring openssh-server
--------------------------

A new version (/tmp/tmp.UbLHTXnWVK) of configuration file /etc/ssh/sshd_config 
is available, but the version installed currently has been locally modified.

   1. install the package maintainer's version    3. show the differences 
between the versions            5. show a 3-way difference between available 
versions  7. start a new shell to examine the situation
   2. keep the local version currently installed  4. show a side-by-side 
difference between the versions  6. do a 3-way merge between available versions
Back again live, in most cases I would want to keep a modified config, but with 
this new confusing menu, its anybody's guess? Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

