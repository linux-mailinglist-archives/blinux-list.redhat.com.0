Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECAD5BBE53
	for <lists+blinux-list@lfdr.de>; Sun, 18 Sep 2022 16:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663510809;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lkMQ4u0IxjdImy2TiAPr+OvPcu5p5fjRbDBR16fHXE0=;
	b=Gq11g1xNHh2fCdJWinhrfR+/wZEtIqoz6yTpLFFXZ9y9qtdt4AyYFjliBGW/est/AQn3Du
	gC9G5LkVO2ylxCa9MP7dkV2lSFgPiSt6ii5O00N8Hf54jMmTAygOSQzhqZ6e+iTlzlHqdp
	fk5m9uQPv9w5cJ6cN6dxEcKovHfotQQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-534-8P0TUb36O1SuuBFJMM60aw-1; Sun, 18 Sep 2022 10:20:05 -0400
X-MC-Unique: 8P0TUb36O1SuuBFJMM60aw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7640885A59D;
	Sun, 18 Sep 2022 14:20:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2C1D7140EBF5;
	Sun, 18 Sep 2022 14:20:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9772019465A0;
	Sun, 18 Sep 2022 14:19:59 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 18 Sep 2022 15:19:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: KDE Plasma 5.26 beta questions
Message-ID: <mailman.1122.1663510798.6076.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So quick question, since KDE .Plasma 5.26 beta is a thing, with 
apparently A11Y improvements, going by numerous YT vids, KDE.org and 
their (admittedly massive) changelog...

Is it worth testing it out? Looking at my repos on Arch I'm seeing 
5.25.9-1 here, and not seeing any of the updates listed in the 
changelog, i.e. the dialogs are still inaccessible, the clock doesn't 
play nice with Orca, et al.

So do I need to wait on the full release of 5.26 to get all the new 
features then, since the way I read KDE's beta/release scedule is the 
beta is feature complete if I understand it right or am I not 
understanding how KDE does their betas


I know Crys has been doing a lot of work with KDE so I'm hoping for your 
input on this, since I've beeen told by other folks off list they've had 
much much better experiences with it and getting things to work that I 
can't, for example

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

