Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 063DA63940A
	for <lists+blinux-list@lfdr.de>; Sat, 26 Nov 2022 06:52:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669441941;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=x2jR5cGFM1eUYPdX4Fhw91Uv9OKhl4Khxd4hcj+ArDU=;
	b=QYXTr37gi3fE7zgdG7zNny0Zsbn0EJ78tvoZ6sAoJbvFN85Ghc/E/aaj1sMeniod6Y562X
	c+J8g1Z9++RcGMThsriOA1BaLNmQVZXgj1LZ2Do6d8QD9Q+fcz5acGU7oGb9tJxodSNJiM
	MCKbdBPIkUaIReSJM5pqjrjJ5zlSgVs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-295-d_-Hj800Nq2NbL30eujDng-1; Sat, 26 Nov 2022 00:52:17 -0500
X-MC-Unique: d_-Hj800Nq2NbL30eujDng-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10400833A06;
	Sat, 26 Nov 2022 05:52:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 815A9C15BA4;
	Sat, 26 Nov 2022 05:52:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DF0501946597;
	Sat, 26 Nov 2022 05:52:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Accessible front ends for Pleroma?
In-Reply-To: <mailman.1994.1669440416.6925.blinux-list@redhat.com>
Date: Fri, 25 Nov 2022 21:52:03 -0800
References: <mailman.1920.1669425887.6932.blinux-list@redhat.com>
 <mailman.1994.1669440416.6925.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.1917.1669441933.6934.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks for the info.  I'm not at all sure that I want to set up a server, but I'm interested in knowing about the most accessible clients.

-r (Rich Morin)

> On Nov 25, 2022, at 21:26, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I was thinking about running something like this. I mean I already have Friendica, which is easy to get up and running, but then I heard Pleroma may be harder to get started, but may perform better. I'm not sure what front ends are or are not accessible, although I have heard that pleroma-fe I think it's called, which is the default front end that I believe ships with it, works pretty well with screen readers. If you do get the back end server up and running, it may be worth trying the various front end web services available for it to find the one you like the best. From what I understand, you can switch them out fairly easily. Welcome to the Fediverse.
> 
> ~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

