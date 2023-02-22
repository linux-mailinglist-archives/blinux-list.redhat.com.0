Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E819969F9E0
	for <lists+blinux-list@lfdr.de>; Wed, 22 Feb 2023 18:21:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677086488;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TRKYRaRJECBT3cHkJX1cnMki97sgac1WeyI9BAYTWjo=;
	b=A6C/4oxedw3kYOxomkpQXXfvVo39rSQu78+xczWzGCP4+7W3n4/u9D+GNYmvabPjzwAmKA
	Afj4OUFVn9xCSWGMLWxiA82+tfv1o4GncdkMoyiepyEQOiOJkjIh08LveSy7SgEjcPbDMy
	ZPIfZQnWdylgXmX5I7SOvmo4SlPG8Xs=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-554-F4LxHMwqNnmL3w0rhOBL9g-1; Wed, 22 Feb 2023 12:17:04 -0500
X-MC-Unique: F4LxHMwqNnmL3w0rhOBL9g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D68763810B07;
	Wed, 22 Feb 2023 17:14:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EED8A2166B29;
	Wed, 22 Feb 2023 17:14:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 546E219465A3;
	Wed, 22 Feb 2023 17:14:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.1264.1677083208.686535.blinux-list@redhat.com>
References: <mailman.918.1677018162.686538.blinux-list@redhat.com>
 <mailman.1264.1677083208.686535.blinux-list@redhat.com>
Date: Wed, 22 Feb 2023 17:07:23 +0000
Subject: Re: why
To: blinux-list@redhat.com
Message-ID: <mailman.1670.1677086062.686539.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Web browsing is the one thing I routinely do in the GUI instead of the
console, so I might be mistaken, but I recall hearing at least one of
the homophonically named text browsers has experimental support for
some JavaScript and other rich web content that can be included at
compile time... that said, I also recall hearing that the default
compile settings exclude these extentions, so they are missing from
many pre-built packages, and it isn't just a simple matter of
installing some optional dependencies to enable them, but you have to
build the software from source with the right configuartion to include
them.

Do take the above paragraph with a grain of salt, however. I don't
have the best memory, all of my attempts to use text web browsers in
the past have ended in frustration that sent me running back to
Firefox+Orca(even working with websites that don't have JavaScript
BS), and these are software packages named with common words so I
suspect Googling them for confirmation will be an exercise in
frustration as google assumes I want information on the cat species or
chains. Its entirely possible I'm mixing JavaScript in these browsers
with some feature in other software that needs to be enabled at
compile time and is disabled by default.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

