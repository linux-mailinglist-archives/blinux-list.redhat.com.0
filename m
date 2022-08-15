Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEB55931B5
	for <lists+blinux-list@lfdr.de>; Mon, 15 Aug 2022 17:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660576985;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CyqKmA7aKPf5UwKOoi7HrodyzyuoRQS8oioBjD+3sOw=;
	b=jFyWVz80mYqGHNqq1wEEoWuHoW+Mgnj7NuKrb3ufrjfiDKJ7KcEcBWx8DB07Xp/BTTJIad
	eBbVqHafZNMhLLwcLYxCADkEyjAhGyO3G0DmI5mVELT7DpwsCdpi3DyRnl+K9R4kVGUCDu
	xVkpOBPRpcgrZa8yUS50dZr9jOsgjs0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-287-1Dhoz-4mOz6p9qaDFKmnZA-1; Mon, 15 Aug 2022 11:23:03 -0400
X-MC-Unique: 1Dhoz-4mOz6p9qaDFKmnZA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E8D84811E7A;
	Mon, 15 Aug 2022 15:22:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 905E9407F3A6;
	Mon, 15 Aug 2022 15:22:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 119EA1946A55;
	Mon, 15 Aug 2022 15:22:59 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Mon, 15 Aug 2022 08:22:53 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
In-Reply-To: <mailman.722.1660575675.10503.blinux-list@redhat.com>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <YvhV4TWzuP2O1JAZ@novena-choice-citizen>
 <Pine.LNX.4.64.2208132205110.1261053@server2.shellworld.net>
 <mailman.526.1660482367.10505.blinux-list@redhat.com>
 <mailman.570.1660487404.10502.blinux-list@redhat.com>
 <mailman.564.1660515996.10499.blinux-list@redhat.com>
 <mailman.613.1660532979.10500.blinux-list@redhat.com>
 <mailman.685.1660569154.10504.blinux-list@redhat.com>
 <mailman.722.1660575675.10503.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.725.1660576978.10501.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, maybe 2years ago some1 wrote me-and-suggested I can run "rdrview" to just 
enjoy the plain-text of an article. For the most part you would want to run as 
an external in L Y N X. There are certainly challenging sites where it won't 
work or you get stuck in a loop. Ok, from looking over its man-page, stripping 
off the portion of an url for filing bugs, you can probably grab from
https://github.com/eafer/rdrview/
For myself, after `so many years of a lack of printer friendly article views, 
this is really a game changer. In some cases, you may need to run by disabling 
a sandbox.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

