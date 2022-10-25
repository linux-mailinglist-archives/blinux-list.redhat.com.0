Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA2A60CBE8
	for <lists+blinux-list@lfdr.de>; Tue, 25 Oct 2022 14:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666701250;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=noIBybJDtBpNtLb87N9qwcsdDV1XJD8p7Jp+4cPt6ZQ=;
	b=FW++NLdw4F7bSbTzEZNTOb4+IdfTXwTev3vkqHwLdi4C3Bx7sKidGq+ZLYvLLTEQntI0QG
	PFU6txbHgMrhji2EphkZiDLEzns2YVDP6+se7cI7Ta9ZYqN4K/f4Z8jgkwTHldk7Dk2N02
	ZxCAejZJqMiah7pB6+EEbfIV2akPmJM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-504-AL7eky72MOOjLXou4J8JwA-1; Tue, 25 Oct 2022 08:34:08 -0400
X-MC-Unique: AL7eky72MOOjLXou4J8JwA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 499DD185A794;
	Tue, 25 Oct 2022 12:34:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0B0C92166B31;
	Tue, 25 Oct 2022 12:34:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9067F1946A7F;
	Tue, 25 Oct 2022 12:34:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 25 Oct 2022 13:33:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Plasma screen locking/setting shortcut keys question
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.2173.1666701241.3012.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Been running into this off and on, so I'm not sure what I can do about 
it, short of starting to nuke packages.


Plasma locks the screen if I'm away from my computer for more than a few 
minutes or there's no input, which I don't mind at all. However...


It's causing a few issues with Orca. Namely,at times, it won't let focus 
on things, and if I type my password in, all I get is a layered pane in 
response once it unlocks. I did see issues about waking up from 
hibernate but that doesn't apply to my specific situation as far as Orca 
goes.

So can I do anything to sort this? I did have the same on Mate ages ago 
as far as unlocking but I forgot what sorted it out. I'm assuming it's 
something that will get sorted out in due time with KDE


Second question.


How do I, in the kglobalshortcuts config file, set up a shortcut to 
restart Orca? I'm looking at the file and not understanding just how it 
is supposed to be set up at all. I'm doing it this way due to KDE's 
panels not working with Orca right now, so is there anywhere I can check 
or the syntax on it?Orcacu
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

