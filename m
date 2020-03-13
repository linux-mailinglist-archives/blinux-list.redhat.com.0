Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id D7B8D184866
	for <lists+blinux-list@lfdr.de>; Fri, 13 Mar 2020 14:44:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584107055;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=axbRQNZChEr9H1gPwB4ZAA/lV1DSOu0+eFKcZSp3DJg=;
	b=ZYQCN/V7vN1MOg+FgxWJeEhO6oa6myawaasploR+lEkmub4hXSYTe1lEUxWRKHhwVswW+9
	GCJYvWNWX1vsxbI3l10n7cj0ELXJ57IxOeeUv1Uy30VuVIsF/Cdisl2zsB1OiaurSAQ4Fl
	Mv7UPOKUHH3vnXI+OVBmS9Puk9STKME=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-243-5dETJ6giPjeS7vH4zuoSWw-1; Fri, 13 Mar 2020 09:44:12 -0400
X-MC-Unique: 5dETJ6giPjeS7vH4zuoSWw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0F4CB108F9D8;
	Fri, 13 Mar 2020 13:44:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CED0460F89;
	Fri, 13 Mar 2020 13:44:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8F9B685EC4;
	Fri, 13 Mar 2020 13:44:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02DDhuCu004777 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Mar 2020 09:43:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BCDA02166B28; Fri, 13 Mar 2020 13:43:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B90F82166B30
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 13:43:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 47BD78007A4
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 13:43:52 +0000 (UTC)
Received: from forward102o.mail.yandex.net (forward102o.mail.yandex.net
	[37.140.190.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-295-ypnoVxjVMviltIRASna2Qg-1; Fri, 13 Mar 2020 09:43:50 -0400
X-MC-Unique: ypnoVxjVMviltIRASna2Qg-1
Received: from forward101q.mail.yandex.net (forward101q.mail.yandex.net
	[IPv6:2a02:6b8:c0e:4b:0:640:4012:bb98])
	by forward102o.mail.yandex.net (Yandex) with ESMTP id CC1166680BFD
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 16:43:47 +0300 (MSK)
Received: from mxback11q.mail.yandex.net (mxback11q.mail.yandex.net
	[IPv6:2a02:6b8:c0e:1b4:0:640:1f0c:10f2])
	by forward101q.mail.yandex.net (Yandex) with ESMTP id C7D55CF40004
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 16:43:47 +0300 (MSK)
Received: from vla1-bdd5685c3f79.qloud-c.yandex.net
	(vla1-bdd5685c3f79.qloud-c.yandex.net
	[2a02:6b8:c0d:4201:0:640:bdd5:685c])
	by mxback11q.mail.yandex.net (mxback/Yandex) with ESMTP id
	kNkzKS94c3-hlu08QRi; Fri, 13 Mar 2020 16:43:47 +0300
Received: by vla1-bdd5685c3f79.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
	id NnxrvPLGQe-hkBCmtkA; Fri, 13 Mar 2020 16:43:46 +0300
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client certificate not present)
To: <blinux-list@redhat.com>
References: <6b72c0c6-6a71-e688-4448-789876e33a34@slint.fr>
	<4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
In-Reply-To: <4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
Subject: RE: Stormux is born.
Date: Fri, 13 Mar 2020 14:43:44 +0100
Message-ID: <000a01d5f93d$6af79770$40e6c650$@yandex.com>
MIME-Version: 1.0
Content-Language: pl
Thread-Index: AQKnhr9693cjXxZMWIH36sXN2JrIiQK4RkKCpo2rD0A=
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02DDhuCu004777
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
The stormux chat is not opening

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Friday, March 13, 2020 2:17 PM
To: blinux-list@redhat.com
Subject: Stormux is born.

I'm very happy to see this project continued, and I have already started
working on the social media aspect and marketing and promotion. Stormux now
has a Telegram channel that will announce news and release notes,
https://t.me/stormux as well as a linked general discussion group at
https://t.me/stormux_discussion Stormux will also soon be available on most
of the usual social media channels including Facebook and Twitter. I'm happy
to work with this project, and will do my best to keep everyone interested
updated regarding its status and features.
~Kyle


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

