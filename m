Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7205028B0
	for <lists+blinux-list@lfdr.de>; Fri, 15 Apr 2022 13:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650020846;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XVY6Vn+jCQYidXfeGwCrT/ULmZJCxsl/mPajPiQ2j6w=;
	b=cMt0PwapnuOhye4Y068/DwlJd52810XDbjw/+4hYbKKcY/dGcuVvfplFErodcN4L2PU7sU
	+Ze082dK/xD7zUftBbgYNdR4Bd/DHL1R4jAh+hdaUEOirp24wKIcJmYtS80Y6aJmUTLbKh
	z3opBmxO5U54MVydGWzM/aZYOPL1MrI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-167-B4VUxpiYNzq5SWWaDU4BRg-1; Fri, 15 Apr 2022 07:07:23 -0400
X-MC-Unique: B4VUxpiYNzq5SWWaDU4BRg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D7E1811E78;
	Fri, 15 Apr 2022 11:07:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5C7BD463EEC;
	Fri, 15 Apr 2022 11:07:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 81788194034C;
	Fri, 15 Apr 2022 11:07:15 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 15 Apr 2022 05:45:08 -0500
To: blinux-list@redhat.com
Subject: Re: mailing list privacy, etc.
In-Reply-To: <mailman.8448.1650002740.111205.blinux-list@redhat.com>
References: <mailman.8531.1649969333.111209.blinux-list@redhat.com>
 <mailman.8699.1649970342.111206.blinux-list@redhat.com>
 <mailman.8427.1649995127.111205.blinux-list@redhat.com>
 <mailman.8448.1650002740.111205.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.8782.1650020834.111206.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  Kyle said

> If there is a way for the administrator of this list to just remove
> the email address, or set it to the list address as it is now, but
> still show the name of the sender, this would be very much
> acceptable

If I recall from the time when the change happened, this was a
limitation of the mailing-list software.  The admin's chioces were
either

1) show sender names *and* email addresses (and have list-members
suffer the spam that came with it), or

2) obscure both the email address *and* the name (which is what we
have now).

There was no option for obscure-the-email-address-but-not-the-name.

But yes, if that could happen, I think it would make a lot of people
on this list much happier. (smile)

-tim



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

