Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B65F759A11
	for <lists+blinux-list@lfdr.de>; Wed, 19 Jul 2023 17:44:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689781446;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Er5KfcuNlEhIYxn+swBihM1h4f/+SbLmzl1up4oN1eE=;
	b=gxv3WSnBCzmHG5SiOCQUusAis80uBfyFiAjiok2AchGFhMdHWDmU0l4ZNTv3yWgXnGBqwm
	2TSr3KiKTheoGriXx0t0kVrvpXNT+A0zIDMkDKIIJV1DlvU1r4yLC+QgLlmg2YrNl3KR9v
	fQckOjnw//Z6zbBh5CKndruAUDi4dwg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-624-ZufItjgHOMa-d5xCBMk1Ng-1; Wed, 19 Jul 2023 11:44:02 -0400
X-MC-Unique: ZufItjgHOMa-d5xCBMk1Ng-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B00F98F1852;
	Wed, 19 Jul 2023 15:43:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1C0B42166B27;
	Wed, 19 Jul 2023 15:43:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BF13E19465B6;
	Wed, 19 Jul 2023 15:43:58 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: Mint Installation?
Thread-Topic: Mint Installation?
Thread-Index: Adm6T80FF7YXeQtkS6STbJ1Y1scbUgAA4Z6AAACyWpA=
Date: Wed, 19 Jul 2023 15:33:07 +0000
References: <mailman.1180.1689778383.687817.blinux-list@redhat.com>
 <mailman.1100.1689780613.687810.blinux-list@redhat.com>
In-Reply-To: <mailman.1100.1689780613.687810.blinux-list@redhat.com>
Accept-Language: en-US
MIME-Version: 1.0
Message-ID: <mailman.1403.1689781438.687815.blinux-list@redhat.com>
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
Cc: "chime@huber-humphrey.com" <chime@huber-humphrey.com>
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
Ok, I can do that.
What would I put it under?
I sincerely apologize, but I'm not all that familiar with GitHub.
I don't even think I've filed an issue.


Thanks,
Jessica Dail

-----Original Message-----
From: Blinux-list <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Wednesday, July 19, 2023 11:12 AM
To: Linux for blind general discussion <blinux-list@redhat.com>
Cc: chime@huber-humphrey.com
Subject: Re: Mint Installation?

Well Jessica, I am saving your comments for Saturday, when I work with Marc again. Maybe a faster way would be filling out an issue on his github page. 
Thanks in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

