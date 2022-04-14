Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7A9501A14
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 19:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649957773;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+vgejNxtVi04R5nZyqBDCGoVUQQzPzZNNAjpSBbIkYk=;
	b=CM6nr4QSOTq4B9Mpqy4Bqjq+H6N0RcXSvfcSIHfAcDs7uha9gRfoyY9i8kvC+/bO52On6+
	JJNpXwiZd0rk9bjIif1kzfb12PP6NAPMru4wK4wFQ5ODKPxqkxE32zKQh68eEbogMpZ9pZ
	Q9sLBjT0f5b7mSE02tffR6XHPqXW4a8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-418-_tim9E77OVmZLo6JpwiKUA-1; Thu, 14 Apr 2022 13:36:12 -0400
X-MC-Unique: _tim9E77OVmZLo6JpwiKUA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 61672811E76;
	Thu, 14 Apr 2022 17:36:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DB36F407F770;
	Thu, 14 Apr 2022 17:36:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2E108194034B;
	Thu, 14 Apr 2022 17:36:09 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <CAO2sX318Qpucujy-HdYb8jKLv51c4PYHwwv6h7Ko1_YmXC5yiA@mail.gmail.com>
References: <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8428.1649888423.111203.blinux-list@redhat.com>
 <mailman.8307.1649889026.111207.blinux-list@redhat.com>
 <mailman.8412.1649893760.111204.blinux-list@redhat.com>
 <mailman.8388.1649918679.111207.blinux-list@redhat.com>
 <mailman.8563.1649948774.111202.blinux-list@redhat.com>
 <mailman.8501.1649950048.111209.blinux-list@redhat.com>
 <CAO2sX318Qpucujy-HdYb8jKLv51c4PYHwwv6h7Ko1_YmXC5yiA@mail.gmail.com>
Date: Thu, 14 Apr 2022 17:35:58 +0000
Subject: Re: FYI - Command Line Programs for the Blind
To: blinux-list@redhat.com
Message-ID: <mailman.8733.1649957768.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Forgot to mention, but yeah, it's annoying how many services insist on
using a person's e-mail address or phone number as a unique
identifier... its one thing if they have legitimate reason to contact
you outside of their platform, but there's plenty that would function
just fine knowing nothing about me beyond my username and password...
and trying to force you to create an account just to use your computer
just sounds ridiculous... on the flip side, I find it annoying how
many e-mail newsletters ask for more than just my e-mail address when
signing up. Is it too much to ask that web forms be both properly
formatted and that they only collect essential information?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

