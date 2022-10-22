Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 666E7608D79
	for <lists+blinux-list@lfdr.de>; Sat, 22 Oct 2022 15:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666446556;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=a8nk3Khn8H5LuGLOmpeQhtB5WEvRxdbEACExWk6oYpw=;
	b=YfJHvyx0k8hfFWj2vM4x1GkaUOhREXh6N5eqSsTUiCtIPUHqIv8fhIHHo7/SgMuHp9ft46
	ivcgky4uUbCQy4jpDqmTZh5sjDXbPowm7zbPcsrPys9oAh54+F7RUAQsHr+At0JajPjpwA
	65IuoIKOmjbwcKhHiDBLHrVkFro53bw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-52--qIb36dNMA2xBxPy-247Hw-1; Sat, 22 Oct 2022 09:49:14 -0400
X-MC-Unique: -qIb36dNMA2xBxPy-247Hw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2EEFA101AA47;
	Sat, 22 Oct 2022 13:49:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9D16640C2064;
	Sat, 22 Oct 2022 13:49:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7A59E194658D;
	Sat, 22 Oct 2022 13:48:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 22 Oct 2022 09:48:41 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Konsole progress/any good alternatives?
In-Reply-To: <mailman.1922.1666445590.3004.blinux-list@redhat.com>
References: <mailman.1338.1666188109.3004.blinux-list@redhat.com>
 <mailman.1343.1666188601.3004.blinux-list@redhat.com>
 <mailman.1226.1666190823.3010.blinux-list@redhat.com>
 <mailman.1261.1666192320.3012.blinux-list@redhat.com>
 <mailman.1543.1666222751.3010.blinux-list@redhat.com>
 <mailman.1707.1666286760.3010.blinux-list@redhat.com>
 <mailman.1922.1666445590.3004.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1962.1666446531.3005.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Only one way to know for sure, work on kde accessibility has been recent
so maybe orca can be adjusted to exploit that work.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

