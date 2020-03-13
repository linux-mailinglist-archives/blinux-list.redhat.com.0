Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 70ED1184D71
	for <lists+blinux-list@lfdr.de>; Fri, 13 Mar 2020 18:20:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584120001;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PCoryIpVDR3Da5TqR8zPjJ7vrnG8A6+Hs1fK9Eq9oDg=;
	b=FJTgbOoiyhSoQSoTcqOTZBTgFHw0zyv+7MLHI18BOPPJtSCwP7Fz7znNhM5CbtfuU9q+Zs
	XpBfLg+004VapdeUKXFV6qcfYbULuehe5V84OsbMZcjhbefDgkBA8L1gsHQSPFZKkpM2aN
	zhecb7k6IcuiE4MmaWIUpQNLH6ceAfI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-310-rKVOvG1QNq2xYwN_XLA78Q-1; Fri, 13 Mar 2020 13:19:43 -0400
X-MC-Unique: rKVOvG1QNq2xYwN_XLA78Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 218E1100550E;
	Fri, 13 Mar 2020 17:19:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 01D555D9CA;
	Fri, 13 Mar 2020 17:19:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A054D8446C;
	Fri, 13 Mar 2020 17:19:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02DHJZc8012496 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Mar 2020 13:19:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CC16A104949C; Fri, 13 Mar 2020 17:19:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C833B104949B
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 17:19:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E9DBF8007B3
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 17:19:33 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-360-PyMOjNqDN2SAfY_-jwIYvQ-1; Fri, 13 Mar 2020 13:19:31 -0400
X-MC-Unique: PyMOjNqDN2SAfY_-jwIYvQ-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id BA17A8C07BE; Fri, 13 Mar 2020 17:19:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id B12748C01E3
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 13:19:29 -0400 (EDT)
Date: Fri, 13 Mar 2020 13:19:29 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: Stormux is born.
In-Reply-To: <000a01d5f93d$6af79770$40e6c650$@yandex.com>
Message-ID: <Pine.LNX.4.64.2003131317210.19101@server2.shellworld.net>
References: <6b72c0c6-6a71-e688-4448-789876e33a34@slint.fr>
	<4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
	<000a01d5f93d$6af79770$40e6c650$@yandex.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02DHJZc8012496
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

why not create the discussion list somewhere more open like groups.io?
After all, I imagine you desire reaching individuals who  have been 
dissatisfied with other Linux experiences, so they can discover that your 
product works for them?



On Fri, 13 Mar 2020, Linux for blind general discussion wrote:

> Hi,
> The stormux chat is not opening
>
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Friday, March 13, 2020 2:17 PM
> To: blinux-list@redhat.com
> Subject: Stormux is born.
>
> I'm very happy to see this project continued, and I have already started
> working on the social media aspect and marketing and promotion. Stormux now
> has a Telegram channel that will announce news and release notes,
> https://t.me/stormux as well as a linked general discussion group at
> https://t.me/stormux_discussion Stormux will also soon be available on most
> of the usual social media channels including Facebook and Twitter. I'm happy
> to work with this project, and will do my best to keep everyone interested
> updated regarding its status and features.
> ~Kyle
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

