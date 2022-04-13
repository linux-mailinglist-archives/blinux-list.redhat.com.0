Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE1C4FFFF8
	for <lists+blinux-list@lfdr.de>; Wed, 13 Apr 2022 22:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649881559;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZY9MIkKlMi9au7ntKqchpZPWUerG0CUidlgp5a6NzoI=;
	b=hJ6P66hCcYri3cN7j0cILKXdEmpM2ZnlQLO3uWQXeUEm5zGE8vD5Z4WUE560CLCMYUaAZM
	/RL97H1+HKSt62ScmUNhgOyq1vcIsrE8LhpK+pyIndEyUh84N7Ub0JNz/CItJjV0u6s6MU
	WD5/tTmU8qCRqCBdV7XJNCJePs/Sk2M=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-20-ATBhUkMPOveBOAhKF8oTkA-1; Wed, 13 Apr 2022 16:25:58 -0400
X-MC-Unique: ATBhUkMPOveBOAhKF8oTkA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A80993800502;
	Wed, 13 Apr 2022 20:25:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7ECD8416172;
	Wed, 13 Apr 2022 20:25:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C95201940353;
	Wed, 13 Apr 2022 20:25:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 13 Apr 2022 16:25:33 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
In-Reply-To: <mailman.8124.1649865698.111205.blinux-list@redhat.com>
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8209.1649858812.111208.blinux-list@redhat.com>
 <mailman.8162.1649859377.111209.blinux-list@redhat.com>
 <mailman.8191.1649860611.111209.blinux-list@redhat.com>
 <mailman.8361.1649864484.111203.blinux-list@redhat.com>
 <mailman.8124.1649865698.111205.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.8415.1649881555.111203.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I am enjoying this thread, all the individual preferences from me, speaking 
personally,  really illustrating that there is no such thing as a uniform 
blind person.
wished to ask about ebrowse towards that end.
We have it here at shellworld, but one factor that I have always found off 
putting is that I cannot simply run the program on a site and get 
presented the  links  there.
For me personally, having to guess numbers takes a great deal of time, I 
do allot of research, and prefer knowing swiftly where my attention needs 
to go.
Add how I believe? input on text boxes is not uniform, arrow down and 
either find a text field, of hit enter to provide text does not work.
seems allot of a learning challenge to think differently about page 
presentation.
Still, I likewise believe? the browser has good enough JavaScript 
abilities for many sites.
anyone try the browser on discord for example?
Thanks,
Karen



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

